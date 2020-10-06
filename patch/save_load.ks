[if exp="typeof(global.rclickconfig_object) == 'undefined'"]
[iscript]

// Config.tjs �̐ݒ���ȉ��̂悤�ɂ���K�v����
//  freeSaveDataMode = false
//  saveThumbnail = true
//  numBookMarks = 40

class RButtonLayer extends ButtonLayer
	// parent �� onClick �C�x���g�𑗂�悤�ɂ����{�^�����C��
{
	var tag;
	var win;

	function RButtonLayer(window, parent)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
		win = window;
	}

	function finalize()
	{
		super.finalize(...);
	}

	function onClick()
	{
		super.onClick(...);
		if(enabled)
			parent.onButtonClick(this);
	}

	function onKeyDown(key)
	{
		if(key == VK_ESCAPE || key == VK_Z || key == VK_NUMPAD0 || key == VK_DELETE)
		{
			parent.onKeyDown(...);
		}else{
			super.onKeyDown(...);
		}
	}

	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if(button == mbRight)
		{
			parent.onMouseDown(...);
		}
	}

	function onFocus(){
		var sgks = window.getKeyState;
		var process = sgks(VK_LEFT) || sgks(VK_UP) || sgks(VK_RIGHT) ||
			sgks(VK_DOWN) || sgks(VK_TAB) || sgks(VK_PADLEFT) || sgks(VK_PADRIGHT) ||
			sgks(VK_PADUP) || sgks(VK_PADDOWN);
		if(process){
			setCursorPos(width>>1,height>>1);
		}
	}

	function onBlur(){
		var sgks = window.getKeyState;
		var process = sgks(VK_LEFT) || sgks(VK_UP) || sgks(VK_RIGHT) ||
			sgks(VK_DOWN) || sgks(VK_TAB) || sgks(VK_PADLEFT) || sgks(VK_PADRIGHT) ||
			sgks(VK_PADUP) || sgks(VK_PADDOWN);
		if(process){
			win.hideMouseCursor();
		}
	}

}

class RButtonLayer2 extends ButtonLayer
	// parent �� onClick �C�x���g �łȂ� onMouseButton �ŃC�x���g�𑗂�悤�ɂ����{�^�����C��
{
	var tag;
	var win;

	function RButtonLayer2(window, parent)
	{
		win = window;
		super.ButtonLayer(window, parent);
		focusable = false;
	}

	function finalize()
	{
		super.finalize(...);
	}

	function onKeyDown(key, shift, process)
	{
		if(key == VK_ESCAPE || key == VK_Z || key == VK_NUMPAD0 || key == VK_DELETE)
		{
			parent.onKeyDown(...);
		}else{
			super.onKeyDown(...);
			if(key == VK_RETURN || key == VK_SPACE || key == VK_X){
				parent.onButtonClick(this);
			}
		}
	}

	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if(enabled && button==mbLeft)
			parent.onButtonClick(this);
		if(button == mbRight)
			parent.onMouseDown(...);
	}

	function onFocus(){
		var sgks = window.getKeyState;
		var process = sgks(VK_LEFT) || sgks(VK_UP) || sgks(VK_RIGHT) ||
			sgks(VK_DOWN) || sgks(VK_TAB) || sgks(VK_PADLEFT) || sgks(VK_PADRIGHT) ||
			sgks(VK_PADUP) || sgks(VK_PADDOWN);
		if(process){
			setCursorPos(width>>1,height>>1);
		}
	}

	function onBlur(){
		var sgks = window.getKeyState;
		var process = sgks(VK_LEFT) || sgks(VK_UP) || sgks(VK_RIGHT) ||
			sgks(VK_DOWN) || sgks(VK_TAB) || sgks(VK_PADLEFT) || sgks(VK_PADRIGHT) ||
			sgks(VK_PADUP) || sgks(VK_PADDOWN);
		if(process){
			win.hideMouseCursor();
		}
	}

}

class SaveDataItemLayer extends KAGLayer
{
	// �x���ɑΉ����郌�C��
	var num; // �x�ԍ�
	var bgColor = 0x00ffffff; // �w�i�F ( 0xAARRGGBB )
	var focusedColor = 0xffff1313;

	var commentEdit; // �R�����g�̃G�f�B�b�g
	var protectCheckBox; // �u�f�[�^�ی�v�`�F�b�N�{�b�N�X

	function SaveDataItemLayer(window, parent, num)
	{
		super.KAGLayer(window, parent);

		this.num = num;

		setImageSize(376, 104); // �T�C�Y
		face = dfBoth;

		var str = kag.bookMarkNames[num];
		loadImages("saveload_frame");
		setSize(imageWidth\2, imageHeight);
		imageLeft = 0;

		hitType = htMask;
		hitThreshold = 0; // �S��s����

		cursor = kag.cursorPointed;

		focusable = true; // �t�H�[�J�X�͎󂯎���

		protectCheckBox = new CheckBoxLayer(window, this);
		protectCheckBox.width = 16;
		protectCheckBox.height = 16;
		protectCheckBox.color = 0x333333;
		protectCheckBox.opacity = 255;
		protectCheckBox.textColor = 0xffffff;
		protectCheckBox.setPos(431, 53);
		protectCheckBox.visible = true;

		protectCheckBox.checked = kag.bookMarkProtectedStates[num];

		commentEdit = new EditLayer(window, this);

		commentEdit.setPos(202, 79);
		commentEdit.width = 250;
		commentEdit.height = 16;
		commentEdit.color = 0x333333;
		commentEdit.opacity = 255;
		commentEdit.textColor = 0xffffff;
		commentEdit.visible = true;
		commentEdit.font.height = 11;

		if(kag.scflags.bookMarkComments !== void)
			commentEdit.text = kag.scflags.bookMarkComments[num];

		font.height = 11;
		face = dfBoth;

		drawText(376      , 56, "Locked", 0xffffff);
		drawText(376+width, 56, "Locked", 0xffffff);

		font.height = 11;

		// �ԍ���\��
		var str = (num<9)?"0" + string (num + 1) : string (num + 1);
		font.height = 20;
		var ty = font.getTextHeight(str);
		var tx = font.getTextWidth(str);
		drawText(26        - tx , 6, str, 0xffffff,255,true,255,0,2,2,2);
		drawText(26 +width - tx , 6, str, 0xffffff,255,true,255,0,2,2,2);

		// �T���l�C���摜��ǂݍ���
		var tmplayer = new global.Layer(window, parent);

 		var tnname = kag.getBookMarkFileNameAtNum(num);

		if(Storages.isExistentStorage(tnname))
		{
			tmplayer.loadImages(tnname);
		}
		else
		{
			tmplayer.setImageSize(160, 90);
			tmplayer.fillRect(0, 0, 160, 90, 0xff333333);
			var str = "no image";
			var tx = tmplayer.font.getTextWidth(str);
			tmplayer.drawText((tmplayer.imageWidth - tx) \ 2, 40, str, 0xffffff);
		}

		copyRect(33       , 7, tmplayer, 0, 0, tmplayer.imageWidth, tmplayer.imageHeight);
		copyRect(33 +width, 7, tmplayer, 0, 0, tmplayer.imageWidth, tmplayer.imageHeight);

		invalidate tmplayer;

		// �x�̕ۑ�����\��
		font.height = 12;

		var str = kag.bookMarkNames[num];
		if(str == '') str = 'No Data';
		drawText(202        , 8, str, 0xffffff);
		drawText(202 + width, 8, str, 0xffffff);

		if(kag.scflags.bookMarkChapterName !== void){
			str = kag.scflags.bookMarkChapterName[num];
			drawText(202        , 25, str, 0xffffff);
			drawText(202 + width, 25, str, 0xffffff);
		}

		font.height = 11;
		// ���t��\��
		if(kag.bookMarkDates[num] == '')
			str = "Save Date: --/--/---- --:--", commentEdit.enabled = false;
		else
			str = "Save Date: " + kag.bookMarkDates[num];

		drawText(202        , 52, str, 0xffffff);
		drawText(202 + width, 52, str, 0xffffff);

		// �R�����g : 
		drawText(204        , 66, "Comments :", 0xffffff);
		drawText(204 + width, 66, "Comments :", 0xffffff);
	}

	function finalize()
	{
		invalidate commentEdit;
		invalidate protectCheckBox;
		super.finalize(...);
	}

	function saveToSystemVariable()
	{
		// ��Ԃ��V�X�e���ϐ��ɋL�^����
		if(kag.scflags.bookMarkComments === void)
			kag.scflags.bookMarkComments = [];
		kag.scflags.bookMarkComments[num] = commentEdit.text;
		if(kag.scflags.bookMarkChapterName === void)
			kag.scflags.bookMarkChapterName = [];
		kag.bookMarkProtectedStates[num] = protectCheckBox.checked;
	}

	function onPaint()
	{
		super.onPaint(...);

		// update() ���Ă΂ꂽ��A�`��̒��O�ɌĂ΂��
		face = dfBoth;
		if(focused)
		{
			imageLeft = - imageWidth \ 2;
		}
		else
		{
			imageLeft = 0;
		}
	}

	function onFocus()
	{
		// �t�H�[�J�X�𓾂�
		super.onFocus(...);
		update();
	}

	function onBlur()
	{
		// �t�H�[�J�X��������
		super.onBlur(...);
		update();
	}

	function onHitTest(x, y, process)
	{
		if(process)
		{
			// �E�{�^����������Ă����Ƃ��ɃC�x���g�𓧉�
			if(System.getKeyState(VK_RBUTTON))
				super.onHitTest(x, y, false);
			else
				super.onHitTest(x, y, true);
		}
	}

	function onKeyDown(key, shift, process)
	{
		// �L�[�������ꂽ
		if((process && key == VK_RETURN || key == VK_SPACE || key == VK_X)&&(shift==0))
		{
			// �X�y�[�X�L�[�܂��̓G���^�[�L�[
			super.onKeyDown(key, shift, false);
			saveToSystemVariable();
			parent.onLoadOrSave(num);
		}
		else
		{

			if(key == VK_ESCAPE || key == VK_Z || key == VK_NUMPAD0 || key == VK_DELETE){
				parent.onKeyDown(...);
			}else{
				// process �� false �̏ꍇ�͏����͍s��Ȃ�
				super.onKeyDown(...);
			}
		}
	}

	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if(button == mbLeft)
		{
			focus();
			saveToSystemVariable();
			parent.onLoadOrSave(num);
		}
	}
}

class RClickConfigLayer extends Layer // �Z�[�u���[�h��ʃ��C��
{
	var saveDataItems;
	var state = -1; // 0 = ���C�����j���[  1 = ���[�h��� 2 = �Z�[�u���
	var owner; // RClickConfigPlugin �I�u�W�F�N�g�ւ̎Q��
	var currentPage = kag.saveLoadPage; // �Z�[�u�f�[�^�I�𒆂ɕ\�����̃y�[�W
	var returnButton; // ���ǂ� �{�^��
	var pageButtons; // �Z�[�u�f�[�^�̃y�[�W�{�^��

	var pageNum = 5; //�Z�[�u�y�[�W��

	var nextButton;
	var backButton;
	var pageImage = ["saveLoad_page01","saveLoad_page02","saveLoad_page03","saveLoad_page04","saveLoad_page05"];

	var pageLayer;

	function RClickConfigLayer(win, par, owner)
	{
		super.Layer(win, par);
		this.owner = owner;

		// ���C���̏�Ԃ�������
		setImageSize(kag.scWidth, kag.scHeight);
		clearBase();
		setSizeToImageSize();
		setPos(0, 0);
		hitType = htMask;
		hitThreshold = 0; // �S��s����

		pageLayer = new global.Layer(win,this);
		pageLayer.left = 171;
		pageLayer.top = 0;
		pageLayer.visible = false;
		pageLayer.hitThreshold = 256; // �S�擧��

	}

	function finalize()
	{
		clear();

		invalidate returnButton if returnButton !== void;
		invalidate nextButton   if nextButton   !== void;
		invalidate backButton   if backButton   !== void;
		invalidate pageLayer    if pageLayer    !== void;

		super.finalize(...);
	}

	function clearBase()
	{
		// ���n��h�蒼��
		fillRect(0, 0, imageWidth, imageHeight, 0xc0000000);
	}


	function clearSaveDataItems()
	{
		// �Z�[�u�f�[�^�\���̃N���A
		if(saveDataItems !== void)
		{
			for(var i = 0; i < saveDataItems.count; i++)
			{
				saveDataItems[i].saveToSystemVariable();
				invalidate saveDataItems[i];
			}
			saveDataItems = void;
			kag.setBookMarkMenuCaptions();
		}
	}

	function makeSaveDataItems()
	{
		// �Z�[�u�f�[�^�̕\��
		clearSaveDataItems();
		saveDataItems = [];
		for(var j = 0; j < 2; j++)
		{
			for(var i = 0; i < 5; i++)
			{
				var obj = new SaveDataItemLayer(window, this, currentPage * 10 + j * 5 + i);
				saveDataItems[j * 5 + i] = obj;
				obj.setPos(214 + j * 474, i * 108 + 131);
				obj.visible = true;
				obj.absolute = j * 5 + i;
			}
		}
	}

	function loadPageImage(page)
	{
		pageLayer.loadImages(pageImage[page]);
		pageLayer.setSizeToImageSize();
		pageLayer.visible = true;
	}

	function changePage(newpage)
	{
		// �y�[�W��ύX����Ƃ�

		loadPageImage(newpage);
		currentPage = newpage;
		makeSaveDataItems();

	}

	function makeButtons()
	{
		// �߂� �{�^�����쐬
		if(returnButton === void)
		{
			returnButton = new RButtonLayer(window, this);
//			returnButton.showFocusImage = true;
			returnButton.loadImages("SaveLoad_return");
			returnButton.left = 854;
			returnButton.top = 674;
			returnButton.focusable = true;
			returnButton.absolute = 101;

		}
		returnButton.visible = true;

		// Next �{�^�����쐬
		if(nextButton === void)
		{
			nextButton = new RButtonLayer2(window, this);
//			nextButton.showFocusImage = true;
			nextButton.loadImages("SaveLoad_pagenext");
			nextButton.left = 1015;
			nextButton.top = 674;
			nextButton.focusable = true;
			nextButton.absolute = 102;

		}
		nextButton.visible = true;

		// back �{�^�����쐬
		if(backButton === void)
		{
			backButton = new RButtonLayer2(window, this);
//			backButton.showFocusImage = true;
			backButton.loadImages("SaveLoad_pageback");
			backButton.left = 230;
			backButton.top = 674;
			backButton.focusable = true;
			backButton.absolute = 100;

		}
		backButton.visible = true;

	}

	function makeLoadMenu()
	{
		// �u���[�h�v���j���[
		if(state != 1)
		{
			clear();
			loadImages("load_bg");
			state = 1;
			loadPageImage(currentPage);
			makeSaveDataItems(currentPage);
			makeButtons();
		}
	}

	function makeSaveMenu()
	{
		// �u�Z�[�u�v���j���[
		if(state != 2)
		{
			clear();
			loadImages("save_bg");
			state = 2;
			loadPageImage(currentPage);
			makeSaveDataItems(currentPage);
			makeButtons();
		}
	}

	function clear()
	{
		// ��ʏ�̃{�^���ނ����ׂĔ�\���ɂ��邩�A����������
		clearBase();

		returnButton.visible = false if returnButton !== void;
		nextButton.visible = false if nextButton !== void;
		backButton.visible = false if backButton !== void;
		pageLayer.visible = false if pageLayer !== void;

		clearSaveDataItems();
	}

	function saveToSystemVariable()
	{
		// �V�X�e���ϐ��Ƀf�[�^��ۑ�����K�v������Ƃ�
		if(saveDataItems !== void)
		{
			for(var i = 0; i < saveDataItems.count; i++)
				saveDataItems[i].saveToSystemVariable();
			kag.setBookMarkMenuCaptions();
		}
	}

	function onButtonClick(sender)
	{

		// �{�^���������ꂽ�Ƃ�
		switch(sender)
		{

		kag.se[9].play(%[storage:"sys_decide"]);

		case returnButton: // �u�߂�v�{�^��
			owner.onConfigClose();
			break;

		case nextButton:
			changePage((currentPage==pageNum-1)? 0 : currentPage+1);
			break;

		case backButton:
			changePage((currentPage==0)? pageNum-1 : currentPage-1);
			break;
		}
	}

	function onLoadOrSave(num)
	{

		owner.backCopyConfig();
		// �ԍ� num ���Z�[�u�܂��̓��[�h
		if(state == 1)
		{
			// ���[�h
			if(kag.loadBookMarkWithAsk(num)){
				kag.saveLoadPage = currentPage;
				kag.saveLoadNum = num;
			}
		}
		else
		{
			// �Z�[�u
			if(kag.saveBookMarkWithAsk(num))
			{

				kag.saveLoadPage = currentPage;
				kag.saveLoadNum = num;
				clearSaveDataItems();
				if(kag.scflags.bookMarkComments !== void)

					kag.scflags.bookMarkComments[num] = ''; // �R�����g�͈ꉞ�N���A
//					kag.scflags.bookMarkComments[num] = f.chaptertitle;

				if(kag.scflags.bookMarkChapterName !== void)
					kag.scflags.bookMarkChapterName[num] = f.chaptertitle;


				makeSaveDataItems(); // �\�����X�V

				// ����ʂɕύX��̏����R�s�[
				owner.backCopyConfig();
			}
		}

	}

	function show()
	{
		// ���C����\������
		visible = true;
		setMode();

		if(f.rclickmode == 1){
			saveDataItems[kag.saveLoadNum - kag.saveLoadPage*10].focus();
		}else{
			focus();
		}

	}

	function hide(opt)
	{
		// ���C�����B��
		if (opt) removeMode(); // �\��ʂ̃��[�_��������
		visible = false;
		clear();
		changePage(currentPage);
		state = -1;
	}

	function returnMenu()
	{
		// �E�N���b�N, ESC �L�[,�u�߂�v�{�^���ł̖߂�攻��
		owner.backCopyConfig();
		owner.onConfigClose();
	}

	function onKeyDown(key)
	{
		super.onKeyDown(...);
		if(key == VK_ESCAPE || key == VK_Z || key == VK_NUMPAD0 || key == VK_DELETE)
			owner.onConfigClose(); // ESC �L�[�������ꂽ�烌�C�����B��
	}

	function onMouseDown(x, y, button, shift)
	{
		if(button == mbRight)
		{
			// �E�N���b�N���ꂽ�炱�̃��C�����B���悤��
			owner.onConfigClose();
		}
	}
}

class RClickConfigPlugin extends KAGPlugin // �u�E�N���b�N�ݒ�v�v���O�C���N���X
{
	var window; // �E�B���h�E�ւ̎Q��

	var foreConfig; // �ݒ背�C���i�\��ʁj
	var backConfig; // �ݒ背�C���i����ʁj

	function RClickConfigPlugin(window)
	{
		// RClickPlugin �R���X�g���N�^
		super.KAGPlugin(); // �X�[�p�[�N���X�̃R���X�g���N�^���Ă�
		this.window = window; // window �ւ̎Q�Ƃ�ۑ�����
	}

	function finalize()
	{
		invalidate foreConfig if foreConfig !== void;
		invalidate backConfig if backConfig !== void;
		super.finalize(...);
	}

	function show()
	{
		// �\��ʂƗ���ʂɐݒ背�C�����쐬
		if(foreConfig === void)
			foreConfig = new RClickConfigLayer(window, kag.fore.base, this);
		if(backConfig === void)
			backConfig = new RClickConfigLayer(window, kag.back.base, this);

		// �d�ˍ��킹�����̓��b�Z�[�W����������
		// ����v���O�C���Ƃ��g���Ă���ꍇ��
		// �@�d�Ȃ�Ȃ��悤�Ɏw�萔�l�𒲐������ق����ǂ�����
		foreConfig.absolute = 2000000-1;
		backConfig.absolute = foreConfig.absolute;

		foreConfig.currentPage = kag.saveLoadPage;
		foreConfig.changePage(foreConfig.currentPage);
		backConfig.currentPage = kag.saveLoadPage;
		backConfig.changePage(backConfig.currentPage);


		// �܂���\���ɂ��Ă���
		foreConfig.visible = false;
		backConfig.visible = false;

		if(f.rclickmode == 1)
		{
			// ���ځu���[�h�v���j���[���Ă�
			foreConfig.makeLoadMenu();
			backConfig.makeLoadMenu();
		}
		else if(f.rclickmode == 2)
		{
			// ���ځu�Z�[�u�v���j���[���Ă�
			foreConfig.makeSaveMenu();
			backConfig.makeSaveMenu();
		}
	}

	function setConfigTrans(opt)
	{
		// ��ʂ�\�����邩��\���ɂ��邩�̐ݒ�
		backConfig.visible = opt;

		foreConfig.removeMode(); // �\��ʂ̃��[�_��������
	}

	function backCopyConfig()
	{
		// �\��ʂ̃Z�[�u�f�[�^�̏�Ԃ�ۑ�
		foreConfig.saveToSystemVariable();

		// �K�v�ȕ\��ʂ̏��𗠉�ʂɃR�s�[����
		backConfig.visible = foreConfig.visible;
		backConfig.state = foreConfig.state;
		backConfig.currentPage = foreConfig.currentPage;

		var fc = foreConfig.saveDataItems;
		var bc = backConfig.saveDataItems;

		// ����ʂ��X�V����
		if(fc !== void)
		{
			     if(backConfig.state == 1) backConfig.makeLoadMenu();
			else if(backConfig.state == 2) backConfig.makeSaveMenu();
		}
		if(fc !== void && bc !== void)
		{
			for(var i = 0; i < fc.count; i++)
			{
				bc[i].commentEdit.text = fc[i].commentEdit.text;
				bc[i].protectCheckBox.checked = fc[i].protectCheckBox.checked;
				bc[i].num = fc[i].num;
			}
		}
	}

	function foreCopyConfig()
	{
		// �K�v�ȗ���ʂ̏���\��ʂɃR�s�[����
		foreConfig.visible = backConfig.visible;
		foreConfig.state = backConfig.state;
		foreConfig.currentPage = backConfig.currentPage;

		var fc = foreConfig.saveDataItems;
		var bc = backConfig.saveDataItems;

		// �\��ʂ��X�V����
		if(bc !== void)
		{
			     if(foreConfig.state == 1) foreConfig.makeLoadMenu();
			else if(foreConfig.state == 2) foreConfig.makeSaveMenu();
		}
		if(bc !== void && fc !== void)
		{
			for(var i = 0; i < bc.count; i++)
			{
				fc[i].commentEdit.text = bc[i].commentEdit.text;
				fc[i].protectCheckBox.checked = bc[i].protectCheckBox.checked;
				fc[i].num = bc[i].num;
			}
		}
	}

	function onConfigClose()
	{

		backCopyConfig();

		// �ݒ背�C������鏀��
		f.rclickmode = 0; // �O�̂��ߌĂяo���t���O��������
		setConfigTrans(false); // ����ʂ��\��
		window.trigger('config'); // 'config'�g���K�𔭓�����
	}

	function closeConfig()
	{
		// �ݒ背�C�������S�ɕ���
		foreConfig.hide(true)  if foreConfig !== void;
		backConfig.hide(false) if backConfig !== void;
	}

	// �ȉ��AKAGPlugin �̃��\�b�h�̃I�[�o�[���C�h

	function onStore(f, elm)
	{
	}

	function onRestore(f, clear, elm)
	{
		// �x��ǂݏo���Ƃ�
		closeConfig();
	}

	function onStableStateChanged(stable)
	{
	}

	function onMessageHiddenStateChanged(hidden)
	{
	}

	function onCopyLayer(toback)
	{
		// ���C���̕\�������̏��̃R�s�[
		// backlay �^�O��g�����W�V�����̏I�����ɌĂ΂��
		if(toback)
			if(foreConfig !== void) backCopyConfig(); // �\����
		else
			if(backConfig !== void) foreCopyConfig(); // �����\
	}

	function onExchangeForeBack()
	{
		// ���ƕ\�̊Ǘ���������
		if (foreConfig !== void)
		{
			var tmp;
			tmp = backConfig;
			backConfig = foreConfig;
			foreConfig = tmp;
		}
	}

	function onSaveSystemVariables()
	{
		// �Z�[�u�f�[�^�̃R�����g�͂��̃^�C�~���O�ł� scflags ��
		// �ۑ����Ȃ���΂Ȃ�Ȃ�
		if(foreConfig !== void) foreConfig.saveToSystemVariable();
	}
}

kag.addPlugin(global.rclickconfig_object = new RClickConfigPlugin(kag));

[endscript]
[endif]
[return]


*rclick
; �E�N���b�N�ŌĂ΂��T�u���[�`��
; ���ځu���[�h�v��u�Z�[�u�v�̉�ʂ��Ăяo���ꍇ���������Ă�
[locklink]
[locksnapshot]

; �ݒ背�C�����쐬
[eval exp="rclickconfig_object.show()"]
[backlay]

[eval exp="f.enableWheel = 0"]


*rclick_2

; �g�����W�V�����ŕ\��������
[eval exp="rclickconfig_object.setConfigTrans(true)"]
[trans method=crossfade time=200]
[wt canskip=false]


*rclick_3

; �\��ʂ̕\���ݒ�
[eval exp="rclickconfig_object.foreConfig.show()"]

; 'config'�g���K�����������܂őҋ@
[waittrig name="config"]

; �g�����W�V�����ŕ���
[trans method=crossfade time=200]
[wt canskip=false]

; �ݒ背�C���̒��g������
[eval exp="rclickconfig_object.closeConfig()"]

[eval exp="f.enableWheel = 1"]

[unlocksnapshot]
[unlocklink]
[return]


*hidemessage
; ���b�Z�[�W�������Ƃ��ɌĂ΂��
[hidemessage]
;---
; �ݒ背�C�����ĕ\��
[eval exp="rclickconfig_object.show()"]
;---
[jump target=*rclick_3]


