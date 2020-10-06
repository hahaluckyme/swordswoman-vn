;コンフィグ画面のスクリプト
[eval exp="f.sysfile = 'configmenu.ks'"]

;システムボタン用の画像ファイル指定（拡張子は省略可）
[eval exp="f.sysbtnimgs  = [ 'sysbtn_save', 'sysbtn_load', 'sysbtn_config', 'sysbtn_log', 'sysbtn_repeat', 'sysbtn_auto', 'sysbtn_skip', 'sysbtn_winup', 'sysbtn_ecount']"]

[if exp="typeof(global.systembutton_object) == 'undefined'"]
[iscript]

class SystemButtonLayer extends ButtonLayer
	// クリックされたときに実行する関数を指定できるボタンレイヤ
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

	var foreSeen = false; // 表画面のボタンが可視か
	var backSeen = false; // 裏画面のボタンが可視か

	var foreButtons = []; // 表画面のボタンの配列
	var backButtons = []; // 裏画面のボタンの配列

	var foreBase;
	var backBase;

	var foreCountLayer;
	var backCountLayer;

	var buf;

	function SystemButtonPlugin()
	{
		// SystemButtonPlugin コンストラクタ

		createButtons(kag.fore.base, foreButtons);
		createButtons(kag.back.base, backButtons);
			// ボタンを作成

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

		realign(); // 再配置

		setObjProp(foreButtons, 'visible', foreSeen = false);
		setObjProp(backButtons, 'visible', backSeen = false);
		foreBase.visible = false;
		backBase.visible = false;
			// 非表示に
	}

	function finalize()
	{
		// ボタンを無効化
		for(var i = 0; i < foreButtons.count; i++)
			invalidate foreButtons[i];
		for(var i = 0; i < backButtons.count; i++)
			invalidate backButtons[i];

		super.finalize(...);
	}

	function setObjProp(array, member, value)
	{
		// array の各メンバのプロパティの設定
		for(var i = array.count - 1; i >= 0; i--)
			array[i][member] = value;

//		if(member=="visible" && value==true){
//			if(kag.nowExistCutin==false) array[7][member] = false;
//		}

	}

	function createButtons(parent, array)
	{
		// parent を親レイヤとしてボタンを作成し、array に登録する
		// ボタンは表画面と裏画面の両方に対して作成されるので注意

		// ※ボタンを増やしたり並び順を変えたりする場合は
		// f.sysbtnimgs で指定する各画像ファイル名の順番も
		// きちんと対応させとかないと妙なことになりまス

		// ボタン用画像を読み込む
		var obj;

		// ボタン 0 (セーブ)
		array.add(obj = new SystemButtonLayer(kag, parent, onSaveButtonClick));
		obj.loadImages(f.sysbtnimgs[btnSave]);
		obj.hint = "Save";

		// ボタン 1 (ロード)
		array.add(obj = new SystemButtonLayer(kag, parent, onLoadButtonClick));
		obj.loadImages(f.sysbtnimgs[btnLoad]);
		obj.hint = "Load";

		// ボタン 2 (環境設定)
		array.add(obj = new SystemButtonLayer(kag, parent, onMenuButtonClick));
		obj.loadImages(f.sysbtnimgs[btnConfig]);
		obj.hint = "Configuration";

		// ボタン 3 (履歴画面)
		array.add(obj = new SystemButtonLayer(kag, parent, kag.onShowHistoryMenuItemClick));
		obj.loadImages(f.sysbtnimgs[btnLog]);
		obj.hint = "Message History";

		// ボタン 4 (リピート再生)
		array.add(obj = new SystemButtonLayer(kag, parent, onRepeatButtonClick));
		obj.loadImages(f.sysbtnimgs[btnRepeat]);
		obj.hint = "Repeat Voice";

		// ボタン 5 (オートモード)
		array.add(obj = new SystemButtonLayer(kag, parent, kag.onAutoModeMenuItemClick));
		obj.loadImages(f.sysbtnimgs[btnAuto]);
		obj.hint = "Auto Mode";

		// ボタン 6 (スキップ)
		array.add(obj = new SystemButtonLayer(kag, parent, onSkipButtonClick));
		obj.loadImages(f.sysbtnimgs[btnSkip]);
		obj.hint = "Skip Mode";

		// ボタン 7 (ウィンドウ移動)
		array.add(obj = new SystemButtonLayer(kag, parent, onWindowMoveButtonClick));
		obj.loadImages(f.sysbtnimgs[btnWinUpDown]);
		obj.hint = "Move Window";

		// ボタン 8 (絶頂までのカウントの表示／非表示")
		array.add(obj = new SystemButtonLayer(kag, parent, onExtasyCountClick));
		obj.loadImages(f.sysbtnimgs[btnECount]);
		obj.hint = "Hide/Display Orgasm Countdown";

	}

	function realign()
	{
		// ボタンの再配置
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
				// 重ね合わせ順序はメッセージ履歴よりも奥

			obj = foreButtons[i];
			obj.setPos(xpos[i], ypos[i]);
			obj.absolute = 2000000-3;

		}

	}

	function onSaveButtonClick()
	{
		// セーブ ボタンが押された
		f.rclickmode = 2;
		kag.callExtraConductor('save_load.ks','*rclick');

	}

	function onLoadButtonClick()
	{
		// ロード ボタンが押された
		f.rclickmode = 1;
		kag.callExtraConductor('save_load.ks','*rclick');
	}

	function onRepeatButtonClick()
	{
		// リピート ボタンが押された

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
		// コンフィグボタンが押されたら ks ファイルを呼び出し
		f.rclickmode = 0;
		kag.callExtraConductor(f.sysfile);
	}

	function onDisplayButtonClick(){
		// ディスプレイ切り替えボタンが押された

		if(kag.fullScreened){
			kag.onWindowedMenuItemClick();
		}else{
			kag.onFullScreenMenuItemClick();
		}
	}

	function onSkipButtonClick(){

		if(f.選択肢表示中==1)return;

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
		// オプションを設定
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

		// 画像の差し替え
		if(elm.imgset !== void){
			var obj;
			if(elm.imgset == -1)
			{
				// 栞をロードしたとき／一括変更のとき
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
				// 通常
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
		// 栞を保存するとき
		var dic = f.systemButtons = %[];
			// f.systemButtons に辞書配列を作成
		dic.foreVisible = foreSeen;
		dic.backVisible = backSeen;
			// 各情報を辞書配列に記録
	}

	function onRestore(f, clear, elm)
	{
		// 栞を読み出すとき
		var dic = f.systemButtons;
		if(dic === void)
		{
			// systemButtons の情報が栞に保存されていない
			setObjProp(foreButtons, 'visible', foreSeen = false);
			setObjProp(backButtons, 'visible', backSeen = false);
			foreBase.visible = false;
			backBase.visible = false;
		}
		else
		{
			// systemButtons の情報が栞に保存されている
			setOptions(%[
				forevisible : dic.foreVisible,
				backvisible : dic.backVisible,
				left : dic.left, top : dic.top,
				imgset : -1]);
				// オプションを設定
			foreBase.visible = dic.foreVisible;
			backBase.visible = dic.backVisible;
		}
	}

	function onStableStateChanged(stable)
	{
		// 「安定」( s l p の各タグで停止中 ) か、
		// 「走行中」( それ以外 ) かの状態が変わったときに呼ばれる

		// 走行中は各ボタンを無効にする
		setObjProp(foreButtons, 'enabled', stable);
		setObjProp(backButtons, 'enabled', stable);
	}

	function onMessageHiddenStateChanged(hidden)
	{

		// メッセージレイヤがユーザの操作によって隠されるとき、
		// 現れるときに呼ばれる
		// メッセージレイヤとともに表示/非表示を切り替えたいときは
		// ここで設定する
		if(hidden)
		{
			setObjProp(foreButtons, 'visible', false);
			setObjProp(backButtons, 'visible', false);
			foreBase.visible = false;
			backBase.visible = false;
		}
		else
		{
			// foreSeen, backSeen は、
			// ボタンが本来表示中であったかどうかを記録している
			setObjProp(foreButtons, 'visible', foreSeen);
			setObjProp(backButtons, 'visible', backSeen);
			foreBase.visible = foreSeen;
			backBase.visible = backSeen;
		}
	}

	function onCopyLayer(toback)
	{
		// レイヤの表←→裏の情報のコピー

		// backlay タグやトランジションの終了時に呼ばれる

		// ここでレイヤに関してコピーすべきなのは
		// 表示/非表示の情報だけ

		if(toback)
		{
			// 表→裏
			setObjProp(backButtons, 'visible', foreButtons[0].visible);
			backButtons[btnWinUpDown].visible = foreButtons[btnWinUpDown].visible;
			backSeen = foreSeen;
			backBase.visible= foreBase.visible;
		}
		else
		{
			// 裏→表
			setObjProp(foreButtons, 'visible', backButtons[0].visible);
			foreButtons[btnWinUpDown].visible = backButtons[btnWinUpDown].visible;
			foreSeen = backSeen;
			foreBase.visible= backBase.visible;
		}
	}

	function onExchangeForeBack()
	{
		// 裏と表の管理情報を交換

		// children = true のトランジションでは、
		// トランジション終了時に表画面と裏画面のレイヤ構造が
		// そっくり入れ替わるので、それまで表画面だと思っていた
		// ものが裏画面に、裏画面だと思っていたものが表画面に
		// なってしまう
		// ここのタイミングでその情報を入れ替えれば、
		// 矛盾は生じないで済む

		// ここで表画面、裏画面のレイヤに関して管理すべきなのは
		// foreButtons と backButton 、
		// foreSeen と backSeen の変数だけ
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
	// プラグインオブジェクトを作成し、登録する

[endscript]
[endif]
;
; マクロの登録
[macro name="sysbtopt"]
[eval exp="f.sysbtnset = mp.vertical" cond="mp.vertical!==void"]
[eval exp="systembutton_object.setOptions(mp)"]
; mp がマクロに渡された属性を示す辞書配列オブジェクト
[endmacro]
[return]



