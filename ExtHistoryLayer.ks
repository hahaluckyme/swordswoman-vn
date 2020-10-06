; ��d�ǂݍ��݂�h�~
[return cond="typeof(.ExtHistoryLayer) != 'undefined'"]

; ExtHistoryLayer.ks (2011/03/14) by KAICHO ver 1.30
; ���p�E���ρE�Ĕz�z�͂��D���ɂǂ����B�A�����s�v�B���p�ɑg�ݍ��������̔�
; ���悤���D������ɁB����Ȏ��v������̂��m��񂯂ǁB
; ���ӌ����v�]�o�O�񍐂� s_naray[at]yahoo[dot]co[dot]jp �܂ŁB
; �������A�Ԏ��͊��҂��Ȃ����ƁB
;
; �쐬�ɂ�����A
;// ExHistoryLayer.ks ( 2004/07/04 ) releaced 1.01
;// ���b�Z�[�W�����g���v���O�C�� by �悩�Ђ� / ���ϔz�z���R����
; �����m�X�S�Q�l�ɂ����Ē����܂����B���\���グ�܂��B
;
; �g�p���@
; ExtHistoryLayer.ks�ARenameKAGTag.ks�A�\�Ȃ� eruby.ks ��p�ӂ��A
; first.ks ���ǂ����� [call storage=ExtHistoryLayer.ks] ���邾���B

;�F�X�����������@by�q�D�x�D�n�D

[call storage=TJSFunctions.ks]

[iscript]


// parent �� onClick �C�x���g�𑗂�{�^�����C��
class LButtonLayer extends ButtonLayer
{
	function LButtonLayer(window, parent)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
	}

	function finalize()
	{
		super.finalize(...);
	}

	function onClick()
	{
		super.onClick(...);
	}

	function onExecute(x, y, button, shift)
	{
		if (enabled && button == mbLeft)
			parent.onButtonClick(this);
		super.onExecute(...);
	}
}


// �������ςȂ��ɂ���ƁA100ms ������ parent �փC�x���g�� ���M����{�^��
class RepeatButtonLayer extends ButtonLayer
{
	var timer;
	var graphic;
	var buttonCaptionColor;

	// �R���X�g���N�^
	function RepeatButtonLayer(window, parent, elm)
	{
		if (elm !== void && elm.captionColor !== void)
			buttonCaptionColor = elm.captionColor;
		super.ButtonLayer(window, parent);
		focusable = false;
		timer = new Timer(this, "onMouseDownRepeat");
		timer.interval = 100;
		setOptions(%[visible:true]);
		setOptions(elm);			// ���f�t�H���g�l
	}

	// �f�X�g���N�^
	function finalize()
	{
		invalidate timer;	// ��� invalidate
		super.finalize(...);
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.graphic !== void && elm.graphic != "") {
			loadImages(elm.graphic);
			graphic = elm.graphic;
		}
		setOptions_sub(this, elm);
	}

	// ��ԍX�V
	function updateState(enabled)
	{
		this.visible = enabled;
		this.enabled = enabled;
		if (enabled)
			captionColor = buttonCaptionColor;
		else
			captionColor = color;
		if (graphic !== void && graphic != "")
			loadImages(graphic);
	}

	// �}�E�X���N���b�N���ꂽ��
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (Butt_mouseDown) {	//�{�^����������Ă����
			parent.onButtonClick(this);
			timer.enabled = true;
		}
	}

	// �J��Ԃ��̎�
	function onMouseDownRepeat()
	{
		if (Butt_mouseDown)	// �܂��{�^����������Ă���ΌJ��Ԃ�
			parent.onButtonClick(this);
		else			// ������ĂȂ���ΏI��
			timer.enabled = false;
	}
}


// �X���C�_�[���C���N���X
// �X�N���[���o�[�̈ꕔ�Ȃ̂ŁA�e����width�܂���height���ύX����邱�Ƃɒ���
class Slider extends ButtonLayer
{
	var dragging;
	var clickx, clicky;
	// �X�N���[���o�[�̃O���t�B�b�N(��A���A����g�ݍ��킹�����́A
	// ���͕�1dot�A�ŒZ�X�N���[���o�[�̕��͏�{��
	var graphic;
	var minheight = 16;	// �X�N���[���o�[�̍ŏ�����

	// �R���X�g���N�^
	function Slider(window, parent, elm)
	{
		this.dragging = false;
		focusable     = false;
		super.ButtonLayer(window, parent);
		setOptions(%[visible:true, enabled:true]);
		setOptions(elm);
	}

	// �f�X�g���N�^
	function finalize()
	{
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;
		setOptions_sub(this, elm);

		if (elm.graphic !== void)
			loadImages(elm.graphic);
	}

	// �w�肳�ꂽ�摜��ǂށB��x�摜�w�肳���ƌ��ɖ߂��Ȃ����c������
	function loadImages(graph, key)
	{
		// �N�� Layer ���ă��[�J���ϐ���`���Ă�݂����B
		graphic = new .Layer(window, parent);
		graphic.visible = false;
		graphic.loadImages(graph, key);
		graphic.setImagePos(0, 0);
		graphic.setSizeToImageSize();
		if (parent.verticalView)
			minheight = graphic.width\3-1;	// 1dot = �����T�C�Y
		else
			minheight = graphic.height-1;	// 1dot = �����T�C�Y
		setSize(width, height);
		Butt_imageLoaded = true;
	}

	// �X���C�_�[�T�C�Y���w�肷��
	function setSize(w, h)
	{
		if (!Butt_imageLoaded) {
			super.setSize(w, h);
			return;
		}
		// �摜���ǂ܂�Ă��ꍇ�Agraphic ����摜�����
		var g = graphic, gw = g.width, gh = g.height;
		if (parent.verticalView) {
			// �c�����Ȃ牡�����ɐݒ�
			w = minheight if (w < minheight);
			.KAGLayer.setImageSize(w*3, h);
			.KAGLayer.setSize(w, h);
			// �������R�s�[
			var ww = (gw/3-1)\2;
			copyRect(w*0,0, g,gw/3*0,0,ww,h);
			copyRect(w*1,0, g,gw/3*1,0,ww,h);
			copyRect(w*2,0, g,gw/3*2,0,ww,h);
			// �E�����R�s�[
			copyRect(w*1-ww,0, g,gw/3*1-ww,0,ww,h);
			copyRect(w*2-ww,0, g,gw/3*2-ww,0,ww,h);
			copyRect(w*3-ww,0, g,gw/3*3-ww,0,ww,h);
			// ���S���R�s�[
			for (var x = w-ww-1; x >= ww; x--) {
				copyRect(x+w*0,0, g,gw/3*0+ww,0,1,h);
				copyRect(x+w*1,0, g,gw/3*1+ww,0,1,h);
				copyRect(x+w*2,0, g,gw/3*2+ww,0,1,h);
			}
		} else {
			// �������Ȃ�c�����ɐݒ�
			h = minheight if (h < minheight);
			.KAGLayer.setImageSize(w*3, h);
			.KAGLayer.setSize(w, h);
			copyRect(0,0, g, 0,0,gw,(gh-1)\2);
			for (var y = h-(gh-1)\2-1; y >= (gh-1)\2; y--)
				copyRect(0,y, g,0,(gh-1)\2, gw,1);
			copyRect(0,h-(gh-1)\2, g,0,(gh-1)\2+1, gw,(gh-1)\2);
		}
	}

	// ��ԕύX��ݒ�
	function updateState(enabled)
	{
		this.enabled = enabled;
	}

	// �}�E�X�������ꂽ��
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (!enabled || button != mbLeft)
			dragging = false;
		else {
			dragging = true;
			clickx = x;
			clicky = y;
		}
	}

	// �}�E�X�������ꂽ��
	function onMouseUp(x, y, button, shift)
	{
		super.onMouseUp(...);
		dragging = false;
	}

	// �}�E�X���������ꂽ��
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
		if (!dragging)
			return;	// drag���łȂ���ΏI��
		parent.onSliderDragged(x, y, clickx, clicky);
	}

	// �L�[�������ꂽ��
	function onKeyDown(key, shift)
	{
		parent.onKeyDown(...);	// �e���Ă�
	}
}


// �X�N���[���o�[�̋��ʕ����݂̂����������N���X
class CommonScrollbar extends Layer
{
	var target;			// ���삷��Ώ�(History)
	var prev, next;			// �O�{�^���A���{�^��
	var slider;			// �X���C�_�[����
	var timer;	// �X�N���[���o�[�̃X���C�_�O�����������̃��s�[�g�^�C�}
	var dst;			// ���̖ړI�l
	var graphic;			// �w�i�O���t�B�b�N

	// �R���X�g���N�^
	function CommonScrollbar(window, parent, tgt, elm)
	{
		this.target = tgt;

		super.Layer(window, parent);
		var belm = %[
			color:elm.color,
			captionColor:elm.captionColor
		];
		prev = new RepeatButtonLayer(window, this, belm);
		next = new RepeatButtonLayer(window, this, belm);
		slider = new Slider(window, this, belm);
		hitType      = htMask;
		hitThreshold = 0;

		timer = new Timer(this, "onMouseDownRepeat");
		timer.interval = 100;
		timer.enabled = false;		// �ŏ��� false��

		focusable = true;
		visible = true;
		setOptions(elm);
	}

	// �f�X�g���N�^
	function finalize()
	{
		invalidate timer;	// ��� invalidate
		invalidate prev;
		invalidate next;
		invalidate slider;
	}

	// �I�v�V�����ݒ�
	function setOptions(elm, prevelm, nextelm, sliderelm)
	{
		prev.setOptions(prevelm);
		next.setOptions(nextelm);
		slider.setOptions(sliderelm);

		if (elm === void)
			return;
		setOptions_sub(this, elm);
		if (elm.width !== void || elm.height !== void)
			initState();
		if (elm.graphic !== void)
			loadImages(elm.graphic);
	}

	// �T�C�Y��ύX����
	function setSize(w, h)
	{
		width = w, height = h;
		// setSize()���� property width/height ���Ă΂�Ȃ��̂Łc
		// super.setSize(...);
		initState();
	}

	// �X�N���[���o�[�̃X���C�_�O�����������̓���J�n
	// �����̓����������ׂ̎d�g�݁B
	function scrollTo(value)
	{
		dst = value;
		timer.enabled = true;
	}

	// ������Ԃ�ݒ�
	function initState()
	{
		face = dfBoth;
		if (graphic === void)
			fillRect(0, 0, width, height, parent.scrollbarBack);
		else
			loadImages(graphic);
// ���ꂾ��prev/next�̏c���T�C�Y���Ⴄ���̂�ݒ�ł��Ȃ��̂ŁA�O��
//		prev.setSize(width, width);
//		next.setSize(width, width);

		// �ȉ��̓X�N���[���o�[��ɂ���ĈقȂ�̂ŁA��Őݒ肵��������
		// prev.setPos(x, x);
		// next.setPos(x, x);
		// slider.setPos(x, x);
		// slider.setSize(x, x);
	}

	// prev/next/slider�̏�Ԃ��X�V
	function updateState()
	{
		prev.updateState(!target.isHead());
		next.updateState(!target.isTail());
		slider.updateState(!(target.isHead() && target.isTail()));
	}

	// �X���C�_�O�������ꂽ���̃��s�[�g�֐�(�����͐錾����)
	function onMouseDownRepeat()
	{
	}

	// �{�^�����N���b�N���ꂽ��
	function onButtonClick(src)
	{
		if (src == prev)
			target.prevLine(); // ���� prevOne() ����Ȃ��Ă����́H
		else if (src == next)
			target.nextLine(); // ���� nextOne() ����Ȃ��Ă����́H
	}

	// �}�E�X�������ꂽ��
	function onMouseUp(x, y, button, shift)
	{
		super.onMouseUp(...);
		timer.enabled = false;
	}

	// �}�E�X���������ꂽ��
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
	}

	// �L�[�������ꂽ��
	function onKeyDown(key, shift)
	{
		parent.onKeyDown(...);
	}
}


// �c�����X�N���[���o�[
class VerticalScrollbar extends CommonScrollbar
{
	var verticalView = false;

	// �R���X�g���N�^
	function VerticalScrollbar(window, parent, target, elm)
	{
		super.CommonScrollbar(...);
		prev.setOptions(%[caption:"��"]);
		next.setOptions(%[caption:"��"]);
		setOptions(elm);
		initState();
	}

	// �f�X�g���N�^
	function finalize()
	{
		super.finalize(...);
	}

	// ���݂̏�Ԃ�ݒ�B�X���C�_�[�̕������̃T�C�Y�ɐݒ�
	function initState()
	{
		super.initState(...);		// ���̒���prev/next�͕ύX�ς�
		prev.setPos(0, 0);		// �{�^���ʒu��ݒ�
		next.setPos(0, height-next.height);

		// slider �̑傫���ƈʒu��ύX
		var tmp = height-next.height-prev.height;
		var h = (tmp/target.pageCount)\1;
		slider.setSize(width, (h>slider.minheight) ? h : slider.minheight);
		var t = prev.height+((tmp-slider.height)*target.position)\1;
		slider.setPos(0, t);
	}

	// ��ԍX�V
	function updateState()
	{
		super.updateState(...);
		var size = height-slider.height-next.height-prev.height;
		slider.top = prev.height + (size*target.position)\1;
	}

	// �X���C�_���h���b�O���ꂽ��
	function onSliderDragged(x, y, clickx, clicky)
	{
		// ���݂̕\�����ׂ��ʒu�����߁A�����Ƃ̍����� diff �Ɋi�[
		var pos = (slider.top-prev.height+(y-clicky))/
				(height-prev.height-next.height-slider.height);
		var diff = target.getDispStart(pos) - target.dispStart;
		if (diff < 0) {
			for (var i = -diff; i > 0; i--)
				target.prevOne();
		} else if (diff > 0) {
			for (var i = diff; i > 0; i--)
				target.nextOne();
		}
		// �����Ȃ牽�����Ȃ�
	}

	// �X���C�_�������ꂽ���̃��s�[�g�֐�
	function onMouseDownRepeat()
	{
		super.onMouseDownRepeat(...);
		if (dst < slider.top)
			target.prevPage();
		else if (dst > slider.top + slider.height)
			target.nextPage();
		else
			timer.enabled = false;
	}

	// �}�E�X�������ꂽ��(���̎��͕K���X���C�_�[�O��������Ă���)
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (y < slider.top)
			target.prevPage();
		else if (y > slider.top + slider.height)
			target.nextPage();
		scrollTo(y);
	}

	// �}�E�X���������ꂽ��
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
		if (timer.enabled)
			dst = y;
	}

	// �����ݒ莞�� prev/next �{�^���̑傫����ύX
	property width
	{
		getter
		{
			return super.width;
		}
		
		setter(w)
		{
			super.width = w;
			// �c������ݒ肷�鎞�́A�K�v�Ȃ�prev/next�𐳕��`��
			if (!prev.Butt_imageLoaded)
				prev.width = prev.height = w;
			if (!next.Butt_imageLoaded)
				next.width = next.height = w;
		}
	}
}


// �������X�N���[���o�[
class HorizontalScrollbar extends CommonScrollbar
{
	var verticalView = true;

	// �R���X�g���N�^
	function HorizontalScrollbar(window, parent, target, elm)
	{
		super.CommonScrollbar(...);
		prev.setOptions(%[caption:"��"]);
		next.setOptions(%[caption:"��"]);
		setOptions(elm);
		initState();
	}

	// �f�X�g���N�^
	function finalize()
	{
		super.finalize(...);
	}

	// ���݂̏�Ԃ�ݒ�B�X���C�_�[�̕������̃T�C�Y�ɐݒ�
	function initState()
	{
		super.initState(...);		// ���̒���prev/next�͕ύX�ς�
		prev.setPos(width-prev.width,0); // �{�^���ʒu��ݒ�
		next.setPos(0, 0);

		// slider �̑傫���ƈʒu��ύX
		var tmp = width-next.width-prev.width;
		var w = (tmp/target.pageCount)\1;
		slider.setSize((w>slider.minheight) ? w : slider.minheight, height);
		var t = next.width+((tmp-slider.width)*target.position)\1;
		slider.setPos(t, 0);
	}

	// ��ԍX�V
	function updateState()
	{
		super.updateState(...);
		var size = width-slider.width-next.width-prev.width;
		slider.left = next.width + (size*(1-target.position))\1;
	}

	// �X���C�_���h���b�O���ꂽ��
	function onSliderDragged(x, y, clickx, clicky)
	{
		// ���݂̕\�����ׂ��ʒu�����߁A�����Ƃ̍����� diff �Ɋi�[
		var pos = (slider.left-next.width+(x-clickx))/
				(width-next.width-prev.width-slider.width);
		var diff = target.getDispStart(1-pos) - target.dispStart;
		if (diff < 0) {
			for (var i = -diff; i > 0; i--)
				target.prevOne();
		} else if (diff > 0) {
			for (var i = diff; i > 0; i--)
				target.nextOne();
		}
		// �����Ȃ牽�����Ȃ�
	}

	// �X���C�_�������ꂽ���̃��s�[�g�֐�
	function onMouseDownRepeat()
	{
		super.onMouseDownRepeat(...);
		if (dst < slider.left)
			target.nextPage();
		else if (dst > slider.left + slider.width)
			target.prevPage();
		else
			timer.enabled = false;
	}

	// �}�E�X�������ꂽ��(���̎��͕K���X���C�_�[�O��������Ă���)
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (x < slider.left)
			target.nextPage();
		else if (x > slider.left + slider.width)
			target.prevPage();
		scrollTo(x);
	}

	// �}�E�X���������ꂽ��
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
		if (timer.enabled)
			dst = x;
	}

	// �c���ݒ莞�� prev/next �{�^���̑傫����ύX
	property height
	{
		getter
		{
			return super.height;
		}
		
		setter(h)
		{
			super.height = h;
			// �c������ݒ肷�鎞�́A�K�v�Ȃ�prev/next�𐳕��`��
			if (!prev.Butt_imageLoaded)
				prev.width = prev.width = h;
			if (!next.Butt_imageLoaded)
				next.width = next.width = h;
		}
	}
}


// �����̃��b�Z�[�W���C���N���X
class HistoryMessageLayer extends Layer
{
	var antialiased = true;		// �A���`�G�C���A�X�����`����s����
	var verticalView = true;	// �c�������ǂ���
	var everypage = false;		// �y�[�W���̗���\�����s�Ȃ���
	var autoReturn = true;		// �����I�ɉ��s���邩�ǂ���
	var maxLines = 2000;		// �ő�ێ��s��

	var data = [];			// �s�f�[�^ (�����O�o�b�t�@)
	var lineStart = [];		// �s�\���J�n�ʒu (�����O�o�b�t�@)
	var dataStart = 0;		// �f�[�^�̊J�n�ʒu
	var dataLines = 0;		// �f�[�^���Ɋ܂܂��s�� < maxLines -1
	var dataPos = 0;		// �f�[�^�������݈ʒu

	// "�y�[�W��"�̎��́Adata, lineStart ��2�����Ɏg���Ă���B
	var maxPages = 100;		// �ő�y�[�W��
	var dataPages = 0;		// �f�[�^���̗L���ȃy�[�W��
	var dataPage = 0;		// ���ݏ�������ł���y�[�W

	// margin[TBRL] �́A�X�N���[���o�[�������������̃}�[�W����\��
	var marginL = 300;		// �������b�Z�[�W�̈捶�]��
	var marginR = 240;		// �������b�Z�[�W�̈�E�]��
	var marginT = 0;		// �������b�Z�[�W�̈��]��
	var marginB = 0;		// �������b�Z�[�W�̈扺�]��
	var fontName = "Molengo"; // �������b�Z�[�Wdefault�t�H���g��
	var fontBold = false;		// �������b�Z�[�Wdefault�����׎�
	var fontItalic = false;
	var fontHeight = 22;		// �������b�Z�[�Wdefault�t�H���g�T�C�Y
	var lineHeight = 32;		// �������b�Z�[�W�s��
	// ���������Ȃ� >= fontH+rubyH�A�c�����Ȃ� >= fontH+rubyH*2 �K�v
	var relinePos_org = 0;		// �������b�Z�[�W�̈�̉��s�ʒu
	var limitPos_org = 0;		// �������b�Z�[�W�̈�̉��[ or �E�[
	var relinePos = 0;		// ���s�ʒu(�ύX���ꂤ��)
	var limitPos = 0;		// ��ʂ̒[�����ʒu(�ύX���ꂤ��)
	var indentPos = 0;		// �C���f���g�ʒu
	var repageLine = 0;		// ���y�[�W�s��

	var historyColor = 0xffffff;	// ���𕶎��F(default)

	var dispStart = 0;		// ���݂̕\���s
	var dispLines = 0;		// �������b�Z�[�W�\���\�s��
	var canScroll = false;		// ������scroll�\���ǂ���
					// �����s������ʍs���ɖ����Ȃ���΋U
	var currentLine = "";		// ���݂̍s�̕�����(�������ǉ�����Ă�)

	var storeState = false;		// ��Ԃ�x�ɕۑ����邩

	var faceLeft = 210;

	//	�֑�����
	var wwFollowing = "%),:;]}���߁B�C�A�D�F�G�J�K�R�S�T�@�U�X�f�h�j�l�n�p�r�t�v�x�z��������������I�H��@�A";	// �s���֑�����
	var wwFollowingWeak="!.?�������������E�[���\�����������������@�B�D�F�H�b������������";			// �s��(��)�֑�����
	var wwLeading="\\$([{��e�g�i�k�m�o�q�s�u�w�y������"; // �s���֑�����

	wwFollowing += wwFollowingWeak;

// ************** �������܂ŃI���W�i���B�������火�F�X�ǉ� ****************

	var lastIndentPos = 0;
	var storeTag;

	var fontcolor;			// ���݂̃q�X�g�������F
	var fontsize;			// ���݂̃t�H���g�T�C�Y
	var fontbold;			// ���݂̃t�H���g�������
	var fontitalic;
	var fontface;			// ���݂̃t�H���g��
	var hbuttons = [];		// �q�X�g����̃{�^���z��
	var storestack = [];		// store()���̃^�O�X�^�b�N
	var himages = [];		// �q�X�g����̉摜�z��

	var hbColor = 0x808080;	// �����{�^���F
	var hbCaptionColor = 0xffffff;	// �����{�^���L���v�V�����F

	// �������烋�r�p�ϐ�
	var rubyName = "Molengo";	// ���r�t�H���g��
	var rubyBold = false;		// ���r�����׎�
	var rubyHeight = 8;		// ���r�T�C�Y
//	var rubyColor = 0xffffff;	// ���r�F = �{���F�ɂ��킹��̂ŕs�v
	var rubyOffset = -2;		// -�̒l�Ŗ{���ɋ߂Â�
	// ����p�ϐ�
	var inrubytag = %[];		// str=�Ȃ��̃��r�����ǂ����B���r���͒��O��[hruby]�^�O�������Ă���
	var hacts = [];			// [hact]�^�O�̕ۑ��z��

	// �R���X�g���N�^
	function HistoryMessageLayer(win, par, elm = %[])
	{
		super.Layer(...);

		// Config.tjs �̊֐����Ă�ŁA�f�[�^��������
		(HistoryLayer_config incontextof this)();
		if (typeof global.HistoryLayer_config_override != "undefined")
			(HistoryLayer_config_override incontextof this)();

		name = "�������b�Z�[�W���C��";

		setFont(fontName, fontHeight, fontBold, fontItalic);

		visible      = true;
		focusable    = false;
		hitType      = htMask;
		hitThreshold = 1;	// �����������܂ߑS�̂ŃC�x���g���󂯂�

		clear();
/*
		fontcolor = historyColor;	// ������drawText()��
		fontsize  = fontHeight;		// �����������̂ŕs�v
		fontbold  = fontBold;
		fontitalic = fontItalic;
		fontface  = fontName;
*/
		registerTags();		// ����p�̃^�O��o�^

		// �ݒ肳��Ă��Ȃ���΁A�f�t�H���g�T�C�Y�ƈʒu��ݒ�
		var sch = parent.scrollbarHeight;
		if (elm.left === void)
			elm.left = 0;
		if (elm.top === void)
			elm.top = sch; // ����������������
		if (elm.width === void) {
			elm.width = parent.width;
			elm.width -= sch; // if (!verticalView);
		}
		if (elm.height === void)
			elm.height = parent.height;
		setOptions(elm);
	}

	// �f�X�g���N�^
	function finalize()
	{
		super.finalize(...);
	}

	// �ϐ����N���A
	function clear()
	{
		lineStart = [];
		dataStart = 0;
		dataLines = 0;
		dataPos = 0;
		dataPages = 0;
		dataPage = 0;

		if (everypage) {
			data[dataPage]      = [];
			lineStart[dataPage] = [];
		} else {
			dataLines = 1; // 0 ���ƍŏI�s�������ɕ\������Ȃ�
			data      = [];
		}

		currentLine = "";

		calcRelinePos();
	}

	// �Z�[�u���ɓ��e��ۑ�
	function save() {
		if (!storeState)
			return void;
		var dic = %[];
		if (everypage) {
			dic.lineStart = lineStart;
			dic.data = data;
		} else {
			(dic.lineStart = []).assignStruct(lineStart);
			(dic.data = []).assignStruct(data);
		}
		dic.dataStart = dataStart;
		dic.dataPos = dataPos;
		dic.dataPages = dataPages;
		dic.dataPage = dataPage;
		dic.dataLines = dataLines;
		dic.currentLine = dic.currentLine;
		return dic;
	}

	// ���[�h���ɓ��e�𕜌�
	function load(dic) {
		if (!storeState)
			return;
		if (dic === void)
			return;
		lineStart.assignStruct(dic.lineStart);
		data.assignStruct(dic.data);
		dataStart = dic.dataStart;
		dataPos = dic.dataPos;
		dataPages = dic.dataPages;
		dataPage = dic.dataPage;
		dataLines = dic.dataLines;
		currentLine = dic.currentLine;
		calcRelinePos();
	}

	// ���s�E���y�[�W�̈ʒu����
	function calcRelinePos()
	{
		if (verticalView) {
			var h = height - marginT;
			relinePos   = relinePos_org = h - marginB;
			limitPos    = limitPos_org  = h;
			repageLine  = (width-marginL-marginR)\lineHeight;
		} else {
			var w = width - marginL;
			relinePos   = relinePos_org = w - marginR;
			limitPos    = limitPos_org  = w;
			repageLine  = (height-marginT-marginB)\lineHeight;
		}
		return relinePos;
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.autoreturn !== void)
			autoReturn = +elm.autoreturn;
		setOptions_sub(this, elm);

		// �C���[�W�T�C�Y����ʃT�C�Y�ɍ��킹�Ă���
		setImageSize(width, height);

		if (verticalView) {
			dispLines = (width-marginL-marginR)\lineHeight;
			marginL = width-marginR-lineHeight*dispLines;
		} else {
			dispLines = (height-marginT-marginB)\lineHeight;
			marginB = height-marginT-lineHeight*dispLines;
		}
	}

	// �ŏI�s�𓾂���ݒ肵���肷�邽�߂� getter/setter
	property lastLine
	{
		getter
		{
			if (everypage)
				return data[dataPage][dataPos];
			else
				return data[dataPos];
		}
		
		setter(line)
		{
			if (everypage)
				data[dataPage][dataPos]	= line;
			else
				data[dataPos] = line;
		}
	}


	// n �Ԗڂ̍s�𓾂�
	function getLine(n)
	{
		n += dataStart;
		if (n >= maxLines) n -= maxLines;
		return data[n];
	}

	// n �Ԗڂ̃y�[�W�𓾂�
	function getPage(n)
	{
		n += dataStart;
		if (n >= maxPages) n -= maxPages;
		return data[n];
	}

	// n �Ԗڂ̍s�̕\���J�n�ʒu�𓾂�
	function getLineStart(n)
	{
		n += dataStart;
		if (n >= maxLines)
			n -= maxLines;
		return lineStart[n];
	}

	// n �y�[�W�ڂ́Am �s�ڂ̕\���J�n�ʒu�𓾂�
	function getLineStart2(n, m)
	{
		n += dataStart;
		if (n >= maxPages)
			n -= maxPages;
		return lineStart[n][m];
	}

	// ���݂͕s�v�����AMainWindow.ks ����Ă΂��̂Ń_�~�[�Ŏc���Ă���
	function setNewAction(action)
	{
	}

	// ���݂͕s�v�����AMainWindow.ks ����Ă΂��̂Ń_�~�[�Ŏc���Ă���
	function clearAction()
	{
	}

	// �������C���ɕ����𗭂ߍ��ށB
	// �K�v�Ȃ�s���Ƀ^�O��t���B�^�O����������Ƃ��� elm !== void �ŁA
	// elm �ɂ̓^�O�����������Ă���B
	// drawLine()�ƈ���āA(�ق�)�ꕶ���������Ă���
	function store(ch, elm)
	{
		if (currentLine == "" && storestack.count > 0) {
			// ���s����Ȃ�K�v�ȓr���^�O��}��
			// [r] �̎� store()��ʂ�Ȃ��̂Œǉ��B
			currentLine = getStackedTag(storestack) + currentLine;
		}

		//inrubytag = %[];// str=�Ȃ��̃��r�����ǂ����B���r���͒��O��[hruby]�^�O�������Ă���
		if (inrubytag.tagname !== void) {
			if (elm !== void)
				System.inform('[hruby]�̌�Ƀ^�O���w�肳��܂����B[hruby text='+inrubytag.text+']'+'['+elm.tagname+'...]');
			// ���r�������̏ꍇ�A����ch�����r��str�Ƃ��Ċi�[
			elm = inrubytag;
			elm.str = ch;
			ch = dic2tag(elm); // [hruby]�^�O�������Œǉ�
			inrubytag = %[];
		}

		if (elm !== void) {
			// �^�O�̎��͑Ή�����storefunc()���Ă�
			// ���݂̕`��\�c��h�b�g��
			var func = tagFuncs[elm.tagname].storefunc;
			if (func !== void && !func(storestack, elm))
				return;	// �P�ꃋ�r�ȂǁA�������s�v�Ȃ�I��
			if (elm.tagname == 'hruby') {

//ryo--
				//�P�s���͂ݏo��Ƃ��̏�����ǉ�
				var len = getTextWidth(currentLine);
				var str = elm.str;
				var str1 = "";
				var str2 = "";
				var text = elm.text;
				var tmplen = 0;

				for(var i=0 ; i<str.length ; i++){
					//�֑��͍l���Ȃ��i���r�̕K�v�Ȍ��ł͑����֑����l����K�v���Ȃ��j
					if(len + font.getTextWidth(str[i])<relinePos){
						str1 += str[i]; //�͂ݏo�Ȃ���
					}else{
						str2 += str[i]; //�͂ݏo�镪
					}
					len += font.getTextWidth(str[i]);
				}

				if(str1 != ""){
					elm.str = str1;
					//�{���̓��r�Ɋւ��Ă֑͋�������ׂ��Ȃ̂����m��Ȃ��H
					tmplen = int(Math.round(text.length * str1.length / str.length));
					elm.text = text.substring(0,tmplen);
					currentLine += dic2tag(elm);
					for (var j = 0; j < elm.str.length; j++){
						store(elm.str.substr(j,1));
					}
				}
				if(str2 != ""){
					//����ɂ͂ݏo���Ƃ��͍l���Ȃ�
					reline();
					elm.str = str2;
					elm.text = text.substring(tmplen, text.length - tmplen);
					currentLine += dic2tag(elm);
					for (var j = 0; j < elm.str.length; j++){
						store(elm.str.substr(j,1));
					}
				}
				return;
			}
		}
		currentLine += ch;	// �Ƃ肠����������ǉ�
		if (!autoReturn)
			return; 	// �������s���s��Ȃ��ꍇ�͏I��

		// �������s���s���ꍇ �� font.getTextWidth()�ł͂Ȃ�
		var len = getTextWidth(currentLine);
		if (len <= relinePos)
			return;

//�S�ʓI�ɉ���

		var curlen = currentLine.length;
		var lastch = curlen >= 2 ? currentLine[curlen - 2] : '';
		var wwStr = '';

		if( ((lastch=='' || wwLeading.indexOf(lastch)==-1) && wwFollowing.indexOf(ch)==-1) ||
			len > limitPos)
		{
			// �Ō�ɕ`�悵���̂��s���֑������łȂ��A���ꂩ��`�悷��̂��s���֑������łȂ��ꍇ
			// �܂��͊m���� �E�[���z����ꍇ
			// ( ���̏ꍇ�͗]���͍l���Ȃ� )
			currentLine = currentLine.substring(0, currentLine.length - ch.length);	//	�ǉ�������������菜��
			reline();
			currentLine += ch;
			wwStr = '';
		}else{
			wwStr = "";
			var i = currentLine.length - 1;
			var intag = false;
			var intagFlag = false;

			while(wwFollowing.indexOf(currentLine[i])!=-1 || intag){
				if(currentLine[i]==']'){
					intag=true;
					intagFlag = true;
				}
				if(intag==true && currentLine[i]=='[') intag=false;
				wwStr = currentLine[i] + wwStr;
				i--;
			}
			wwStr = currentLine[i] + wwStr;

			currentLine = currentLine.substring(0, currentLine.length - wwStr.length);

			if(intagFlag){
				var ary = str2ary(currentLine);
				var stack = [];	// storestack�Ƃ͕ʂ́A���̏�����stack
				for (var i = 0; i < ary.count; i++) {
					if (ary[i][0] == '[') {
						// �^�O�������ꍇ
						var elm = tag2dic(ary[i]);
						var func = tagFuncs[elm.tagname].storefunc;
						if (func !== void) func(stack, elm);
					}
				}

				currentLine += getStackedRevTag(stack);


				reline();
				currentLine += getStackedTag(stack) + wwStr;
				lineStart[dataPos] = lastIndentPos;
				lastIndentPos = 0;
			}else{
				reline(true);
				currentLine += wwStr;
			}

		}

//--

	}

	// ���y�[�W
	function repage()
	{
		if (!everypage)
			return;

		if (dataPos == 0 && currentLine == "")
			return; // �����f�[�^�������Ă��Ȃ��ꍇ�A�Ȃɂ����Ȃ�

		lastLine   = currentLine;
//ryo--
		if(currentLine!==void && currentLine.length==0){
			lastIndentPos = 0;
		}
//--
		dataPage = (dataPage >= maxPages) ? 0 : dataPage+1;
		dataPos	= 0;
		data[dataPage] = [];
		lineStart[dataPage] = [];
		lineStart[dataPage][dataPos] = indentPos;
		if (dataPage == dataStart)
			dataStart++;
		if (dataStart >= maxPages)
			dataStart = 0;
		if (dataPages < maxPages-1)
			dataPages++;

		currentLine	= '';
	}

	// ���s�B�^�O�����̂��߁A������Ə����ǉ��B
	// �^�O�́A�K����s���Ŏ��܂�悤�ɐݒ肳���B
	function reline(lastIndentFlag=false)
	{
		// �X�^�b�N��� tag �� revtag ���t���� currentLine �����ɒǉ�
		// ��s�Ń^�O�̊J�����������邽�߁B
		currentLine += getStackedRevTag(storestack);

		if (everypage) {
			if (dataPos + 1 >= repageLine) {
				// ���y�[�W���ׂ��s���ɂȂ����Ƃ�
				repage();
			} else {
				lastLine = currentLine;

				dataPos++;
				lineStart[dataPage][dataPos] = indentPos;
				limitPos = limitPos_org - indentPos;
				relinePos = relinePos_org - indentPos;
			}
		} else {
			lastLine = currentLine;

			if(currentLine!==void && currentLine.length==0){
				lastIndentPos = 0;
			}
//ryo--
//��������ˁH�H�H
//			dataPos = (dataPos >= maxLines) ? 0 : dataPos+1;
			dataPos = (dataPos >= maxLines-1) ? 0 : dataPos+1;
//
			data[dataPos] = void;
			if(lastIndentFlag){
				lineStart[dataPos] = lastIndentPos;
			}else{
				lineStart[dataPos] = indentPos;
			}
			limitPos = limitPos_org - indentPos;
			relinePos = relinePos_org - indentPos;
			if (dataPos == dataStart) dataStart++;
			if (dataStart >= maxLines) dataStart = 0;
			if (dataLines < maxLines) dataLines++;
		}

		// ���s���ꂽ��A�X�^�b�N���tag�𐳏���currentLine�擪�ɋL��
		currentLine = getStackedTag(storestack);
	}

	// ���݈ʒu�ɃC���f���g��ݒ�
	function beginIndent()
	{
		indentPos = getTextWidth(currentLine);
		lastIndentPos = indentPos;
	}

	// �C���f���g������
	function endIndent()
	{
		lastIndentPos = indentPos;
		indentPos = 0;
	}

	// ������ʂ��N���A����Bn���w�肳����n�s�ڂ���s�����N���A����
	// �w�肳��Ȃ��ƑS��ʁB[hbutton][himage]���N���A���鏈����ǉ�
	function clearBack(n)
	{
		var x=0, y=0, w=width, h=height;
		face = dfAlpha;

		if (n === void) {
			for (var i = hbuttons.count-1; i >= 0; i--)
				invalidate hbuttons[i];
			hbuttons = [];
			for (var i = hacts.count-1; i >= 0; i--)
				invalidate hacts[i];
			hacts = [];
			for (var i = himages.count-1; i >= 0; i--)
				invalidate himages[i];
			himages = [];
		} else {
			if (verticalView) {
				x = width-marginR-(n+1)*lineHeight;
				y = 0;
				w = lineHeight;
				if (n == 0)
					// �ŏ��s�͂�����ƍL�߂ɃN���A
					w += marginR;
				if (n == dispLines-1)
					// �ŏI�s�͂�����ƍL�߂ɃN���A
					x -= marginL, w += marginL;
			} else {
				y = n*lineHeight+marginT;
				h = lineHeight;
				if (n == 0)
					// �ŏ��s�͂�����ƍL�߂ɃN���A
					y -= marginT, h += marginT;
				if (n == dispLines-1)
					// �ŏI�s�͂�����ƍL�߂ɃN���A
					w += marginB;
			}
			// ���Y���C��������hbuttons�����������́Ascroll����
			// ��ʊO�ɏo�����̂������悤�ɂ��Ă���̂ŕs�v
		}
		fillRect(x, y, w, h, 0);	// �����ɂ���
	}

	// ������ʂ��\�����ꂽ���A�Ăяo�����B
	function dispInit()
	{
		lastLine = currentLine;

		//�P�s�グ��i�\��O���t�B�b�N�̉��̕����؂��̂�h�����߁j
//		dm("dataPos : " + dataPos);
			dataPos = (dataPos >= maxLines-1) ? 0 : dataPos+1;
			data[dataPos] = void;
			if (dataLines < maxLines) dataLines++;
//		dm("dataPos : " + dataPos);

		antialiased = window.chDefaultAntialiased;
		clearBack();

		if (everypage) {
			canScroll = true;
			dispStart = dataPages - 1;
			if (dataPages <= 0) {
				canScroll = false;
				dispStart = 0;
			}
			drawPage();
		} else {
			// marginL/B ��␳����
			if (verticalView) {
				dispLines = (width-marginR-marginL)\lineHeight;
				marginL = width-marginR-lineHeight*dispLines;
			} else {
				dispLines =(height-marginT-marginB)\lineHeight;
				marginB = height-marginT-lineHeight*dispLines;
			}

			if (dataLines <= dispLines) {
				// �\���\�͈͓��Ɏ��܂�
				canScroll = false;
				dispStart = 0;
			} else {
				// �\���\�͈͓��Ɏ��܂�Ȃ�
				canScroll = true;
//ryo--
//				dispStart = dataLines - dispLines;
				if(dataLines == maxLines){
					dispStart = dataLines - dispLines + 1;
				}else{
					dispStart = dataLines - dispLines;
				}
//--
//dm("dataLines : " + dataLines);
//dm("dispLines : " + dispLines);
//dm("dispStart : " + dispStart);
			}
			for (var i= 0; i < dispLines; i++)
				drawLine(i);
//			drawPage(); �� everypage �����g���Ȃ�����_��
		}
	}

	// ������ʂ���\���ɂȂ������A�Ăяo�����
	function dispUninit()
	{
		//�Ō�̍s���폜����idispInit()�łP�s�グ�����߁j
		data[dataPos] = void;
		dataPos = (dataPos>=0)? dataPos-1 : maxLines-1;
		dataLines--;

		clearBack();	// �O�̂��ߏI������ clearBack() ���Ă���
	}

	// �\���s n(=��ʏ�̍s�ԍ�) �𗚗���ʂɕ`�悷��
	function drawLine(n)
	{
//dm("line : " + n);
		var line, linestart;
		if (everypage) {
			line = getPage(dispStart)[n];
			linestart = getLineStart2(dispStart, n);
		} else {
			line = getLine(n + dispStart);
			linestart = getLineStart(n + dispStart);
		}
		if (line === void || (everypage && line == ""))
			return;
		var x, y;
		if (verticalView) {
			x = width - marginR - n*lineHeight;
			y = marginT + linestart;
		} else {
			x = marginL + linestart;
			y = n*lineHeight + marginT;
		}
		drawText(x, y, line, historyColor, 255, antialiased);
	}

	// ���݂̃y�[�W�𗚗���ʂɕ`�悷��(everypage�̎��̂ݎg�p�\)
	function drawPage()
	{
		var page = getPage(dispStart);
		var x, y;
		if (verticalView) {
			x = width - marginR;
			var yidx = marginT;
			for (var i = 0; i < repageLine; i++) {
				if (page[i] != "") {
					y = yidx + getLineStart2(dispStart, i);
					drawText(x, y, page[i], historyColor,
						255, antialiased);
				}
				x -= lineHeight;
			}
		} else {
			y = marginT;
			for (var i = 0; i < repageLine; i++) {
				if (page[i]!="") {
					x = marginL+getLineStart2(dispStart,i);
					drawText(x, y, page[i], historyColor,
						255, antialiased);
				}
				y += lineHeight;
			}
		}
	}

	// �O�y�[�W�Ɉړ�
	function prevPage()
	{
		if (!canScroll)
			return;
		if (everypage) {
			if (dispStart<1)
				return;
			dispStart--;
			clearBack();
			drawPage();
		} else {
			clearBack();
			if (dispStart >= dispLines)
				dispStart -= dispLines;
			else
				dispStart = 0;
			for (var i = 0 ; i < dispLines; i++)
				drawLine(i);
		}
		parent.updateButtonState();
	}

	// ���y�[�W�Ɉړ�
	function nextPage()
	{
		if (!canScroll)
			return;
		if (everypage) {
			if (dispStart>=dataPages-1)
				return;
			dispStart++;
			clearBack();
			drawPage();
		} else {
			clearBack();
			if (dispStart < dataLines - dispLines)
				dispStart += dispLines;
			if (dispStart > dataLines - dispLines)
				dispStart = dataLines - dispLines;
			for (var i = 0 ; i < dispLines; i++)
				drawLine(i);
		}
		parent.updateButtonState();
	}

	// ���̍s�փX�N���[���A�b�v�i�\�����グ��j
	function nextLine()
	{
		if (isTail())	// (dispStart >= dataLines - dispLines)
			return; // �X�N���[���ł��Ȃ��Ȃ�A��

		moveButtons(-1);	// �{�^���ʒu��␳����

		// �����s��margin���܂߂ăR�s�[����
		var to_x, to_y, from_x, from_y, w, h;
		if (verticalView) {
			to_x   = width - lineHeight*(dispLines-1) -marginR - marginL;
			to_y   = 0;
			from_x = width - lineHeight*(dispLines) - marginR - marginL;
			from_y = 0;
			w      = lineHeight * (dispLines-1) + marginL;
			h      = height;
		} else {
			to_x   = 0;
			to_y   = marginT;
			from_x = 0;
			from_y = lineHeight + marginT;
			w      = width + marginB;
			h      = lineHeight*(dispLines-1);
		}
//		fillRect(to_x, to_y-2, w, to_y+2, 0x00000000);
		copyRect(to_x, to_y+2, this, from_x, from_y+2, w, h);

		clearBack(dispLines - 1);
		dispStart++;
		drawLine(dispLines - 1);
		parent.updateButtonState();
	}
	
	// �O�̍s�փX�N���[���_�E���i�\����������j
	function prevLine()
	{
		if (isHead())		// if (dispStart == 0)
			return;

		moveButtons(1);	// �{�^���ʒu��␳����

		// �����s��margin���܂߂ăR�s�[����
		var to_x, to_y, from_x, from_y, w, h;
		if (verticalView) {
			to_x   = width - lineHeight*(dispLines) - marginR;
			to_y   = 0;
			from_x = width - lineHeight*(dispLines-1) - marginR;
			from_y = 0;
			w      = lineHeight * (dispLines-1) + marginR;
			h      = height;
		} else {
			to_x   = 0;
			to_y   = lineHeight;	//  + marginT;
			from_x = 0;
			from_y = 0;	// marginT;
			w      = width;
			h      = lineHeight*(dispLines-1) + marginT;
		}
		copyRect(to_x, to_y, this, from_x, from_y, w, h);

		clearBack(0);
		dispStart--;
		drawLine(0);
		parent.updateButtonState();
	}


//////////////////////////////////////////////////////////////////////////
// �� �����܂ł��I���W�i��HistoryLayer�A����������ruby�Ƃ�hfont�Ƃ��̋@�\�ǉ�

	// �ЂƂO��
	function prevOne()
	{
		everypage ? prevPage() : prevLine();
	}

	// �ЂƂ���
	function nextOne()
	{
		everypage ? nextPage() : nextLine();
	}


	// ���݂̃t�H���g����ݒ肷��
	function setFont(face, size, bold, italic)
	{
		if (face !== 0 && face.length > 0 && face[0] == '@')
			face = face.substr(1);	// �ŏ���@������Ύ��
		if (verticalView) {
			font.angle = 2700;
			font.face = '@' + face;
		} else {
			font.angle = 0;
			font.face = face;
		}
		font.height = size	if (size !== void);
		font.bold = bold	if (bold !== void);
		font.italic = italic	if (italic !== void);
	}


	// drawText���������āA�^�O������ǉ�����B�K���s�P�ʂŌĂ΂�A�s��
	// �����Ă͏������Ȃ�(�ł��Ȃ�)
	function drawText(top_x, top_y, text, color, opa, aa,
				shadowlevel, shadowcolor, shadowwidth,
				shadowofsx, shadowofsy)
	{
		var x = top_x, y = top_y;
		var lastDrawnCh = "";
dm("text : " + text);
		// �ŏ��f�t�H���g�l�B�s���Ƃɑ����͓Ɨ�����̂ŏ��������Ă悢�B
		// �ŏI�s�ő����ύX���ɗ��𔲂��Ă܂������ɖ߂��tag���c��̂�
		// �`�掞�Ɏg�p���鑮�����s���Ƃɏ������K�{�B
		var drawstack = [];
		fontcolor = historyColor;
		fontsize  = fontHeight;
		fontbold  = fontBold;
		fontitalic = fontItalic;
		fontface  = fontName;

		// �^�O�ŕ�������B
		var ary = str2ary(text);
		for (var i = 0; i < ary.count; i++) {
			var w = 0;

			// �t�H���g�T�C�Y�ݒ�
			var fs = fontsize;
			if (fs > lineHeight)
				fs = lineHeight;
			setFont(fontface, fs, fontbold, fontitalic);
			// �c�����Ȃ�Z���^�����O�A�������Ȃ牺�t��
			var dx = x, dy = y;
			if (verticalView)
				dx -= (lineHeight-fs)/2;
			else
				dy += lineHeight - fs;

			if (ary[i][0] == '[') {
				// �^�O�������ꍇ
				var dic = tag2dic(ary[i]);
				var func = tagFuncs[dic.tagname].drawfunc;
				if (func !== void)
					w = func(drawstack, dic, x, y,
							top_x, top_y, dx, dy);
			} else {
				// �^�O�ł͂Ȃ�������P���ɕ\��
				// �t�H���g�T�C�Y��fontheight+rubySize(��s)��
				// �����Ă��狭���C��
//				super.drawText(dx, dy, ary[i],
//					fontcolor, opa, aa,
//					shadowlevel, shadowcolor, shadowwidth,
//					shadowofsx, shadowofsy);

				for(var j=0 ; j<ary[i].length ; j++){
					putChar(ary[i][j], dx, dy, fontcolor, lastDrawnCh);
//					super.drawText(dx,dy,ary[i][j],fontcolor);
					dx += font.getTextWidth(ary[i][j]);
					lastDrawnCh = ary[i][j];
				}
				w = font.getTextWidth(ary[i]);
			}
			// �\�����𔽉f
			if (verticalView)
				y += w;
			else
				x += w;
		}
		return (verticalView) ? y-top_y : x-top_x;	// �`�敝��Ԃ�
	}

	function putChar(ch, dx, dy, col, last)
	{
		var gaijiflg = false;
		for(var j=0 ; j<gaiji.count ; j++){
			if(ch==gaiji[j].alt){
				putGraph(gaiji[j].storage[antialiased], dx, dy,col);
				gaijiflg = true;
			}
		}
		if(gaijiflg==false){
			if(ch == "�\"){
				var cw = font.getTextWidth(ch);
				if(last=="�\"){
					fillRect(dx-1, dy+cw\2  , cw  , (antialiased)?2:1, 0xff000000);
					fillRect(dx-2, dy+cw\2-1, cw  , (antialiased)?2:1, 0xff000000|col);
				}else{
					fillRect(dx+3, dy+cw\2  , cw-4, (antialiased)?2:1, 0xff000000);
					fillRect(dx+2, dy+cw\2-1, cw-4, (antialiased)?2:1, 0xff000000|col);
				}
			}else{
				super.drawText(dx, dy, ch, col, 255, antialiased, 255, 0x000000, 0, 2, 2);
			}
		}
	}

	function putGraph(storage, x, y, color)
	{
		// �摜 storage ��`�悷��

		// �e���|�����̃��C����p��
		var lay = window.temporaryLayer;

		lay.type = ltTransparent;
		lay.face = dfAuto;
		lay.loadImages(storage); // �摜�ǂݍ���
		var lw, lh;
		lw = lay.imageWidth;
		lh = lay.imageHeight;

		lay.face = dfOpaque;
		lay.holdAlpha = true;

		// �e
		lay.fillRect(0, 0, lw, lh, 0x000000);
		operateRect(x+2, y+2, lay, 0, 0, lw, lh);

		// ���C���𕶎��F�œh��Ԃ�
		lay.fillRect(0, 0, lw, lh, color);

		operateRect(x, y, lay, 0, 0, lw, lh); // �`��

	}

	// ���̂���^�O���l�����čs�T�C�Y�𒲍����邽�߁AgetTextWidth() ��V��
	// �����font.getTextWidth()��u��������B
	// ���̊֐��́A��{�I�Ɂu�s�擪����v�̕����񂪗^�����邱�Ƃɒ��ӁB
	// �������Ȃ���TAB�Ƃ�hlocate �Ƃ��̈���������c
	function getTextWidth(text)
	{
		var width = 0;	// ���݂�Width
		// hbutton ����������Aimage �̕��𒲂ׂ�
		// �^�O�ŕ�������
		var ary = str2ary(text);
		var str = "";
		var stack = [];	// storestack�Ƃ͕ʂ́A���̏�����stack���K�v
		for (var i = 0; i < ary.count; i++) {
			if (ary[i][0] == '[') {
				// �^�O�������ꍇ
				var elm = tag2dic(ary[i]);
				var func = tagFuncs[elm.tagname].storefunc;
				if (func !== void)
					func(stack, elm); //�K�v�Ȃ�stack�ɐς�
				var func = tagFuncs[elm.tagname].drawwidth;
				if (func !== void)
					width += func(elm, width);
			} else {
				// �ʏ�̕����񂾂����ꍇ
				var face = tagsearch(stack, 'hfont',
						'face', false, fontName);
				var size = tagsearch(stack, 'hfont',
						'size', false, fontHeight);
				// �t�H���g�T�C�Y��lineHeight(��s)�𒴂��Ă���
				// �����C��
				if (size > lineHeight)
					size = lineHeight;
				var bold = tagsearch(stack, 'hfont',
						'bold', false, fontBold);
				var italic = tagsearch(stack, 'hfont',
						'italic', false, fontItalic);
				setFont(face, size, bold, italic);
				width += font.getTextWidth(ary[i]);
			}
		}
		// �u�^�O�����v + �^�O���������������񕝁v��Ԃ�
		return width;
	}

	// ��������ATAG���f���~�^�Ƃ��ĕ��������z���Ԃ�
	// �܂��߂Ɏ����͂��ĂȂ��̂ŃE�\�܂݂�B�����āI
	function str2ary(str)
	{
		var instr1 = false, instr2 = false;

		// �󔒂� [] �ŋ�؂�
		var ary = [], idx=0;
		if (str === void)
			return ary;	// �����������Ƃ���݂����B�K�v�B
		for (var i = 0; i < str.length; i++) {
			var c = str[i];
			if (c == '[' && !instr1 && !instr2) {
				// �^�O�J�n
				if (ary[idx] !== void)
					idx++;
				ary[idx] = string(ary[idx]) + c;
			}
			else if (c == ']' && !instr1 && !instr2) {
				// �^�O�I��
				ary[idx] = string(ary[idx]) + c;
				idx++;
			}
			else if (c == '\\') {
				ary[idx] = string(ary[idx]) + c;
				ary[idx] += str[++i];
			}
			else if (c == '"') {
				if (!instr2)
					instr1 = !instr1;
				ary[idx] = string(ary[idx]) + c;
			}
			else if (c == "'") {
				if (!instr1)
					instr2 = !instr2;
				ary[idx] = string(ary[idx]) + c;
			}
			else {
				ary[idx] = string(ary[idx]) + c;
			}
		}
		return ary;
	}

	// TAG�����񂩂玫���z������
	// ���݂� "" ���ɋ󔒂�����ꍇ���l�����Ă��Ȃ��c���܂�B
	function tag2dic(str)
	{
		if (str[0] == '[')
			str = str.substr(1, str.length-1);
		if (str[str.length-1] == ']')
			str = str.substr(0, str.length-1);
		var ary = str.split(/[ \t]+/,, true);
		var tag = %[ tagname:ary[0] ];
		for (var i = 1; i < ary.count; i++) {
			if (ary[i].length <= 0)	// �󔒍폜�Bsplit(//,,true)��
				continue;	// �����Ȃ��݂����Ȃ̂Łc
			// =�̌��TJS���Ȃǂ͂܂������Ȃ�
			var t = ary[i].split(/=/);
			var name = t[0];
			t.erase(0);
			var value = t.join('='); // �ŏ��� = �̌�͑S�ēZ�߂�
			// dic2tag()�ł��� '"' �폜
			if (value[0] == '"' && value[value.length-1] == '"')
				value = value.substr(1,value.length-2);
			tag[name] = (value == "") ? true : value;
		}
		return tag;
	}

	// �����z�񂩂�^�O����������
	function dic2tag(dic)
	{
		var str = "";
		var ary = [];
		ary.assign(dic);
		for (var i = 0; i < ary.count; i+=2) {
			if (ary[i] == 'tagname')
				str = ary[i+1] + str;
			else
				// �K�� " �ň͂ށBKAGParser() ��������Ⴄ����
				str += " "+ary[i]+"="+'"'+ary[i+1]+'"';
		}
		return '[' + str + ']';
	}

// TagStack�Ƃ����N���X����낤���ƔY�񂾂��Aextends Array ����� [] ���g���Ȃ�
// �݂����Ȃ̂Œ��߂��B�܂��c������B
	// �^�O���X�^�b�N�ɕۑ�����
	function tagpush(stack, elm)
	{
		var dic = %[];
		(Dictionary.assignStruct incontextof dic)(elm);
		stack.push(dic);
	}

	// �^�O���X�^�b�N������o��(really == false �Œl�������o��)
	function tagpop(stack, really = true)
	{
		if (really)
			return stack.pop();
		else
			return stack[stack.count-1];
	}

	// ����^�O�̓���̑������X�^�b�N����T���B������Ȃ����void��Ԃ�
	function tagsearch(stack, tag, key, forward=true, def)
	{
		if (forward) {
			for (var i = 0; i < stack.count; i++) {
				var t = stack[i];
				if (t.tagname == tag && t[key] !== void)
					return t[key];
			}
		} else {
			for (var i = stack.count-1; i >= 0; i--) {
				var t = stack[i];
				if (t.tagname == tag && t[key] !== void)
					return t[key];
			}
		}
		return def;
	}

	// ����^�O���X�^�b�N����폜����
	function tagerase(stack, tag, forward=true)
	{
		var ret;
		if (forward) {
			for (var i = 0; i < stack.count; i++)
				if (stack[i].tagname == tag) {
					ret = stack[i];
					stack.erase(i);
					return ret;
				}
		} else {
			for (var i = stack.count-1; i >= 0; i--)
				if (stack[i].tagname == tag) {
					ret = stack[i];
					stack.erase(i);
					return ret;
				}
		}
		return void;
	}

	// �X�^�b�N�ɕۑ�����Ă���^�O��revtag���A������ɂ��ċt���ɑS�ē���
	function getStackedRevTag(stack)
	{
		var str = "";
		for (var i = stack.count-1; i >= 0; i--) {
			var revtag = tagFuncs[stack[i].tagname].revtag;
			if (revtag !== void)
				str += revtag(stack[i]);
		}
		return str;
	}

	// �X�^�b�N�ɕۑ�����Ă���^�O���A������ɂ��đS�ē���
	function getStackedTag(stack)
	{
		var str = "";
		for (var i = 0; i < stack.count; i++)
			str += dic2tag(stack[i]);
		return str;
	}

	// �^�O�� KAG�}�N���Ƃ��Ďg�p�ł���悤�ɁAkag.tagHandlers�ɓo�^����
	function registerTags()
	{
		var ary = [];
		ary.assign(tagFuncs);
		for (var i = ary.count-2; i >= 0; i-=2) {
			window.tagHandlers[ary[i]] =
				function(elm)
				{
					if (!window.historyWriteEnabled)
						return 0;
					// �^�O������ǉ������� store() ���Ă�
					store(dic2tag(elm), elm);
					return 0;	// ����onTag()�ɕK�v
				} incontextof this;
		}
	}

	// ���r�̊��t���v�Z(ary[startpos, space]��Ԃ�)
	function calcRubyPos(elm, rw, cw)
	{
		var startpos = (cw-rw)/2, space = rubyHeight;
		if (elm.align == 'l')
			startpos = 0;
		else if (elm.align == 'r')
			startpos = cw-rw;
		else if (elm.align == 'e' && cw >= rw) {
			startpos = cw/elm.text.length/2 - rubyHeight/2;
			space    = cw/elm.text.length;
		}
		return [ startpos, space ];
	}

	// �^�O�n���h��
	var tagFuncs = %[
		// �^�O�Ɗ֐��̎����z��B�utagFuncs[�^�O��].�֐��v�Ŏg�p�B
		// �ЂƂ̃^�O�ɂ��A�ȉ��̎O�̊֐����`�\�B�֐���
		// ��`���Ȃ���Ύ��s����Ȃ�(�G���[�ɂ͂Ȃ�Ȃ�)�B
		//
		// storefunc(stack, elm)
		//	�V�i���I�{���Ƀ^�O���o���������Ɏ��s�����֐��B
		//	���ۂɂ͓����� historyLayer.store(ch,elm)�����s�����
		//	����: elm=�^�O�̎����z��
		//	�Ԓl: ���̌�(ch)���������邩�ǂ���(true=��������)
		// drawfunc(stack, elm, x, y, top_x, top_y, dx, dy)
		//	�^�O�𗚗����C����ɕ`�悷��Ƃ��Ɏ��s�����֐�
		//	����: stack = �`�掞�̃^�O�ۑ��p�X�^�b�N
		//	      elm   = �^�O�̎����z��
		//	      x,y   = �������C���ւ̕`��ʒu(drawtext()�̈���)
		//	      dx,dy = �������C���ւ̕`��ʒu
		//	      top_x,top_y=���̍s�̐擪�`��ʒu
		//	�Ԓl: �^�O������̃e�L�X�g�ړ����B[hbutton]�Ƃ��� > 0
		// revtag(elm)
		//	���̃^�O�̖����^�O([hfont]�ɑ΂�[endhfont])�������
		//	�Ԃ��B�`�掞�A�s���őS�^�O���X�^�b�N���珜�����߂Ɏg�p
		//	����: elm=���̃^�O���w�肳�ꂽ���̎���
		//	�Ԓl: �����^�O������
		// drawwidth(elm, curwidth)
		//	�`�掞�̂��̃^�O�̕�(= drawfunc() �̖߂�l)��Ԃ��֐��B
		//	��`����Ȃ���� 0 �Ƃ݂Ȃ����
		//	����: elm=�^�O�̎����z��
		//	      top_x,top_y=���̍s�̐擪�`��ʒu
		//	�Ԓl: �^�O�`�掞�̕�(vertical�Ȃ�c���A�łȂ���Ή���)

		hfont: %[
			storefunc: function(stack, elm) {
				tagpush(stack, elm);	// �^�O��ۑ�
				return true;
			} incontextof this, 

			drawfunc: function(stack, elm) {
				tagpush(stack, elm);
				if (elm.color !== void)
					fontcolor = int(elm.color);
				if (elm.size !== void)
					fontsize = int(elm.size);
				if (elm.bold !== void)
					fontbold = int(elm.bold);
				if (elm.italic !== void)
					fontitalic = int(elm.italic);
				if (elm.face !== void)
					fontface = int(elm.face);
				return 0;
			} incontextof this,

			revtag: function(elm) {
				return '[endhfont]';
			} incontextof this,
		],

		endhfont: %[
			storefunc: function(stack, elm) {
				// �Ή����� [hfont] ���폜
				tagerase(stack, 'hfont', false);
				return true;
			} incontextof this,

			drawfunc: function(stack, elm) {
				// �F���ЂƂO�ɖ߂�
				tagerase(stack, 'hfont', false);
				fontcolor = tagsearch(stack, 'hfont',
						'color', false, historyColor);
				fontsize = tagsearch(stack, 'hfont',
						'size', false, fontHeight);
				fontbold = tagsearch(stack, 'hfont',
						'bold', false, fontBold);
				fontitalic = tagsearch(stack, 'hfont',
						'italic', false, fontItalic);
				fontface = tagsearch(stack, 'hfont',
						'face', false, fontName);
				return 0;
			} incontextof this,
		],

		resethfont: %[
			storefunc: function(stack, elm) {
				// �S�Ă� [hfont] ���폜
				while (tagerase(stack, 'hfont') !== void);
				return true;
			} incontextof this,

			drawfunc: function(stack, elm) {
				// �F���f�t�H���g�ɖ߂�
				while (tagerase(stack, 'hfont') !== void);
				fontcolor = historyColor;
				fontsize = fontHeight;
				fontbold = fontBold;
				fontitalic = fontItalic;
				fontface = fontName;
				return 0;
			} incontextof this,
		],

		hbutton: %[
			drawfunc: function(stack, elm, x, y) {
				// �������C����Ƀ{�^����\��
				var hb = new HistoryButtonLayer(window, this);
				hbuttons.add(hb);
				hb.setOptions(elm);	// �摜�ǂݍ��݂Ƃ�
				var i = (elm.idx === void) ? 0 : int(elm.idx);
				if (verticalView) {
					hb.setPos(x-(lineHeight+hb.width)/2+i,y);
					return hb.height; // �Z���^�����O
				} else {
					hb.setPos(x, y+lineHeight-hb.height+i);
					return hb.width;  // ������
				}
			} incontextof this,

			drawwidth: function(elm, curwidth) {
				var hb = new HistoryButtonLayer(window, this);
				hb.setOptions(elm);
				var w = (verticalView) ? hb.height : hb.width;
				invalidate hb;
				return w;
			} incontextof this,
		],

		hruby: %[
			storefunc: function(stack, elm) {
				if (elm.str === void) {
					// str���������͎��̈ꕶ���𓾂邽�߂�
					// ���r���ɂ���Bassign���Ȃ��ƃ_��
					(Dictionary.assign incontextof inrubytag)(elm);
					return false;	// str�Ȃ��͈�U�I���
				}
				inrubytag = %[];	// �N���A���Ƃ�
				// align ������𓝈ꂵ�Ă���
				if (elm.align == 'left')
					elm.align = 'l';
				else if (elm.align == 'right')
					elm.align = 'r';
				else if (elm.align == 'center')
					elm.align = 'c';
				else if (elm.align == 'expand')
					elm.align = 'e';
				return true;
			} incontextof this,

			drawfunc: function(stack, elm, x,y, t_x,t_y, dx,dy) {
				var draww = font.getTextWidth(elm.str);
				var back_fh = font.height, back_ff = font.face,
				    back_fb = font.bold;
				setFont(rubyName, rubyHeight, rubyBold);
				var l = font.getTextWidth(elm.text);
				var p = calcRubyPos(elm, l, draww);
				var s = elm.text;
				if (verticalView) {
					// �c������
					var rx = dx + rubyHeight + rubyOffset;
					var ry = dy + p[0];
					var llast = height-marginB-rubyHeight;
					var plast = marginL+rubyHeight;
					for (var i = 0; i < s.length; i++) {
						// �ꕶ�������r��`��
						if (ry > llast) {
							ry = t_y+(ry-llast);
							rx -= lineHeight;
							// �ō��s�̏ꍇ�͏I��
							if (rx < plast)
								return;
						}
						super.drawText(rx+1, ry+1, s[i], 0, 255, true);
						super.drawText(rx+2, ry+2, s[i], 0, 255, true);
						super.drawText(rx, ry, s[i], fontcolor, 255, true);
						ry += p[1];
					}
				} else {

					// ��������
					var rx = dx + p[0];
					var ry = dy - rubyHeight - rubyOffset;
					var llast = width-marginR-rubyHeight;
					var plast = height-marginB-rubyHeight;
					for (var i = 0; i < s.length; i++) {
//ryo--
//���ɉ��s�����͂��Ă���̂ł��̏����͑����s�v
//						// �ꕶ�������r��`��
//						if (rx > llast) {
//							rx = t_x+(rx-llast);
//							ry += lineHeight;
//							// �ŉ��s�̏ꍇ�͏I��
//							if (ry > plast)
//								return;
//						}
//--
						super.drawText(rx+1, ry+1, s[i], 0, 255, true);
						super.drawText(rx+2, ry+2, s[i], 0, 255, true);
						super.drawText(rx, ry, s[i], fontcolor, 255, true);
						super.drawText(rx, ry, s[i], fontcolor, 255, true);
						rx += p[1];
					}


//--
				}
				setFont(back_ff, back_fh, rubyBold);
// ToDo: ���y�[�W���O�s�Ń��r�����ɑ����ꍇ�ɁA�؂�Ă��܂�
// ToDo: �O�s�ȏニ�r�������ꍇ���l�����Ă��Ȃ��B�c���Ȃ��Ă������B
				return 0;
			} incontextof this,
		],

		hact: %[
			storefunc: function(stack, elm) {
				tagpush(stack, elm);	// �^�O��ۑ�
				return true;
			} incontextof this, 

			drawfunc: function(stack, elm, x, y) {
				elm.st_x = x;
				elm.st_y = y;
				tagpush(stack, elm); // ���W�����o���Ƃ�
			} incontextof this,

			revtag: function(elm) {
				return '[endhact]';
			} incontextof this
		],

		endhact: %[
			storefunc: function(stack, elm) {
				// �Ή����� [hfont] ���폜
				tagerase(stack, 'hact', false);
				return true;
			} incontextof this,

			drawfunc: function(stack, elm, x, y) {
				var e = tagerase(stack, 'hact', false);
				var size;
				if (verticalView)
					size = y-e.st_y;
				else 
					size = x-e.st_x;
				if (size <= 0)	// ���x���̍s����hact���n�܂鎞
					return;
				var ha = new HistoryActionButtonLayer(window,this,elm);
				hacts.add(ha);
				ha.setOptions(%[exp:e.exp]);
				if (verticalView) {
					ha.setPos(e.st_x-lineHeight, e.st_y);
					ha.setSize(lineHeight, size);
				} else {
					ha.setPos(e.st_x, e.st_y);
					ha.setSize(size, lineHeight);
				}
			} incontextof this
		],

		// [hlocate pos= ipos] �����s�̒��ł����ړ��ł��Ȃ�
		hlocate: %[
			drawfunc: function(stack, elm, x,y, t_x,t_y, dx,dy) {
				if (elm.ipos !== void)
					return +elm.ipos;
				if (verticalView) {
					if (elm.pos !== void)
						return +elm.pos-y+marginT;
				} else {
					if (elm.pos !== void)
						return +elm.pos-x+marginL;
				}
				return 0;
			} incontextof this,

			drawwidth: function(elm, curwidth) {
				// �������C����Ŏ��̕\���ʒu���ړ�
				if (elm.ipos !== void)
					return +elm.ipos;
				if (elm.pos !== void)
					return +elm.pos-curwidth;
				return 0;
			} incontextof this
		],

		// [htext test="abcd"] �q�X�g���ɂ����o�͂��镶��
		htext: %[
		], 

		himage: %[
			drawfunc: function(stack, elm, x, y) {
				// �������C����ɉ摜��\��
				var hi = new HistoryImageLayer(window, this);
				himages.add(hi);
				hi.setOptions(elm);	// �摜�ǂݍ��݂Ƃ�
				var i = (elm.idx === void) ? 0 : int(elm.idx);
				if (verticalView) {
					hi.setPos(x-(lineHeight+hi.width)/2+i,y);
					return hi.height; // �Z���^�����O
				} else {
					hi.setPos(x, y+lineHeight-hi.height+i);
					return hi.width;  // ������
				}
			} incontextof this,

			drawwidth: function(elm, curwidth) {
				var hi = new HistoryImageLayer(window, this);
				hi.setOptions(elm);
				var w = (verticalView) ? hi.height : hi.width;
				invalidate hi;
				return w;
			} incontextof this
		],

		hface: %[
			drawfunc: function(stack, elm, x, y) {
				// �������C����ɉ摜��\��
				var hi = new HistoryImageLayer(window, this);
				himages.add(hi);
				hi.setOptions(elm);	// �摜�ǂݍ��݂Ƃ�
				var i = (elm.idx === void) ? 0 : int(elm.idx);

				hi.setPos(faceLeft,y + lineHeight - fontHeight);
				return 0;
			} incontextof this,

			drawwidth: function(elm, curwidth) {
				var hi = new HistoryImageLayer(window, this);
				hi.setOptions(elm);
				invalidate hi;
				return 0;
			} incontextof this
		]
	];

	// �{�^�������b�Z�[�W�G���A�����H
	function isInMessageArea(b)
	{
//		return (b.top >= marginT &&
//			b.top+b.height <= height-marginB &&
//			b.left >= marginL &&
//			b.left+b.width <= width-marginR);
		return (b.top+b.height >= marginT &&
			b.top <= height-marginB &&
			b.left >= faceLeft &&
			b.left+b.width <= width-marginR);
	}

	// �q�X�g����̃{�^������ʏ�� line ���ړ����A�s�v�Ȃ��̂��폜����
	// ������ʂ̃X�N���[�����̏����p
	function moveButtons(lineidx)
	{
		var w = lineHeight * lineidx;
		for (var i = hbuttons.count-1; i >= 0; i--) {
			if (verticalView)
				hbuttons[i].left -= w;
			else
				hbuttons[i].top += w;
			if (!isInMessageArea(hbuttons[i])) {
				invalidate hbuttons[i];
				hbuttons.erase(i);
			}
		}
		for (var i = hacts.count-1; i >= 0; i--) {
			if (verticalView)
				hacts[i].left -= w;
			else
				hacts[i].top += w;
			if (!isInMessageArea(hacts[i])) {
				invalidate hacts[i];
				hacts.erase(i);
			}
		}
		for (var i = himages.count-1; i >= 0; i--) {
			if (verticalView)
				himages[i].left -= w;
			else
				himages[i].top += w;
			if (!isInMessageArea(himages[i])) {
				invalidate himages[i];
				himages.erase(i);
			}
		}
	}


	function onHactEnter(e){
		for (var i = 0; i < hacts.count; i++) {
			if(hacts[i] !== e){
				if(hacts[i].exp == e.exp){
					hacts[i].Butt_mouseOn = 2;
					hacts[i].drawState(2);
				}
			}
		}
	}

	function onHactLeave(e){
		var flg = false;
		for (var i = 0; i < hacts.count; i++) {
			if(hacts[i] !== e){
				if(hacts[i].exp == e.exp){
					hacts[i].Butt_mouseOn = 0;
					hacts[i].drawState(0);
				}
			}
		}
	}



// HEAD :Scrollbar.Target interface��������
	// �q�X�g���͐擪���H
	function isHead()
	{
		return dispStart <= 0;
	}
	// �q�X�g���͖������H
	function isTail()
	{ 
		if (everypage)
			return dispStart >= dataPages-1;
		else
			return dispStart >= dataLines-dispLines;
	}
	// ���݂̈ʒu(pos, 0�`1�̎���)����AdispStart(�����̕\���J�n�ʒu)�𓾂�
	function getDispStart(pos)
	{
		if (everypage)
			return int((dataPages-1)*pos);
		else
			return int((dataLines-dispLines)*pos);
	}
	property pageCount
	{
		getter()
		{
			var res = (everypage)?dataPages:dataLines/repageLine;
			return (res > 1) ? res : 1;
		}
	}
	property position
	{
		getter()
		{
			if (everypage) {
				if (pageCount > 1)
					return dispStart/(pageCount-1);
				else
					return 1;
			} else {
				if (dataLines > dispLines)
					return dispStart/(dataLines-dispLines);
				else return 0;
			}
		}
	}

	// �}�E�X�N���b�N���ꂽ���͑S���e�ɏ�����C����
	function onMouseDown(x, y, button)
	{
		parent.onMouseDown(...);
	}


// TAIL :Scrollbar.Target interface��������
//

}


// �g���������C���N���X
class ExtHistoryLayer extends Layer
{
	// �������g�͔w�i�摜��\������B
	var closeButton;		// �E��̗����I���{�^��
	var scrollbar;			// �X�N���[���o�[�I�u�W�F�N�g
	var meslayer;			// ���b�Z�[�W�\�����C��
	var currentLine;
	var relinePos;

	var timer;
	var dOpacity;

	var lastWheelTick; // �Ō�Ƀz�C�[���𑀍삵�� tick count

	// �ȉ��A�g���������C���p�ݒ�B
	// system/Config.tjs �̖����ɁAfunction ExtHistoryLayer_config() ��
	// ��`���āA���̒��Őݒ肷�邱�Ƃ������߂���B

	var bggraphic = "backlog_bg";			// �w�i�摜�t�@�C����
	var prevgraphic = "scrollBar_up";		// prev�{�^���̉摜�t�@�C����
	var nextgraphic = "scrollBar_down";		// next�{�^���̉摜�t�@�C����
	var slgraphic = "scrollBar_slider";		// �X���C�_�[�̉摜�t�@�C����
	var closegraphic = "backlog_return";		// close�{�^���̉摜�t�@�C����

	var buttonColor = 0x808080;	// �{�^���F
	var buttonCaptionColor = 0xffffff;	// �{�^���L���v�V�����F
	var bgColor = 0xc8000000;	// �w�i�F
	var messageTop = 45;	// �������b�Z�[�W�E�B���h�E�̍��W
	var messageLeft = Infinity;	// ����(�ǂ��Infinity��default��\��)
	var messageWidth = Infinity;	// �������b�Z�[�W�E�B���h�E�̑傫��
	var messageHeight = 675;	// ����
	var closeButtonTop = 694;	// �N���[�Y�{�^���̍��W
	var closeButtonLeft = 1116;	// ����
	var scrollbarHeight = 28;	// �X�N���[���o�[��(�摜btn�Ȃ疢�g�p)
	var scrollbarBack = 0x00000000;	// �X�N���[���o�[�w�i�F
	var sbbggraphic = "";		// �X�N���[���o�[�w�i�摜�t�@�C����

	var hidemessage = false;	// ����\�����Ƀ��b�Z�[�W���C�����B����

	// �R���X�g���N�^
	function ExtHistoryLayer(win, par, elm)
	{
		super.Layer(...);

		name = "�g���������C��";

//		closeButtonLeft = window.scWidth-scrollbarHeight;
		// �ݒ�l�� Config.tjs ���ɂ���ΐݒ�
		if (typeof(.ExtHistoryLayer_config) != 'undefined')
			(.ExtHistoryLayer_config incontextof this)();

		setPos(0, 0);
		setSize(parent.width, parent.height);
		setImageSize(width, height);
		hitType = htMask;
		visible = false;	// �ŏ��͕s��
		face = dfAlpha;	
		fillRect(0,0, width, height, bgColor);	// def = �������̍�
		focusable = true;

		cursor = window.cursorDefault;

		// ���b�Z�[�W���C���쐬
		var meselm = %[];
		if (messageLeft != Infinity)
			meselm.left = messageLeft;
		if (messageTop != Infinity)
			meselm.top = messageTop;
		if (messageWidth != Infinity)
			meselm.width = messageWidth;
		if (messageHeight != Infinity)
			meselm.height = messageHeight;
		meslayer = new HistoryMessageLayer(win, this, meselm);
		currentLine = meslayer.currentLine;
		relinePos = meslayer.relinePos;

		// �{�^���Ƃ��쐬�B�����ō쐬����ƁAhistory���g��Ȃ�����
		// ���ʂ����A�q�X�g���\�����Ƀ{�^�����ƁA����܂łɗ�������
		// ������� limitPos �Ȃǂ�������Ԃŉ��s���ςɂȂ����Ⴄ�̂ŁB
		// makeButtons()�֐��́AMainWindow.tjs ����Ă΂��̂ō폜�s�\
		makeButtons();

		setOptions(elm);

		timer = new Timer(onTimer,'');
		timer.enabled = false;
		timer.interval = 10;
		opacity = 0;
	}

	// �f�X�g���N�^
	function finalize()
	{
		invalidate closeButton;
		invalidate scrollbar;
		invalidate meslayer;
		super.finalize(...);
	}

	// �Z�[�u���ɓ��e��ۑ�
	function save() {
		return meslayer.save(...);
	}
	
	function getTextWidth() {
		return meslayer.getTextWidth(...);
	}

	// ���[�h���ɓ��e�𕜌�
	function load(dic) {
		meslayer.load(...);
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.autoreturn !== void)
			autoReturn = +elm.autoreturn;
		setOptions_sub(this, elm);

		// �O���t�B�b�N��ݒ肵���ꍇ�́A�{�^������蒼��
		if (elm.closegraphic !== void || elm.prevgraphic !== void ||
		    elm.nextgraphic !== void || bggraphic !== void)
			makeButtons();
	}

	// �{�^���쐬(HistoryLayer.makeButtons()���㏑��)
	function makeButtons()
	{
		if (closeButton !== void)
			invalidate closeButton;	// ���݂���Ȃ�Đݒ�
		closeButton = new LButtonLayer(window, this);
		closeButton.width 	 = scrollbarHeight;
		closeButton.height 	 = scrollbarHeight;
		closeButton.hint         = "���b�Z�[�W���������";
		closeButton.captionColor = buttonCaptionColor;
		closeButton.color        = buttonColor;
		closeButton.caption      = "�~";
		closeButton.visible      = true;
		// �摜������Γǂݍ���
		if (closegraphic != "")
			closeButton.loadImages(closegraphic);
		if (closeButtonTop == Infinity)
			closeButton.top  = 0;
		else
			closeButton.top  = closeButtonTop;
		if (closeButtonLeft == Infinity)
			closeButton.left = window.scWidth - closeButton.width;
		else
			closeButton.left = closeButtonLeft;

		// �X�N���[���o�[�́A��`����Ă���΍Ē�`�͂��Ȃ�
		var scelm = %[
			color:buttonColor,
			captionColor:buttonCaptionColor
		];
		if (meslayer.verticalView) {
			if (scrollbar === void) {
				scrollbar = new HorizontalScrollbar(window,
							this, meslayer, scelm);
				var e = %[width:scrollbarHeight,
					  height:scrollbarHeight];
				scrollbar.setOptions(,e,e);
			}
			// �c�����̎��́A�X�N���[���o�[�̓��b�Z�[�W���C����[��
			scrollbar.setSize(meslayer.width, scrollbarHeight);
			scrollbar.setPos(meslayer.left,
					 meslayer.top-scrollbar.height);
		} else {
			if (scrollbar === void) {
				scrollbar = new VerticalScrollbar(window,
							this, meslayer, scelm);
				var e = %[width:scrollbarHeight,
					  height:scrollbarHeight];
				scrollbar.setOptions(,e,e);
			}
//			// �������̎��́A�X�N���[���o�[�͉E�[��
//			scrollbar.setSize(scrollbarHeight, meslayer.height);
//			scrollbar.setPos(meslayer.left+meslayer.width,
//					 meslayer.top);
			scrollbar.setSize(28,654);
			scrollbar.setPos(1122,37);
		}

		// �摜������Γǂݍ���
		if (prevgraphic != "")
			scrollbar.setOptions(,%[graphic:prevgraphic]);
		if (nextgraphic != "")
			scrollbar.setOptions(,,%[graphic:nextgraphic]);
		if (slgraphic != "")
			scrollbar.setOptions(,,,%[graphic:slgraphic]);
		if (sbbggraphic != "")
			scrollbar.setOptions(%[graphic: sbbggraphic]);
		if (bggraphic != "")
			loadImages(bggraphic);

		scrollbar.initState();
		meslayer.calcRelinePos();
	}

	// ���݂͕s�v�����AMainWindow.ks ����Ă΂��̂Ń_�~�[�Ŏc���Ă���
	function setNewAction(action)
	{
	}

	// ���݂͕s�v�����AMainWindow.ks ����Ă΂��̂Ń_�~�[�Ŏc���Ă���
	function clearAction()
	{
	}
	
	function calcRelinePos()
	{
		relinePos = meslayer.calcRelinePos();
	}

	// �������C�����N���A����
	function clear()
	{
		meslayer.clear(...);
	}
	
	function getCurrentLine()
	{
		return currentLine;
	}
	
	function getRelinePos()
	{
		return relinePos;
	}

	// �������C���ɕ����𗭂ߍ��ށB
	function store(ch, elm)
	{
		meslayer.store(...);
	}

	// ���y�[�W
	function repage()
	{
		meslayer.repage(...);
	}

	// ���s
	function reline()
	{
		meslayer.reline(...);
	}

	// ���݈ʒu�ɃC���f���g��ݒ�
	function beginIndent()
	{
		meslayer.beginIndent(...);
	}

	// �C���f���g������
	function endIndent()
	{
		meslayer.endIndent(...);
	}

	// ������ʂ��\�����ꂽ���A�Ăяo�����B
	function dispInit()
	{
		// ���b�Z�[�W���C����\�����Ȃ��Ȃ����
		if (hidemessage && !window.messageLayerHiding)
			window.hideMessageLayerByUser();

		// �S���ĕ`��Ə����ݒ�
		makeButtons();
		meslayer.dispInit();

		updateButtonState();
		visible = true;

		dOpacity = 25;
		timer.enabled = true;
	}

	function dispInitComplete(){
		enabled = true;	// ���ꂪ������ setMode() �ŃG���[�ɂȂ�
		setMode();
		focus();
		lastWheelTick = 0;
	}

	function onTimer(){
		var o = opacity;
		o += dOpacity;
		if(o>255){
			o = 255;
			timer.enabled = false;
			dispInitComplete();
		}
		if(o<0){
			o = 0;
			timer.enabled = false;
			dispUninitComplete();
		}
		opacity = o;
	}


	// ������ʂ���\���ɂȂ������A�Ăяo�����
	function dispUninit()
	{
		if(visible==false)return;
		dOpacity = -25;
		timer.enabled = true;
	}

	function dispUninitComplete(){
		meslayer.dispUninit();
		visible = false;
		enabled = false;
		removeMode();	// ��ɂ����systembutton�Ƀt�H�[�J�X�����̂�

		// ���b�Z�[�W���C�����������Ă�����\��
		if (hidemessage && window.messageLayerHiding)
			window.showMessageLayerByUser();
		window.setMenuAccessibleAll();
	}

	// �S�{�^����Ԃ��X�V
	function updateButtonState()
	{
		scrollbar.updateState();
	}

	// �������B��
	function hide()
	{
		window.hideHistory();
	}

	// �{�^�����N���b�N���ꂽ��
	function onButtonClick(sender)
	{
		if (sender == closeButton)
			hide();
	}

	// �}�E�X�N���b�N���ꂽ��
	function onMouseDown(x, y, button)
	{
		if (button == mbRight)
			hide();
		super.onMouseDown(...);
	}

	// �L�[������������ꂽ��
	function onKeyDown(key, shift)
	{
		window.hideMouseCursor();
		if (meslayer.canScroll) {
			if (meslayer.verticalView) {
				if (key == VK_DOWN || key == VK_NEXT)
					meslayer.nextPage();
				else if (key == VK_UP || key == VK_PRIOR)
					meslayer.prevPage();
				else if (key == VK_LEFT)
					meslayer.nextOne();
				else if (key == VK_RIGHT)
					meslayer.prevOne();
			} else {
				if (key == VK_DOWN)
					meslayer.nextOne();
				else if (key == VK_UP)
					meslayer.prevOne();
				else if (key == VK_LEFT || key == VK_PRIOR)
					meslayer.prevPage();
				else if (key == VK_RIGHT || key == VK_NEXT)
					meslayer.nextPage();
			}
		}
		if (key == VK_ESCAPE || key == VK_RETURN || key == VK_SPACE || key == VK_NUMPAD0 || key == VK_Z || key == VK_X || key == VK_DELETE)
			hide();
	}

	// �}�E�X�z�C�����܂킵����
	function windowMouseWheel(shift, delta, x, y)
	{
		// �E�B���h�E�̃z�C�[�����상�b�Z�[�W�������ɗ������
		var currenttick = System.getTickCount();
		delta = delta \ 120;
		if (delta > 0)
			// ��
			while (delta--)
				meslayer.prevOne();
		else if (delta < 0) {
			// ��O
			if (currenttick - lastWheelTick > 150 &&
			    meslayer.isTail())
				/* ���邭��񂵂Ă��邤���ɂ����Ȃ藚����
				  �����肵�Ȃ��悤�Ȏd�|�� */
				// ���ɍŏI������\�����Ă���
				hide();
			else {
				delta = -delta;
				while (delta--)
					meslayer.nextOne();
			}
		}
		lastWheelTick = currenttick;
	}

	// historyLayer.everypage �� MainWindow.ks ���痘�p�����̂Ń��b�p�[
	property everypage
	{
		getter
		{
			return meslayer.everypage;
		}
		
		setter(val)
		{
			meslayer.everypage = val;
		}
	}

	// historyLayer.storeState �� MainWindow.ks ���痘�p�����̂Ń��b�p�[
	property storeState
	{
		getter
		{
			return meslayer.storeState;
		}
		
		setter(val)
		{
			meslayer.storeState = val;
		}
	}
}


// ������ɕ\������{�^�����C��
class HistoryButtonLayer extends ButtonLayer
{
	var exp = "";		// �N���b�N���Ɏ��s�����TJS��

	// �R���X�g���N�^
	function HistoryButtonLayer(window, parent, elm)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
		//�f�t�H���g�l�ݒ�
		// �{�^���T�C�Y�͗����t�H���g�T�C�Y���f�t�H���g�Ƃ���
		setSize(parent.fontHeight, parent.fontHeight);
		setOptions(%[caption:"��",
			     captionColor:parent.hbCaptionColor,
			     color:parent.hbColor,
			     visible:true, enabled:true]);
		setOptions(elm);
	}

	// �f�X�g���N�^
	function finalize()
	{
		super.finalize(...);
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.graphic !== void)
			loadImages(elm.graphic);
		setOptions_sub(this, elm);
	}

	// �}�E�X���N���b�N����A�����ꂽ��
	function onExecute(x, y, button, shift)
	{
		super.onExecute(...);
		if (exp != "")
			Scripts.eval(exp);
	}
}


// [hact]�{�^���B���͓����ȃ{�^���ŁA���̕������B�������B����ŁA
// [hact]���̕����̑傫���E�F�ύX�E���r�ɑΉ��ł���B
class HistoryActionButtonLayer extends ButtonLayer
{
	// ������ var next; // �����s�ɕ������ꂽ���́A���̃{�^��(�Ȃ����void)
	var exp = "";	// �N���b�N���ꂽ���Ɏ��s�����TJS��

	// �R���X�g���N�^
	function HistoryActionButtonLayer(window, parent, elm)
	{
		super.ButtonLayer(...);
		visible = true;
		face    = dfAlpha;
		Butt_imageLoaded = true;	// �C���[�W�{�^���Ƃ���B
		setOptions(elm);
		focusable = false;
	}

	// �f�X�g���N�^
	function finalize()
	{
		super.finalize(...);
	}

	// �T�C�Y�ύX�B[hact]�̂��߂́A�����E�������{�^�����쐬
	// ���� width/height �� setter �����Ă� setSize()�����Ƃ���ʂ���̂�
	function setSize(w, h)
	{
		super.setSize(w, h);
		setImageSize(w*(Butt_showFocusImage ? 4 : 3), h);
		fillRect(0, 0, w, h, 0x00000000);
		var c = parent.historyColor;
		// �c���������������Ȃ̂ŁA���F��fill���邱�ƂɕύX�B�����̂���
		fillRect(0,  0  , w,h, 0x00000000|c);
		fillRect(w,  h-2, w,2, 0xff000000|c);	// �����ꂽ��
		fillRect(w*2,h-2, w,2, 0xff000000|c);	// �t�H�[�J�X1
		if (Butt_showFocusImage) {
			fillRect(w*3,0, w,h, 0x60000000|c); //�t�H�[�J�X2
			fillRect(w*3+1,1, w-2,h-2,0x00000000);
		}
		Butt_imageLoaded = true;	// �����I�ɃC���[�W�{�^���ɂ���
		// ���{���� setter ���Ē�`����΂����񂾂��ǁc
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;

		setOptions_sub(this, elm);

		// width/height���w�肳�ꂽ��A�����E�������{�^���쐬
		if (elm.width !== void || elm.height !== void)
			setSize(width, height);
	}

	// �}�E�X���N���b�N����A�����ꂽ��
	function onExecute(x, y, button, shift)
	{
		super.onExecute(...);
		if (exp != "" && button==mbLeft) Scripts.eval(exp);
		if(button==mbRight) parent.onMouseDown(...);
	}

	function onMouseEnter(){
		super.onMouseEnter();
		parent.onHactEnter(this);
	}

	function onMouseLeave(){
		super.onMouseLeave();
		parent.onHactLeave(this);
	}

}


// ������ɕ\������{�^�����C��
class HistoryImageLayer extends Layer
{
	var graphic;	// �\������摜

	// �R���X�g���N�^
	function HistoryImageLayer(window, parent, elm)
	{
		super.Layer(window, parent);
		focusable = false;
		//�f�t�H���g�l�ݒ�
		visible = true;
		setOptions(elm);
	}

	// �f�X�g���N�^
	function finalize()
	{
		super.finalize(...);
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;

		setOptions_sub(this, elm);
		if (elm.graphic !== void) {
			if (elm.width !== void || elm.height !== void){
				var tmp = new .Layer(window, this);
				tmp.loadImages(elm.graphic);
				tmp.setSizeToImageSize();

				var w = (elm.width!==void)? elm.width : tmp.width;
				var h = (elm.height!==void)? elm.height : tmp.height;

				stretchCopy(0, 0, w, h, tmp, 0, 0, tmp.width, tmp.height, stLinear);
				setSize(w,h);
			}else{
				loadImages(elm.graphic);
				setSizeToImageSize();
			}
		}
		if(elm.frame!==void && +elm.frame==true){
			fillRect(0, 0, width, 1, 0xff888888);
			fillRect(0, 0, 1, height, 0xff888888);
			fillRect(0, height-1, width, 1, 0xff888888);
			fillRect(width-1, 0, 1, height, 0xff888888);
		}
	}
}



// KAG �̃q�X�g�����C���u������
if (kag.historyLayer instanceof "HistoryLayer") {
	// �f�t�H���g��������
	kag.remove(kag.historyLayer);
	invalidate kag.historyLayer if (kag.historyLayer !== void);
	kag.historyLayer = new ExtHistoryLayer(kag, kag.fore.base);
	kag.add(kag.historyLayer);
}


// tagname��ύX���A�K�v�ȃp�����[�^�𔲂��o�����q�X�g���^�O�𗚗��ɏ�������
function storeTag(tagname, mp=%[], params=[])
{
	if ((f.transhistorytag !== void && !f.transhistorytag) ||
	    mp.nohistory || !kag.historyWriteEnabled)
		return;		// ���s���Ȃ��Ȃ炵�Ȃ��B

	var dic = %[];
	var ary = [];
	ary.assign(mp);
	for (var i = ary.count-2; i >= 0; i-=2)
		if (params.find(ary[i]) >= 0)
			dic[ary[i]] = ary[i+1];
	dic.tagname = tagname;
	kag.historyLayer.store(kag.historyLayer.meslayer.dic2tag(dic), dic);
}


// ����� false �ɂ���ƃ��b�Z�[�W��ʂ�[font]�Ƃ����q�X�g���ɔ��f���Ȃ��Ȃ�B
// �f�t�H���g�� enabled.
// �O���[�o���ϐ��ɂ����Ⴄ�̂͂�����Ɖ������A���ꂾ���̂��߂�KAGPlugin
// �g���̂��J�b�R�����̂ŃO���[�o���ϐ��ɁB
// void �ł� true �ƈ����悤�ɂ��Ă���̂ŁA[clearver]���� void �ɂȂ��Ă�
// ���v�B�ł��A���̌��[history historytag=true]�Ƃ����Ƃ����������S�B
f.transhistorytag = true;

[endscript]


; �^�O�u�������}�N���ǂݍ���
[call storage=RenameKAGTag.ks]


; [history]�^�O��u�������Ahistorytag=��ǉ��B
; bggraphic/prevgraphic/nextgraphic/closegraphic/slgraphic/sbbggraphic ��
; �����I�ɐݒ肳���
; ���b�Z�[�W��ʂ�[font]�Ƃ����q�X�g���ɔ��f���邩�ǂ����B
[renametag from=history to=history_org]
[macro name=history]
[history_org *]
[eval exp="f.transhistorytag = +mp.historytag" cond="mp.historytag !== void"]
[endmacro]


; [font]�^�O��������A[hfont]�������ɑ���悤�ɂ���
; [font]�^�O��u�������Ă���A�V�K��[font]�^�O���`
[renametag from=font to=font_org]
[macro name=font]
[font_org *]
[eval exp="storeTag('hfont', mp, ['color', 'face', 'size', 'bold', 'italic'])"]
[endif]
[endmacro]


; [ruby]�^�O��u��������
[renametag from=ruby to=ruby_org]
[macro name=ruby]
[ruby_org *]
[eval exp="storeTag('hruby', mp, ['text', 'str'])"]
[endmacro]


; [resetfont]�^�O��u��������
[renametag from=resetfont to=resetfont_org]
[macro name=resetfont]
[resetfont_org *]
[eval exp="storeTag('resethfont', mp)"]
[endmacro]

; [ct][cm][er]�^�O��u��������B��������������������Z�b�g����(resetfont�Ɠ���)
[renametag from=cm to=cm_org]
[macro name=cm]
[cm_org *]
[eval exp="storeTag('resethfont', mp)"]
[endmacro]

[renametag from=ct to=ct_org]
[macro name=ct]
[ct_org *]
[eval exp="storeTag('resethfont', mp)"]
[endmacro]

[renametag from=er to=er_org]
[macro name=er]
[er_org *]
[eval exp="storeTag('resethfont', mp)"]
[endmacro]


; [hact]�^�O��u��������(�Ƃ���������)
[renametag from=hact to=hact_org]
[macro name=hact]
[eval exp="storeTag('hact', mp, ['exp'])"]
[endmacro]

; [endhact]�^�O��u��������(�Ƃ���������)
[renametag from=endhact to=endhact_org]
[macro name=endhact]
[eval exp="storeTag('endhact', mp)"]
[endmacro]


; eruby ������Γǂݍ���Ŋg��
[if exp="Storages.isExistentStorage('eruby.ks')"]
	[call storage=eruby.ks]
	[renamemacro from=eruby to=eruby_org]
	[macro name="eruby"]
	; �q�X�g���L������ eruby ���ɂ������������ɏo�͂����̂ňꎞ��~
	[eval exp="mp.historyWriteEnabled_save = kag.historyWriteEnabled"]
	[history output=false]
	[eruby_org *]
	[history output=true cond="mp.historyWriteEnabled_save"]
	; �ŁA�f�t�H���g align ��ǉ�����hruby���o��
	[eval exp="mp.align = 'e'" cond="mp.align === void"]
	[eval exp="storeTag('hruby', mp, ['text', 'str', 'align'])"]
	[endmacro]
[endif]



[return]
