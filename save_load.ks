[if exp="typeof(global.rclickconfig_object) == 'undefined'"]
[iscript]

// Config.tjs の設定を以下のようにする必要あり
//  freeSaveDataMode = false
//  saveThumbnail = true
//  numBookMarks = 40

class RButtonLayer extends ButtonLayer
	// parent に onClick イベントを送るようにしたボタンレイヤ
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
	// parent に onClick イベント でなく onMouseButton でイベントを送るようにしたボタンレイヤ
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
	// 栞一個一個に対応するレイヤ
	var num; // 栞番号
	var bgColor = 0x00ffffff; // 背景色 ( 0xAARRGGBB )
	var focusedColor = 0xffff1313;

	var commentEdit; // コメントのエディット
	var protectCheckBox; // 「データ保護」チェックボックス

	function SaveDataItemLayer(window, parent, num)
	{
		super.KAGLayer(window, parent);

		this.num = num;

		setImageSize(376, 104); // サイズ
		face = dfBoth;

		var str = kag.bookMarkNames[num];
		loadImages("saveload_frame");
		setSize(imageWidth\2, imageHeight);
		imageLeft = 0;

		hitType = htMask;
		hitThreshold = 0; // 全域不透過

		cursor = kag.cursorPointed;

		focusable = true; // フォーカスは受け取れる

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

		// 番号を表示
		var str = (num<9)?"0" + string (num + 1) : string (num + 1);
		font.height = 20;
		var ty = font.getTextHeight(str);
		var tx = font.getTextWidth(str);
		drawText(26        - tx , 6, str, 0xffffff,255,true,255,0,2,2,2);
		drawText(26 +width - tx , 6, str, 0xffffff,255,true,255,0,2,2,2);

		// サムネイル画像を読み込む
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

		// 栞の保存名を表示
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
		// 日付を表示
		if(kag.bookMarkDates[num] == '')
			str = "Save Date: --/--/---- --:--", commentEdit.enabled = false;
		else
			str = "Save Date: " + kag.bookMarkDates[num];

		drawText(202        , 52, str, 0xffffff);
		drawText(202 + width, 52, str, 0xffffff);

		// コメント : 
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
		// 状態をシステム変数に記録する
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

		// update() が呼ばれた後、描画の直前に呼ばれる
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
		// フォーカスを得た
		super.onFocus(...);
		update();
	}

	function onBlur()
	{
		// フォーカスを失った
		super.onBlur(...);
		update();
	}

	function onHitTest(x, y, process)
	{
		if(process)
		{
			// 右ボタンが押されていたときにイベントを透過
			if(System.getKeyState(VK_RBUTTON))
				super.onHitTest(x, y, false);
			else
				super.onHitTest(x, y, true);
		}
	}

	function onKeyDown(key, shift, process)
	{
		// キーが押された
		if((process && key == VK_RETURN || key == VK_SPACE || key == VK_X)&&(shift==0))
		{
			// スペースキーまたはエンターキー
			super.onKeyDown(key, shift, false);
			saveToSystemVariable();
			parent.onLoadOrSave(num);
		}
		else
		{

			if(key == VK_ESCAPE || key == VK_Z || key == VK_NUMPAD0 || key == VK_DELETE){
				parent.onKeyDown(...);
			}else{
				// process が false の場合は処理は行わない
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

class RClickConfigLayer extends Layer // セーブロード画面レイヤ
{
	var saveDataItems;
	var state = -1; // 0 = メインメニュー  1 = ロード画面 2 = セーブ画面
	var owner; // RClickConfigPlugin オブジェクトへの参照
	var currentPage = kag.saveLoadPage; // セーブデータ選択中に表示中のページ
	var returnButton; // もどる ボタン
	var pageButtons; // セーブデータのページボタン

	var pageNum = 5; //セーブページ数

	var nextButton;
	var backButton;
	var pageImage = ["saveLoad_page01","saveLoad_page02","saveLoad_page03","saveLoad_page04","saveLoad_page05"];

	var pageLayer;

	function RClickConfigLayer(win, par, owner)
	{
		super.Layer(win, par);
		this.owner = owner;

		// レイヤの状態を初期化
		setImageSize(kag.scWidth, kag.scHeight);
		clearBase();
		setSizeToImageSize();
		setPos(0, 0);
		hitType = htMask;
		hitThreshold = 0; // 全域不透過

		pageLayer = new global.Layer(win,this);
		pageLayer.left = 171;
		pageLayer.top = 0;
		pageLayer.visible = false;
		pageLayer.hitThreshold = 256; // 全域透過

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
		// 下地を塗り直す
		fillRect(0, 0, imageWidth, imageHeight, 0xc0000000);
	}


	function clearSaveDataItems()
	{
		// セーブデータ表示のクリア
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
		// セーブデータの表示
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
		// ページを変更するとき

		loadPageImage(newpage);
		currentPage = newpage;
		makeSaveDataItems();

	}

	function makeButtons()
	{
		// 戻る ボタンを作成
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

		// Next ボタンを作成
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

		// back ボタンを作成
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
		// 「ロード」メニュー
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
		// 「セーブ」メニュー
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
		// 画面上のボタン類をすべて非表示にするか、無効化する
		clearBase();

		returnButton.visible = false if returnButton !== void;
		nextButton.visible = false if nextButton !== void;
		backButton.visible = false if backButton !== void;
		pageLayer.visible = false if pageLayer !== void;

		clearSaveDataItems();
	}

	function saveToSystemVariable()
	{
		// システム変数にデータを保存する必要があるとき
		if(saveDataItems !== void)
		{
			for(var i = 0; i < saveDataItems.count; i++)
				saveDataItems[i].saveToSystemVariable();
			kag.setBookMarkMenuCaptions();
		}
	}

	function onButtonClick(sender)
	{

		// ボタンが押されたとき
		switch(sender)
		{

		kag.se[9].play(%[storage:"sys_decide"]);

		case returnButton: // 「戻る」ボタン
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
		// 番号 num をセーブまたはロード
		if(state == 1)
		{
			// ロード
			if(kag.loadBookMarkWithAsk(num)){
				kag.saveLoadPage = currentPage;
				kag.saveLoadNum = num;
			}
		}
		else
		{
			// セーブ
			if(kag.saveBookMarkWithAsk(num))
			{

				kag.saveLoadPage = currentPage;
				kag.saveLoadNum = num;
				clearSaveDataItems();
				if(kag.scflags.bookMarkComments !== void)

					kag.scflags.bookMarkComments[num] = ''; // コメントは一応クリア
//					kag.scflags.bookMarkComments[num] = f.chaptertitle;

				if(kag.scflags.bookMarkChapterName !== void)
					kag.scflags.bookMarkChapterName[num] = f.chaptertitle;


				makeSaveDataItems(); // 表示を更新

				// 裏画面に変更後の情報をコピー
				owner.backCopyConfig();
			}
		}

	}

	function show()
	{
		// レイヤを表示する
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
		// レイヤを隠す
		if (opt) removeMode(); // 表画面のモーダルを解除
		visible = false;
		clear();
		changePage(currentPage);
		state = -1;
	}

	function returnMenu()
	{
		// 右クリック, ESC キー,「戻る」ボタンでの戻り先判定
		owner.backCopyConfig();
		owner.onConfigClose();
	}

	function onKeyDown(key)
	{
		super.onKeyDown(...);
		if(key == VK_ESCAPE || key == VK_Z || key == VK_NUMPAD0 || key == VK_DELETE)
			owner.onConfigClose(); // ESC キーが押されたらレイヤを隠す
	}

	function onMouseDown(x, y, button, shift)
	{
		if(button == mbRight)
		{
			// 右クリックされたらこのレイヤを隠すように
			owner.onConfigClose();
		}
	}
}

class RClickConfigPlugin extends KAGPlugin // 「右クリック設定」プラグインクラス
{
	var window; // ウィンドウへの参照

	var foreConfig; // 設定レイヤ（表画面）
	var backConfig; // 設定レイヤ（裏画面）

	function RClickConfigPlugin(window)
	{
		// RClickPlugin コンストラクタ
		super.KAGPlugin(); // スーパークラスのコンストラクタを呼ぶ
		this.window = window; // window への参照を保存する
	}

	function finalize()
	{
		invalidate foreConfig if foreConfig !== void;
		invalidate backConfig if backConfig !== void;
		super.finalize(...);
	}

	function show()
	{
		// 表画面と裏画面に設定レイヤを作成
		if(foreConfig === void)
			foreConfig = new RClickConfigLayer(window, kag.fore.base, this);
		if(backConfig === void)
			backConfig = new RClickConfigLayer(window, kag.back.base, this);

		// 重ね合わせ順序はメッセージ履歴よりも奥
		// ※雪プラグインとか使っている場合は
		// 　重ならないように指定数値を調整したほうが良いかも
		foreConfig.absolute = 2000000-1;
		backConfig.absolute = foreConfig.absolute;

		foreConfig.currentPage = kag.saveLoadPage;
		foreConfig.changePage(foreConfig.currentPage);
		backConfig.currentPage = kag.saveLoadPage;
		backConfig.changePage(backConfig.currentPage);


		// まだ非表示にしておく
		foreConfig.visible = false;
		backConfig.visible = false;

		if(f.rclickmode == 1)
		{
			// 直接「ロード」メニューを呼ぶ
			foreConfig.makeLoadMenu();
			backConfig.makeLoadMenu();
		}
		else if(f.rclickmode == 2)
		{
			// 直接「セーブ」メニューを呼ぶ
			foreConfig.makeSaveMenu();
			backConfig.makeSaveMenu();
		}
	}

	function setConfigTrans(opt)
	{
		// 画面を表示するか非表示にするかの設定
		backConfig.visible = opt;

		foreConfig.removeMode(); // 表画面のモーダルを解除
	}

	function backCopyConfig()
	{
		// 表画面のセーブデータの状態を保存
		foreConfig.saveToSystemVariable();

		// 必要な表画面の情報を裏画面にコピーする
		backConfig.visible = foreConfig.visible;
		backConfig.state = foreConfig.state;
		backConfig.currentPage = foreConfig.currentPage;

		var fc = foreConfig.saveDataItems;
		var bc = backConfig.saveDataItems;

		// 裏画面を更新する
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
		// 必要な裏画面の情報を表画面にコピーする
		foreConfig.visible = backConfig.visible;
		foreConfig.state = backConfig.state;
		foreConfig.currentPage = backConfig.currentPage;

		var fc = foreConfig.saveDataItems;
		var bc = backConfig.saveDataItems;

		// 表画面を更新する
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

		// 設定レイヤを閉じる準備
		f.rclickmode = 0; // 念のため呼び出しフラグを初期化
		setConfigTrans(false); // 裏画面を非表示
		window.trigger('config'); // 'config'トリガを発動する
	}

	function closeConfig()
	{
		// 設定レイヤを完全に閉じる
		foreConfig.hide(true)  if foreConfig !== void;
		backConfig.hide(false) if backConfig !== void;
	}

	// 以下、KAGPlugin のメソッドのオーバーライド

	function onStore(f, elm)
	{
	}

	function onRestore(f, clear, elm)
	{
		// 栞を読み出すとき
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
		// レイヤの表←→裏の情報のコピー
		// backlay タグやトランジションの終了時に呼ばれる
		if(toback)
			if(foreConfig !== void) backCopyConfig(); // 表→裏
		else
			if(backConfig !== void) foreCopyConfig(); // 裏→表
	}

	function onExchangeForeBack()
	{
		// 裏と表の管理情報を交換
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
		// セーブデータのコメントはこのタイミングでも scflags に
		// 保存しなければならない
		if(foreConfig !== void) foreConfig.saveToSystemVariable();
	}
}

kag.addPlugin(global.rclickconfig_object = new RClickConfigPlugin(kag));

[endscript]
[endif]
[return]


*rclick
; 右クリックで呼ばれるサブルーチン
; 直接「ロード」や「セーブ」の画面を呼び出す場合もここを呼ぶ
[locklink]
[locksnapshot]

; 設定レイヤを作成
[eval exp="rclickconfig_object.show()"]
[backlay]

[eval exp="f.enableWheel = 0"]


*rclick_2

; トランジションで表示させる
[eval exp="rclickconfig_object.setConfigTrans(true)"]
[trans method=crossfade time=200]
[wt canskip=false]


*rclick_3

; 表画面の表示設定
[eval exp="rclickconfig_object.foreConfig.show()"]

; 'config'トリガが発動されるまで待機
[waittrig name="config"]

; トランジションで閉じる
[trans method=crossfade time=200]
[wt canskip=false]

; 設定レイヤの中身を消去
[eval exp="rclickconfig_object.closeConfig()"]

[eval exp="f.enableWheel = 1"]

[unlocksnapshot]
[unlocklink]
[return]


*hidemessage
; メッセージを消すときに呼ばれる
[hidemessage]
;---
; 設定レイヤを再表示
[eval exp="rclickconfig_object.show()"]
;---
[jump target=*rclick_3]


