;�R���t�B�O��ʂ̃X�N���v�g
[eval exp="f.sysfile = 'configmenu.ks'"]

;�V�X�e���{�^���p�̉摜�t�@�C���w��i�g���q�͏ȗ��j
[eval exp="f.sysbtnimgs  = [ 'sysbtn_save', 'sysbtn_load', 'sysbtn_config', 'sysbtn_log', 'sysbtn_repeat', 'sysbtn_auto', 'sysbtn_skip', 'sysbtn_winup', 'sysbtn_ecount']"]

[if exp="typeof(global.systembutton_object) == 'undefined'"]
[iscript]

class SystemButtonLayer extends ButtonLayer
	// �N���b�N���ꂽ�Ƃ��Ɏ��s����֐����w��ł���{�^�����C��
{
	var onClickFunction;

	function SystemButtonLayer(window, parent, func)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
		visible = true;
		onClickFunction = func;
	}

	function finalize()
	{
		super.finalize(...);
	}

	function onClick()
	{
		super.onClick(...);
	}

	function onMouseUp(x, y, button, shift)
	{
		if(enabled && button == mbLeft)
			onClickFunction(this);
		super.onMouseUp(...);
	}
}

class SystemButtonPlugin extends KAGPlugin
{

	var btnSave 		= 0;
	var btnLoad 		= 1;
	var btnConfig 		= 2;
	var btnLog 		= 3;
	var btnRepeat 		= 4;
	var btnAuto 		= 5;
	var btnSkip 		= 6;
	var btnWinUpDown 	= 7;
	var btnECount 		= 8;

	var foreSeen = false; // �\��ʂ̃{�^��������
	var backSeen = false; // ����ʂ̃{�^��������

	var foreButtons = []; // �\��ʂ̃{�^���̔z��
	var backButtons = []; // ����ʂ̃{�^���̔z��

	var foreBase;
	var backBase;

	var foreCountLayer;
	var backCountLayer;

	var buf;

	function SystemButtonPlugin()
	{
		// SystemButtonPlugin �R���X�g���N�^

		createButtons(kag.fore.base, foreButtons);
		createButtons(kag.back.base, backButtons);
			// �{�^�����쐬

		foreBase = new Layer(kag, kag.fore.base);
		foreBase.loadImages("SysBtn_Base");
		foreBase.setSizeToImageSize();
		foreBase.setPos(695,736);
		foreBase.absolute = 2000000-10;

		backBase = new Layer(kag, kag.back.base);
		backBase.loadImages("SysBtn_Base");
		backBase.setSizeToImageSize();
		backBase.setPos(695,736);
		backBase.absolute = 2000000-10;

		foreCountLayer = new ExtasyCountLayer(kag, kag.fore.base);
		backCountLayer = new ExtasyCountLayer(kag, kag.fore.base);

		realign(); // �Ĕz�u

		setObjProp(foreButtons, 'visible', foreSeen = false);
		setObjProp(backButtons, 'visible', backSeen = false);
		foreBase.visible = false;
		backBase.visible = false;
			// ��\����
	}

	function finalize()
	{
		// �{�^���𖳌���
		for(var i = 0; i < foreButtons.count; i++)
			invalidate foreButtons[i];
		for(var i = 0; i < backButtons.count; i++)
			invalidate backButtons[i];

		super.finalize(...);
	}

	function setObjProp(array, member, value)
	{
		// array �̊e�����o�̃v���p�e�B�̐ݒ�
		for(var i = array.count - 1; i >= 0; i--)
			array[i][member] = value;

//		if(member=="visible" && value==true){
//			if(kag.nowExistCutin==false) array[7][member] = false;
//		}

	}

	function createButtons(parent, array)
	{
		// parent ��e���C���Ƃ��ă{�^�����쐬���Aarray �ɓo�^����
		// �{�^���͕\��ʂƗ���ʂ̗����ɑ΂��č쐬�����̂Œ���

		// ���{�^���𑝂₵������я���ς����肷��ꍇ��
		// f.sysbtnimgs �Ŏw�肷��e�摜�t�@�C�����̏��Ԃ�
		// ������ƑΉ������Ƃ��Ȃ��Ɩ��Ȃ��ƂɂȂ�܃X

		// �{�^���p�摜��ǂݍ���
		var obj;

		// �{�^�� 0 (�Z�[�u)
		array.add(obj = new SystemButtonLayer(kag, parent, onSaveButtonClick));
		obj.loadImages(f.sysbtnimgs[btnSave]);
		obj.hint = "Save";

		// �{�^�� 1 (���[�h)
		array.add(obj = new SystemButtonLayer(kag, parent, onLoadButtonClick));
		obj.loadImages(f.sysbtnimgs[btnLoad]);
		obj.hint = "Load";

		// �{�^�� 2 (���ݒ�)
		array.add(obj = new SystemButtonLayer(kag, parent, onMenuButtonClick));
		obj.loadImages(f.sysbtnimgs[btnConfig]);
		obj.hint = "Configuration";

		// �{�^�� 3 (�������)
		array.add(obj = new SystemButtonLayer(kag, parent, kag.onShowHistoryMenuItemClick));
		obj.loadImages(f.sysbtnimgs[btnLog]);
		obj.hint = "Message History";

		// �{�^�� 4 (���s�[�g�Đ�)
		array.add(obj = new SystemButtonLayer(kag, parent, onRepeatButtonClick));
		obj.loadImages(f.sysbtnimgs[btnRepeat]);
		obj.hint = "Repeat Voice";

		// �{�^�� 5 (�I�[�g���[�h)
		array.add(obj = new SystemButtonLayer(kag, parent, kag.onAutoModeMenuItemClick));
		obj.loadImages(f.sysbtnimgs[btnAuto]);
		obj.hint = "Auto Mode";

		// �{�^�� 6 (�X�L�b�v)
		array.add(obj = new SystemButtonLayer(kag, parent, onSkipButtonClick));
		obj.loadImages(f.sysbtnimgs[btnSkip]);
		obj.hint = "Skip Mode";

		// �{�^�� 7 (�E�B���h�E�ړ�)
		array.add(obj = new SystemButtonLayer(kag, parent, onWindowMoveButtonClick));
		obj.loadImages(f.sysbtnimgs[btnWinUpDown]);
		obj.hint = "Move Window";

		// �{�^�� 8 (�Ⓒ�܂ł̃J�E���g�̕\���^��\��")
		array.add(obj = new SystemButtonLayer(kag, parent, onExtasyCountClick));
		obj.loadImages(f.sysbtnimgs[btnECount]);
		obj.hint = "Hide/Display Orgasm Countdown";

	}

	function realign()
	{
		// �{�^���̍Ĕz�u
		var count;
		var xpos = [748,802,856,910,964,1018,1072,1146,1126];
		var ypos = [748,748,748,748,748,748,748,748,748];

		count = foreButtons.count;
		for(var i = 0; i < count; i++)
		{
			var obj;

			obj = backButtons[i];
			obj.setPos(xpos[i], ypos[i]);
			obj.absolute = 2000000-3;
				// �d�ˍ��킹�����̓��b�Z�[�W����������

			obj = foreButtons[i];
			obj.setPos(xpos[i], ypos[i]);
			obj.absolute = 2000000-3;

		}

	}

	function onSaveButtonClick()
	{
		// �Z�[�u �{�^���������ꂽ
		f.rclickmode = 2;
		kag.callExtraConductor('save_load.ks','*rclick');

	}

	function onLoadButtonClick()
	{
		// ���[�h �{�^���������ꂽ
		f.rclickmode = 1;
		kag.callExtraConductor('save_load.ks','*rclick');
	}

	function onRepeatButtonClick()
	{
		// ���s�[�g �{�^���������ꂽ

		if(f.lastVoice != ''){
			if(+f.voicePlayBuf==2){
				kag.se[2].stop();
				kag.se[3].stop();
				kag.se[4].stop();
				kag.se[5].stop();
			}else if(+f.voicePlayBuf==5){
				kag.se[2].stop();
				kag.se[3].stop();
				kag.se[5].stop();
				kag.se[6].stop();
			}
			kag.se[f.voicePlayBuf].play(%[storage:f.lastVoice]);
		}
	}

	function onMenuButtonClick()
	{
		// �R���t�B�O�{�^���������ꂽ�� ks �t�@�C�����Ăяo��
		f.rclickmode = 0;
		kag.callExtraConductor(f.sysfile);
	}

	function onDisplayButtonClick(){
		// �f�B�X�v���C�؂�ւ��{�^���������ꂽ

		if(kag.fullScreened){
			kag.onWindowedMenuItemClick();
		}else{
			kag.onFullScreenMenuItemClick();
		}
	}

	function onSkipButtonClick(){

		if(f.�I�����\����==1)return;

		kag.onPrimaryClick();

		if((!kag.getCurrentRead())&&(sf.skipOnlyAlreadyRead)&&(!f.nowExecKaisou)) return;

		kag.skipModeByButton = 1;
		kag.skipMode = 4;
		kag.actualChSpeed = 0;

		skipButtonImageSetExecuting();

	}

	function skipButtonImageSetExecuting(){
		var d = new Dictionary();
		d.imgset = btnSkip;
		d.storage = "sysBtn_skip2";
		global.systembutton_object.setOptions(d);
	}

	function skipButtonImageReset(){
		var d = new Dictionary();
		d.imgset = btnSkip;
		d.storage = "sysBtn_skip";
		global.systembutton_object.setOptions(d);
	}

	function autoButtonImageSetExecuting(){
		var d = new Dictionary();
		d.imgset = btnAuto;
		d.storage = "sysBtn_auto2";
		global.systembutton_object.setOptions(d);
	}

	function autoButtonImageReset(){
		var d = new Dictionary();
		d.imgset = btnAuto;
		d.storage = "sysBtn_auto";
		global.systembutton_object.setOptions(d);
	}

	function winUpDownBttonSetNormal(){
		var d = new Dictionary();
		d.imgset = btnWinUpDown;
		d.storage = "sysBtn_winup";
		global.systembutton_object.setOptions(d);
	}

	function winUpDownBttonSetHigh(){
		var d = new Dictionary();
		d.imgset = btnWinUpDown;
		d.storage = "sysBtn_windown";
		global.systembutton_object.setOptions(d);
	}

	function onWindowMoveButtonClick(){

		if(f.windowTopNow==0){

			kag.fore.messages[0].top = 8;
			kag.back.messages[0].top = 8;
			kag.fore.messages[1].top = 8;
			kag.back.messages[1].top = 8;
			kag.fore.messages[2].top = 19;
			kag.back.messages[2].top = 19;
			realign();
			foreButtons[btnWinUpDown].loadImages("sysbtn_windown");
			backButtons[btnWinUpDown].loadImages("sysbtn_windown");
			
			f.windowTopNow = 1;
		}else{

			kag.fore.messages[0].top = 574;
			kag.back.messages[0].top = 574;
			kag.fore.messages[1].top = 574;
			kag.back.messages[1].top = 574;
			kag.fore.messages[2].top = 585;
			kag.back.messages[2].top = 585;
			realign();
			foreButtons[btnWinUpDown].loadImages("sysbtn_winup");
			backButtons[btnWinUpDown].loadImages("sysbtn_winup");
			f.windowTopNow = 0;
		}


	}

	function onCutinButtonClick(){

		if(kag.nowShowCutin){
			kag.fore.layers[3].visible = false;
			kag.nowShowCutin = false;
		}else{
			kag.fore.layers[3].visible = true;
			kag.nowShowCutin = true;
		}
		showCutinButton();
	}

	function showCutinButton(){

		if(kag.nowShowCutin){
			foreButtons[btnCutin].loadImages("sysbtn_cutinOff");
			backButtons[btnCutin].loadImages("sysbtn_cutinOff");
		}else{
			foreButtons[btnCutin].loadImages("sysbtn_cutinOn");
			backButtons[btnCutin].loadImages("sysbtn_cutinOn");
		}
		foreButtons[btnCutin].visible = true;
		backButtons[btnCutin].visible = true;
	}

	function hideCutinButton(){

		foreButtons[btnCutin].visible = false;
		backButtons[btnCutin].visible = false;

	}

	function onExtasyCountClick(){
		kag.foreExtasyCountLayer.visible = !kag.foreExtasyCountLayer.visible;
		kag.backExtasyCountLayer.visible = !kag.backExtasyCountLayer.visible;
	}

	function setOptions(elm)
	{
		// �I�v�V������ݒ�
		if(elm.forevisible !== void){
			setObjProp(foreButtons, 'visible', foreSeen = +elm.forevisible);
			foreBase.visible = +elm.forevisible;
		}
		if(elm.backvisible !== void){
			setObjProp(backButtons, 'visible', backSeen = +elm.backvisible);
			backBase.visible = +elm.backvisible;
		}

		if(elm.align!== void){
			realign();
		}

//--

		// �摜�̍����ւ�
		if(elm.imgset !== void){
			var obj;
			if(elm.imgset == -1)
			{
				// �x�����[�h�����Ƃ��^�ꊇ�ύX�̂Ƃ�
				for(var i = 0; i < backButtons.count; i++)
				{
					obj = backButtons[i];
					obj.loadImages(f.sysbtnimgs[i]);
				}
				for(var i = 0; i < foreButtons.count; i++)
				{
					obj = foreButtons[i];
					obj.loadImages(f.sysbtnimgs[i]);
				}
				realign();
			}
			else
			{
				// �ʏ�
				f.sysbtnimgs[elm.imgset] = elm.storage;
				obj = backButtons[elm.imgset];
				obj.loadImages(elm.storage);
				obj = foreButtons[elm.imgset];
				obj.loadImages(elm.storage);
			}
		}
	}

	function onStore(f, elm)
	{
		// �x��ۑ�����Ƃ�
		var dic = f.systemButtons = %[];
			// f.systemButtons �Ɏ����z����쐬
		dic.foreVisible = foreSeen;
		dic.backVisible = backSeen;
			// �e���������z��ɋL�^
	}

	function onRestore(f, clear, elm)
	{
		// �x��ǂݏo���Ƃ�
		var dic = f.systemButtons;
		if(dic === void)
		{
			// systemButtons �̏�񂪞x�ɕۑ�����Ă��Ȃ�
			setObjProp(foreButtons, 'visible', foreSeen = false);
			setObjProp(backButtons, 'visible', backSeen = false);
			foreBase.visible = false;
			backBase.visible = false;
		}
		else
		{
			// systemButtons �̏�񂪞x�ɕۑ�����Ă���
			setOptions(%[
				forevisible : dic.foreVisible,
				backvisible : dic.backVisible,
				left : dic.left, top : dic.top,
				imgset : -1]);
				// �I�v�V������ݒ�
			foreBase.visible = dic.foreVisible;
			backBase.visible = dic.backVisible;
		}
	}

	function onStableStateChanged(stable)
	{
		// �u����v( s l p �̊e�^�O�Œ�~�� ) ���A
		// �u���s���v( ����ȊO ) ���̏�Ԃ��ς�����Ƃ��ɌĂ΂��

		// ���s���͊e�{�^���𖳌��ɂ���
		setObjProp(foreButtons, 'enabled', stable);
		setObjProp(backButtons, 'enabled', stable);
	}

	function onMessageHiddenStateChanged(hidden)
	{

		// ���b�Z�[�W���C�������[�U�̑���ɂ���ĉB�����Ƃ��A
		// �����Ƃ��ɌĂ΂��
		// ���b�Z�[�W���C���ƂƂ��ɕ\��/��\����؂�ւ������Ƃ���
		// �����Őݒ肷��
		if(hidden)
		{
			setObjProp(foreButtons, 'visible', false);
			setObjProp(backButtons, 'visible', false);
			foreBase.visible = false;
			backBase.visible = false;
		}
		else
		{
			// foreSeen, backSeen �́A
			// �{�^�����{���\�����ł��������ǂ������L�^���Ă���
			setObjProp(foreButtons, 'visible', foreSeen);
			setObjProp(backButtons, 'visible', backSeen);
			foreBase.visible = foreSeen;
			backBase.visible = backSeen;
		}
	}

	function onCopyLayer(toback)
	{
		// ���C���̕\�������̏��̃R�s�[

		// backlay �^�O��g�����W�V�����̏I�����ɌĂ΂��

		// �����Ń��C���Ɋւ��ăR�s�[���ׂ��Ȃ̂�
		// �\��/��\���̏�񂾂�

		if(toback)
		{
			// �\����
			setObjProp(backButtons, 'visible', foreButtons[0].visible);
			backButtons[btnWinUpDown].visible = foreButtons[btnWinUpDown].visible;
			backSeen = foreSeen;
			backBase.visible= foreBase.visible;
		}
		else
		{
			// �����\
			setObjProp(foreButtons, 'visible', backButtons[0].visible);
			foreButtons[btnWinUpDown].visible = backButtons[btnWinUpDown].visible;
			foreSeen = backSeen;
			foreBase.visible= backBase.visible;
		}
	}

	function onExchangeForeBack()
	{
		// ���ƕ\�̊Ǘ���������

		// children = true �̃g�����W�V�����ł́A
		// �g�����W�V�����I�����ɕ\��ʂƗ���ʂ̃��C���\����
		// �����������ւ��̂ŁA����܂ŕ\��ʂ��Ǝv���Ă���
		// ���̂�����ʂɁA����ʂ��Ǝv���Ă������̂��\��ʂ�
		// �Ȃ��Ă��܂�
		// �����̃^�C�~���O�ł��̏������ւ���΁A
		// �����͐����Ȃ��ōς�

		// �����ŕ\��ʁA����ʂ̃��C���Ɋւ��ĊǗ����ׂ��Ȃ̂�
		// foreButtons �� backButton �A
		// foreSeen �� backSeen �̕ϐ�����
		var tmp;

		tmp = backButtons;
		backButtons = foreButtons;
		foreButtons = tmp;

		tmp = backSeen;
		backSeen = foreSeen;
		foreSeen = tmp;

		tmp = backBase;
		backBase = foreBase;
		foreBase = tmp;

	}
}

kag.addPlugin(global.systembutton_object = new SystemButtonPlugin(kag));
	// �v���O�C���I�u�W�F�N�g���쐬���A�o�^����

[endscript]
[endif]
;
; �}�N���̓o�^
[macro name="sysbtopt"]
[eval exp="f.sysbtnset = mp.vertical" cond="mp.vertical!==void"]
[eval exp="systembutton_object.setOptions(mp)"]
; mp ���}�N���ɓn���ꂽ���������������z��I�u�W�F�N�g
[endmacro]
[return]



