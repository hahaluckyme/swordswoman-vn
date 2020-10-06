; 二重読み込みを防止
[return cond="typeof(.ExtHistoryLayer) != 'undefined'"]

; ExtHistoryLayer.ks (2011/03/14) by KAICHO ver 1.30
; 利用・改変・再配布はお好きにどうぞ。連絡も不要。商用に組み込もうが販売
; しようが好き勝手に。そんな需要があるのか知らんけど。
; ご意見ご要望バグ報告は s_naray[at]yahoo[dot]co[dot]jp まで。
; ただし、返事は期待しないこと。
;
; 作成にあたり、
;// ExHistoryLayer.ks ( 2004/07/04 ) releaced 1.01
;// メッセージ履歴拡張プラグイン by よかひげ / 改変配布自由自在
; をモノスゴ参考にさせて頂きました。御礼申し上げます。
;
; 使用方法
; ExtHistoryLayer.ks、RenameKAGTag.ks、可能なら eruby.ks を用意し、
; first.ks かどこかで [call storage=ExtHistoryLayer.ks] するだけ。

;色々書き換えた　byＲ．Ｙ．Ｏ．

[call storage=TJSFunctions.ks]

[iscript]


// parent に onClick イベントを送るボタンレイヤ
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


// 押しっぱなしにすると、100ms 周期で parent へイベントを 送信するボタン
class RepeatButtonLayer extends ButtonLayer
{
	var timer;
	var graphic;
	var buttonCaptionColor;

	// コンストラクタ
	function RepeatButtonLayer(window, parent, elm)
	{
		if (elm !== void && elm.captionColor !== void)
			buttonCaptionColor = elm.captionColor;
		super.ButtonLayer(window, parent);
		focusable = false;
		timer = new Timer(this, "onMouseDownRepeat");
		timer.interval = 100;
		setOptions(%[visible:true]);
		setOptions(elm);			// ↑デフォルト値
	}

	// デストラクタ
	function finalize()
	{
		invalidate timer;	// 先に invalidate
		super.finalize(...);
	}

	// オプション設定
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

	// 状態更新
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

	// マウスがクリックされた時
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (Butt_mouseDown) {	//ボタンが押されていれば
			parent.onButtonClick(this);
			timer.enabled = true;
		}
	}

	// 繰り返しの時
	function onMouseDownRepeat()
	{
		if (Butt_mouseDown)	// まだボタンが押されていれば繰り返し
			parent.onButtonClick(this);
		else			// 押されてなければ終了
			timer.enabled = false;
	}
}


// スライダーレイヤクラス
// スクロールバーの一部なので、親からwidthまたはheightが変更されることに注意
class Slider extends ButtonLayer
{
	var dragging;
	var clickx, clicky;
	// スクロールバーのグラフィック(上、中、下を組み合わせたもの、
	// 中は幅1dot、最短スクロールバーの幅は上＋下
	var graphic;
	var minheight = 16;	// スクロールバーの最小高さ

	// コンストラクタ
	function Slider(window, parent, elm)
	{
		this.dragging = false;
		focusable     = false;
		super.ButtonLayer(window, parent);
		setOptions(%[visible:true, enabled:true]);
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		setOptions_sub(this, elm);

		if (elm.graphic !== void)
			loadImages(elm.graphic);
	}

	// 指定された画像を読む。一度画像指定されると元に戻せないが…いいか
	function loadImages(graph, key)
	{
		// 誰か Layer ってローカル変数定義してるみたい。
		graphic = new .Layer(window, parent);
		graphic.visible = false;
		graphic.loadImages(graph, key);
		graphic.setImagePos(0, 0);
		graphic.setSizeToImageSize();
		if (parent.verticalView)
			minheight = graphic.width\3-1;	// 1dot = 中央サイズ
		else
			minheight = graphic.height-1;	// 1dot = 中央サイズ
		setSize(width, height);
		Butt_imageLoaded = true;
	}

	// スライダーサイズを指定する
	function setSize(w, h)
	{
		if (!Butt_imageLoaded) {
			super.setSize(w, h);
			return;
		}
		// 画像が読まれてた場合、graphic から画像を作る
		var g = graphic, gw = g.width, gh = g.height;
		if (parent.verticalView) {
			// 縦書きなら横方向に設定
			w = minheight if (w < minheight);
			.KAGLayer.setImageSize(w*3, h);
			.KAGLayer.setSize(w, h);
			// 左側をコピー
			var ww = (gw/3-1)\2;
			copyRect(w*0,0, g,gw/3*0,0,ww,h);
			copyRect(w*1,0, g,gw/3*1,0,ww,h);
			copyRect(w*2,0, g,gw/3*2,0,ww,h);
			// 右側をコピー
			copyRect(w*1-ww,0, g,gw/3*1-ww,0,ww,h);
			copyRect(w*2-ww,0, g,gw/3*2-ww,0,ww,h);
			copyRect(w*3-ww,0, g,gw/3*3-ww,0,ww,h);
			// 中心をコピー
			for (var x = w-ww-1; x >= ww; x--) {
				copyRect(x+w*0,0, g,gw/3*0+ww,0,1,h);
				copyRect(x+w*1,0, g,gw/3*1+ww,0,1,h);
				copyRect(x+w*2,0, g,gw/3*2+ww,0,1,h);
			}
		} else {
			// 横書きなら縦方向に設定
			h = minheight if (h < minheight);
			.KAGLayer.setImageSize(w*3, h);
			.KAGLayer.setSize(w, h);
			copyRect(0,0, g, 0,0,gw,(gh-1)\2);
			for (var y = h-(gh-1)\2-1; y >= (gh-1)\2; y--)
				copyRect(0,y, g,0,(gh-1)\2, gw,1);
			copyRect(0,h-(gh-1)\2, g,0,(gh-1)\2+1, gw,(gh-1)\2);
		}
	}

	// 状態変更を設定
	function updateState(enabled)
	{
		this.enabled = enabled;
	}

	// マウスが押された時
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

	// マウスが放された時
	function onMouseUp(x, y, button, shift)
	{
		super.onMouseUp(...);
		dragging = false;
	}

	// マウスが動かされた時
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
		if (!dragging)
			return;	// drag中でなければ終了
		parent.onSliderDragged(x, y, clickx, clicky);
	}

	// キーが押された時
	function onKeyDown(key, shift)
	{
		parent.onKeyDown(...);	// 親を呼ぶ
	}
}


// スクロールバーの共通部分のみを実装したクラス
class CommonScrollbar extends Layer
{
	var target;			// 操作する対象(History)
	var prev, next;			// 前ボタン、次ボタン
	var slider;			// スライダー部分
	var timer;	// スクロールバーのスライダ外を押した時のリピートタイマ
	var dst;			// ↑の目的値
	var graphic;			// 背景グラフィック

	// コンストラクタ
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
		timer.enabled = false;		// 最初は falseに

		focusable = true;
		visible = true;
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		invalidate timer;	// 先に invalidate
		invalidate prev;
		invalidate next;
		invalidate slider;
	}

	// オプション設定
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

	// サイズを変更する
	function setSize(w, h)
	{
		width = w, height = h;
		// setSize()だと property width/height が呼ばれないので…
		// super.setSize(...);
		initState();
	}

	// スクロールバーのスライダ外を押した時の動作開始
	// 同等の動作をさせる為の仕組み。
	function scrollTo(value)
	{
		dst = value;
		timer.enabled = true;
	}

	// 初期状態を設定
	function initState()
	{
		face = dfBoth;
		if (graphic === void)
			fillRect(0, 0, width, height, parent.scrollbarBack);
		else
			loadImages(graphic);
// これだとprev/nextの縦横サイズが違うものを設定できないので、外す
//		prev.setSize(width, width);
//		next.setSize(width, width);

		// 以下はスクロールバー種によって異なるので、後で設定し直すこと
		// prev.setPos(x, x);
		// next.setPos(x, x);
		// slider.setPos(x, x);
		// slider.setSize(x, x);
	}

	// prev/next/sliderの状態を更新
	function updateState()
	{
		prev.updateState(!target.isHead());
		next.updateState(!target.isTail());
		slider.updateState(!(target.isHead() && target.isTail()));
	}

	// スライダ外が押された時のリピート関数(ここは宣言だけ)
	function onMouseDownRepeat()
	{
	}

	// ボタンがクリックされた時
	function onButtonClick(src)
	{
		if (src == prev)
			target.prevLine(); // ここ prevOne() じゃなくていいの？
		else if (src == next)
			target.nextLine(); // ここ nextOne() じゃなくていいの？
	}

	// マウスが放された時
	function onMouseUp(x, y, button, shift)
	{
		super.onMouseUp(...);
		timer.enabled = false;
	}

	// マウスが動かされた時
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
	}

	// キーが押された時
	function onKeyDown(key, shift)
	{
		parent.onKeyDown(...);
	}
}


// 縦方向スクロールバー
class VerticalScrollbar extends CommonScrollbar
{
	var verticalView = false;

	// コンストラクタ
	function VerticalScrollbar(window, parent, target, elm)
	{
		super.CommonScrollbar(...);
		prev.setOptions(%[caption:"▲"]);
		next.setOptions(%[caption:"▼"]);
		setOptions(elm);
		initState();
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
	}

	// 現在の状態を設定。スライダーの幅も今のサイズに設定
	function initState()
	{
		super.initState(...);		// この中でprev/nextは変更済み
		prev.setPos(0, 0);		// ボタン位置を設定
		next.setPos(0, height-next.height);

		// slider の大きさと位置を変更
		var tmp = height-next.height-prev.height;
		var h = (tmp/target.pageCount)\1;
		slider.setSize(width, (h>slider.minheight) ? h : slider.minheight);
		var t = prev.height+((tmp-slider.height)*target.position)\1;
		slider.setPos(0, t);
	}

	// 状態更新
	function updateState()
	{
		super.updateState(...);
		var size = height-slider.height-next.height-prev.height;
		slider.top = prev.height + (size*target.position)\1;
	}

	// スライダがドラッグされた時
	function onSliderDragged(x, y, clickx, clicky)
	{
		// 現在の表示すべき位置を求め、そことの差分を diff に格納
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
		// 同じなら何もしない
	}

	// スライダが押された時のリピート関数
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

	// マウスが押された時(この時は必ずスライダー外を押されている)
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (y < slider.top)
			target.prevPage();
		else if (y > slider.top + slider.height)
			target.nextPage();
		scrollTo(y);
	}

	// マウスが動かされた時
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
		if (timer.enabled)
			dst = y;
	}

	// 横幅設定時は prev/next ボタンの大きさを変更
	property width
	{
		getter
		{
			return super.width;
		}
		
		setter(w)
		{
			super.width = w;
			// 縦横幅を設定する時は、必要ならprev/nextを正方形に
			if (!prev.Butt_imageLoaded)
				prev.width = prev.height = w;
			if (!next.Butt_imageLoaded)
				next.width = next.height = w;
		}
	}
}


// 横方向スクロールバー
class HorizontalScrollbar extends CommonScrollbar
{
	var verticalView = true;

	// コンストラクタ
	function HorizontalScrollbar(window, parent, target, elm)
	{
		super.CommonScrollbar(...);
		prev.setOptions(%[caption:"≫"]);
		next.setOptions(%[caption:"≪"]);
		setOptions(elm);
		initState();
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
	}

	// 現在の状態を設定。スライダーの幅も今のサイズに設定
	function initState()
	{
		super.initState(...);		// この中でprev/nextは変更済み
		prev.setPos(width-prev.width,0); // ボタン位置を設定
		next.setPos(0, 0);

		// slider の大きさと位置を変更
		var tmp = width-next.width-prev.width;
		var w = (tmp/target.pageCount)\1;
		slider.setSize((w>slider.minheight) ? w : slider.minheight, height);
		var t = next.width+((tmp-slider.width)*target.position)\1;
		slider.setPos(t, 0);
	}

	// 状態更新
	function updateState()
	{
		super.updateState(...);
		var size = width-slider.width-next.width-prev.width;
		slider.left = next.width + (size*(1-target.position))\1;
	}

	// スライダがドラッグされた時
	function onSliderDragged(x, y, clickx, clicky)
	{
		// 現在の表示すべき位置を求め、そことの差分を diff に格納
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
		// 同じなら何もしない
	}

	// スライダが押された時のリピート関数
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

	// マウスが押された時(この時は必ずスライダー外を押されている)
	function onMouseDown(x, y, button, shift)
	{
		super.onMouseDown(...);
		if (x < slider.left)
			target.nextPage();
		else if (x > slider.left + slider.width)
			target.prevPage();
		scrollTo(x);
	}

	// マウスが動かされた時
	function onMouseMove(x, y, shift)
	{
		super.onMouseMove(...);
		if (timer.enabled)
			dst = x;
	}

	// 縦幅設定時は prev/next ボタンの大きさを変更
	property height
	{
		getter
		{
			return super.height;
		}
		
		setter(h)
		{
			super.height = h;
			// 縦横幅を設定する時は、必要ならprev/nextを正方形に
			if (!prev.Butt_imageLoaded)
				prev.width = prev.width = h;
			if (!next.Butt_imageLoaded)
				next.width = next.width = h;
		}
	}
}


// 履歴のメッセージレイヤクラス
class HistoryMessageLayer extends Layer
{
	var antialiased = true;		// アンチエイリアス文字描画を行うか
	var verticalView = true;	// 縦書きかどうか
	var everypage = false;		// ページ毎の履歴表示を行なうか
	var autoReturn = true;		// 自動的に改行するかどうか
	var maxLines = 2000;		// 最大保持行数

	var data = [];			// 行データ (リングバッファ)
	var lineStart = [];		// 行表示開始位置 (リングバッファ)
	var dataStart = 0;		// データの開始位置
	var dataLines = 0;		// データ中に含まれる行数 < maxLines -1
	var dataPos = 0;		// データ書き込み位置

	// "ページ毎"の時は、data, lineStart を2次元に使っている。
	var maxPages = 100;		// 最大ページ数
	var dataPages = 0;		// データ中の有効なページ数
	var dataPage = 0;		// 現在書き込んでいるページ

	// margin[TBRL] は、スクロールバーを除いた部分のマージンを表す
	var marginL = 300;		// 履歴メッセージ領域左余白
	var marginR = 240;		// 履歴メッセージ領域右余白
	var marginT = 0;		// 履歴メッセージ領域上余白
	var marginB = 0;		// 履歴メッセージ領域下余白
	var fontName = "Molengo"; // 履歴メッセージdefaultフォント名
	var fontBold = false;		// 履歴メッセージdefault太字細字
	var fontItalic = false;
	var fontHeight = 22;		// 履歴メッセージdefaultフォントサイズ
	var lineHeight = 32;		// 履歴メッセージ行幅
	// ↑横書きなら >= fontH+rubyH、縦書きなら >= fontH+rubyH*2 必要
	var relinePos_org = 0;		// 履歴メッセージ領域の改行位置
	var limitPos_org = 0;		// 履歴メッセージ領域の下端 or 右端
	var relinePos = 0;		// 改行位置(変更されうる)
	var limitPos = 0;		// 画面の端っこ位置(変更されうる)
	var indentPos = 0;		// インデント位置
	var repageLine = 0;		// 改ページ行数

	var historyColor = 0xffffff;	// 履歴文字色(default)

	var dispStart = 0;		// 現在の表示行
	var dispLines = 0;		// 履歴メッセージ表示可能行数
	var canScroll = false;		// 履歴がscroll可能かどうか
					// 履歴行数が画面行数に満たなければ偽
	var currentLine = "";		// 現在の行の文字列(文字が追加されてく)

	var storeState = false;		// 状態を栞に保存するか

	var faceLeft = 210;

	//	禁則文字
	var wwFollowing = "%),:;]}｡｣ﾞﾟ。，、．：；゛゜ヽヾゝ　ゞ々’”）〕］｝〉》」』】°′″℃￠％‰！？♪①②";	// 行頭禁則文字
	var wwFollowingWeak="!.?､･ｧｨｩｪｫｬｭｮｯｰ・ー━―ぁぃぅぇぉっゃゅょゎァィゥェォッャュョヮヵヶ";			// 行頭(弱)禁則文字
	var wwLeading="\\$([{｢‘“（〔［｛〈《「『【￥＄￡"; // 行末禁則文字

	wwFollowing += wwFollowingWeak;

// ************** ↑ここまでオリジナル。ここから↓色々追加 ****************

	var lastIndentPos = 0;
	var storeTag;

	var fontcolor;			// 現在のヒストリ文字色
	var fontsize;			// 現在のフォントサイズ
	var fontbold;			// 現在のフォント太字情報
	var fontitalic;
	var fontface;			// 現在のフォント名
	var hbuttons = [];		// ヒストリ上のボタン配列
	var storestack = [];		// store()時のタグスタック
	var himages = [];		// ヒストリ上の画像配列

	var hbColor = 0x808080;	// 履歴ボタン色
	var hbCaptionColor = 0xffffff;	// 履歴ボタンキャプション色

	// ここからルビ用変数
	var rubyName = "Molengo";	// ルビフォント名
	var rubyBold = false;		// ルビ太字細字
	var rubyHeight = 8;		// ルビサイズ
//	var rubyColor = 0xffffff;	// ルビ色 = 本文色にあわせるので不要
	var rubyOffset = -2;		// -の値で本文に近づく
	// 履歴用変数
	var inrubytag = %[];		// str=なしのルビ中かどうか。ルビ中は直前の[hruby]タグが入っている
	var hacts = [];			// [hact]タグの保存配列

	// コンストラクタ
	function HistoryMessageLayer(win, par, elm = %[])
	{
		super.Layer(...);

		// Config.tjs の関数を呼んで、データを初期化
		(HistoryLayer_config incontextof this)();
		if (typeof global.HistoryLayer_config_override != "undefined")
			(HistoryLayer_config_override incontextof this)();

		name = "履歴メッセージレイヤ";

		setFont(fontName, fontHeight, fontBold, fontItalic);

		visible      = true;
		focusable    = false;
		hitType      = htMask;
		hitThreshold = 1;	// 透明部分も含め全体でイベントを受ける

		clear();
/*
		fontcolor = historyColor;	// これらはdrawText()で
		fontsize  = fontHeight;		// 初期化されるので不要
		fontbold  = fontBold;
		fontitalic = fontItalic;
		fontface  = fontName;
*/
		registerTags();		// 履歴用のタグを登録

		// 設定されていなければ、デフォルトサイズと位置を設定
		var sch = parent.scrollbarHeight;
		if (elm.left === void)
			elm.left = 0;
		if (elm.top === void)
			elm.top = sch; // 横書き時も下げる
		if (elm.width === void) {
			elm.width = parent.width;
			elm.width -= sch; // if (!verticalView);
		}
		if (elm.height === void)
			elm.height = parent.height;
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
	}

	// 変数をクリア
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
			dataLines = 1; // 0 だと最終行が履歴に表示されない
			data      = [];
		}

		currentLine = "";

		calcRelinePos();
	}

	// セーブ時に内容を保存
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

	// ロード時に内容を復元
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

	// 改行・改ページの位置決め
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

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.autoreturn !== void)
			autoReturn = +elm.autoreturn;
		setOptions_sub(this, elm);

		// イメージサイズを画面サイズに合わせておく
		setImageSize(width, height);

		if (verticalView) {
			dispLines = (width-marginL-marginR)\lineHeight;
			marginL = width-marginR-lineHeight*dispLines;
		} else {
			dispLines = (height-marginT-marginB)\lineHeight;
			marginB = height-marginT-lineHeight*dispLines;
		}
	}

	// 最終行を得たり設定したりするための getter/setter
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


	// n 番目の行を得る
	function getLine(n)
	{
		n += dataStart;
		if (n >= maxLines) n -= maxLines;
		return data[n];
	}

	// n 番目のページを得る
	function getPage(n)
	{
		n += dataStart;
		if (n >= maxPages) n -= maxPages;
		return data[n];
	}

	// n 番目の行の表示開始位置を得る
	function getLineStart(n)
	{
		n += dataStart;
		if (n >= maxLines)
			n -= maxLines;
		return lineStart[n];
	}

	// n ページ目の、m 行目の表示開始位置を得る
	function getLineStart2(n, m)
	{
		n += dataStart;
		if (n >= maxPages)
			n -= maxPages;
		return lineStart[n][m];
	}

	// 現在は不要だが、MainWindow.ks から呼ばれるのでダミーで残してある
	function setNewAction(action)
	{
	}

	// 現在は不要だが、MainWindow.ks から呼ばれるのでダミーで残してある
	function clearAction()
	{
	}

	// 履歴レイヤに文字を溜め込む。
	// 必要なら行頭にタグを付加。タグを処理するときは elm !== void で、
	// elm にはタグ辞書が入っている。
	// drawLine()と違って、(ほぼ)一文字ずつ入ってくる
	function store(ch, elm)
	{
		if (currentLine == "" && storestack.count > 0) {
			// 改行直後なら必要な途中タグを挿入
			// [r] の時 store()を通らないので追加。
			currentLine = getStackedTag(storestack) + currentLine;
		}

		//inrubytag = %[];// str=なしのルビ中かどうか。ルビ中は直前の[hruby]タグが入っている
		if (inrubytag.tagname !== void) {
			if (elm !== void)
				System.inform('[hruby]の後にタグが指定されました。[hruby text='+inrubytag.text+']'+'['+elm.tagname+'...]');
			// ルビ処理中の場合、次のchをルビのstrとして格納
			elm = inrubytag;
			elm.str = ch;
			ch = dic2tag(elm); // [hruby]タグをここで追加
			inrubytag = %[];
		}

		if (elm !== void) {
			// タグの時は対応するstorefunc()を呼ぶ
			// 現在の描画可能残りドット数
			var func = tagFuncs[elm.tagname].storefunc;
			if (func !== void && !func(storestack, elm))
				return;	// 単一ルビなど、次処理不要なら終了
			if (elm.tagname == 'hruby') {

//ryo--
				//１行がはみ出るときの処理を追加
				var len = getTextWidth(currentLine);
				var str = elm.str;
				var str1 = "";
				var str2 = "";
				var text = elm.text;
				var tmplen = 0;

				for(var i=0 ; i<str.length ; i++){
					//禁則は考えない（ルビの必要な語句では多分禁則を考える必要がない）
					if(len + font.getTextWidth(str[i])<relinePos){
						str1 += str[i]; //はみ出ない分
					}else{
						str2 += str[i]; //はみ出る分
					}
					len += font.getTextWidth(str[i]);
				}

				if(str1 != ""){
					elm.str = str1;
					//本当はルビに関しては禁則をするべきなのかも知れない？
					tmplen = int(Math.round(text.length * str1.length / str.length));
					elm.text = text.substring(0,tmplen);
					currentLine += dic2tag(elm);
					for (var j = 0; j < elm.str.length; j++){
						store(elm.str.substr(j,1));
					}
				}
				if(str2 != ""){
					//さらにはみ出すとかは考えない
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
		currentLine += ch;	// とりあえず文字を追加
		if (!autoReturn)
			return; 	// 自動改行を行わない場合は終了

		// 自動改行を行う場合 ↓ font.getTextWidth()ではない
		var len = getTextWidth(currentLine);
		if (len <= relinePos)
			return;

//全面的に改定

		var curlen = currentLine.length;
		var lastch = curlen >= 2 ? currentLine[curlen - 2] : '';
		var wwStr = '';

		if( ((lastch=='' || wwLeading.indexOf(lastch)==-1) && wwFollowing.indexOf(ch)==-1) ||
			len > limitPos)
		{
			// 最後に描画したのが行末禁則文字でなく、これから描画するのが行頭禁則文字でない場合
			// または確実に 右端を越える場合
			// ( この場合は余白は考えない )
			currentLine = currentLine.substring(0, currentLine.length - ch.length);	//	追加した文字を取り除く
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
				var stack = [];	// storestackとは別の、この場限りのstack
				for (var i = 0; i < ary.count; i++) {
					if (ary[i][0] == '[') {
						// タグだった場合
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

	// 改ページ
	function repage()
	{
		if (!everypage)
			return;

		if (dataPos == 0 && currentLine == "")
			return; // 何もデータが入っていない場合、なにもしない

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

	// 改行。タグ処理のため、ちょっと処理追加。
	// タグは、必ず一行内で収まるように設定される。
	function reline(lastIndentFlag=false)
	{
		// スタック上の tag の revtag を逆順に currentLine 末尾に追加
		// 一行でタグの開閉を完結させるため。
		currentLine += getStackedRevTag(storestack);

		if (everypage) {
			if (dataPos + 1 >= repageLine) {
				// 改ページすべき行数になったとき
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
//こうじゃね？？？
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

		// 改行されたら、スタック上のtagを正順にcurrentLine先頭に記載
		currentLine = getStackedTag(storestack);
	}

	// 現在位置にインデントを設定
	function beginIndent()
	{
		indentPos = getTextWidth(currentLine);
		lastIndentPos = indentPos;
	}

	// インデントを解除
	function endIndent()
	{
		lastIndentPos = indentPos;
		indentPos = 0;
	}

	// 履歴画面をクリアする。nが指定されるとn行目を一行だけクリアする
	// 指定されないと全画面。[hbutton][himage]をクリアする処理を追加
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
					// 最初行はちょっと広めにクリア
					w += marginR;
				if (n == dispLines-1)
					// 最終行はちょっと広めにクリア
					x -= marginL, w += marginL;
			} else {
				y = n*lineHeight+marginT;
				h = lineHeight;
				if (n == 0)
					// 最初行はちょっと広めにクリア
					y -= marginT, h += marginT;
				if (n == dispLines-1)
					// 最終行はちょっと広めにクリア
					w += marginB;
			}
			// 当該ラインだけのhbuttonsを消す処理は、scroll時に
			// 画面外に出たものを消すようにしているので不要
		}
		fillRect(x, y, w, h, 0);	// 透明にする
	}

	// 履歴画面が表示された時、呼び出される。
	function dispInit()
	{
		lastLine = currentLine;

		//１行上げる（表情グラフィックの下の方が切れるのを防ぐため）
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
			// marginL/B を補正する
			if (verticalView) {
				dispLines = (width-marginR-marginL)\lineHeight;
				marginL = width-marginR-lineHeight*dispLines;
			} else {
				dispLines =(height-marginT-marginB)\lineHeight;
				marginB = height-marginT-lineHeight*dispLines;
			}

			if (dataLines <= dispLines) {
				// 表示可能範囲内に収まる
				canScroll = false;
				dispStart = 0;
			} else {
				// 表示可能範囲内に収まらない
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
//			drawPage(); は everypage しか使えないからダメ
		}
	}

	// 履歴画面が非表示になった時、呼び出される
	function dispUninit()
	{
		//最後の行を削除する（dispInit()で１行上げたため）
		data[dataPos] = void;
		dataPos = (dataPos>=0)? dataPos-1 : maxLines-1;
		dataLines--;

		clearBack();	// 念のため終了時は clearBack() しておく
	}

	// 表示行 n(=画面上の行番号) を履歴画面に描画する
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

	// 現在のページを履歴画面に描画する(everypageの時のみ使用可能)
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

	// 前ページに移動
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

	// 次ページに移動
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

	// 次の行へスクロールアップ（表示を上げる）
	function nextLine()
	{
		if (isTail())	// (dispStart >= dataLines - dispLines)
			return; // スクロールできないなら帰る

		moveButtons(-1);	// ボタン位置を補正する

		// 消去行はmarginを含めてコピーする
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
	
	// 前の行へスクロールダウン（表示を下げる）
	function prevLine()
	{
		if (isHead())		// if (dispStart == 0)
			return;

		moveButtons(1);	// ボタン位置を補正する

		// 消去行はmarginを含めてコピーする
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
// ↑ ここまでがオリジナルHistoryLayer、↓ここからrubyとかhfontとかの機能追加

	// ひとつ前へ
	function prevOne()
	{
		everypage ? prevPage() : prevLine();
	}

	// ひとつ次へ
	function nextOne()
	{
		everypage ? nextPage() : nextLine();
	}


	// 現在のフォント情報を設定する
	function setFont(face, size, bold, italic)
	{
		if (face !== 0 && face.length > 0 && face[0] == '@')
			face = face.substr(1);	// 最初の@があれば取る
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


	// drawTextを乗っ取って、タグ処理を追加する。必ず行単位で呼ばれ、行を
	// 超えては処理しない(できない)
	function drawText(top_x, top_y, text, color, opa, aa,
				shadowlevel, shadowcolor, shadowwidth,
				shadowofsx, shadowofsy)
	{
		var x = top_x, y = top_y;
		var lastDrawnCh = "";
dm("text : " + text);
		// 最初デフォルト値。行ごとに属性は独立するので初期化してよい。
		// 最終行で属性変更中に履歴抜けてまた履歴に戻るとtagが残るので
		// 描画時に使用する属性を行ごとに初期化必須。
		var drawstack = [];
		fontcolor = historyColor;
		fontsize  = fontHeight;
		fontbold  = fontBold;
		fontitalic = fontItalic;
		fontface  = fontName;

		// タグで分割する。
		var ary = str2ary(text);
		for (var i = 0; i < ary.count; i++) {
			var w = 0;

			// フォントサイズ設定
			var fs = fontsize;
			if (fs > lineHeight)
				fs = lineHeight;
			setFont(fontface, fs, fontbold, fontitalic);
			// 縦書きならセンタリング、横書きなら下付き
			var dx = x, dy = y;
			if (verticalView)
				dx -= (lineHeight-fs)/2;
			else
				dy += lineHeight - fs;

			if (ary[i][0] == '[') {
				// タグだった場合
				var dic = tag2dic(ary[i]);
				var func = tagFuncs[dic.tagname].drawfunc;
				if (func !== void)
					w = func(drawstack, dic, x, y,
							top_x, top_y, dx, dy);
			} else {
				// タグではなかったら単純に表示
				// フォントサイズがfontheight+rubySize(一行)を
				// 超えてたら強制修正
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
			// 表示幅を反映
			if (verticalView)
				y += w;
			else
				x += w;
		}
		return (verticalView) ? y-top_y : x-top_x;	// 描画幅を返す
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
			if(ch == "―"){
				var cw = font.getTextWidth(ch);
				if(last=="―"){
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
		// 画像 storage を描画する

		// テンポラリのレイヤを用意
		var lay = window.temporaryLayer;

		lay.type = ltTransparent;
		lay.face = dfAuto;
		lay.loadImages(storage); // 画像読み込み
		var lw, lh;
		lw = lay.imageWidth;
		lh = lay.imageHeight;

		lay.face = dfOpaque;
		lay.holdAlpha = true;

		// 影
		lay.fillRect(0, 0, lw, lh, 0x000000);
		operateRect(x+2, y+2, lay, 0, 0, lw, lh);

		// メインを文字色で塗りつぶす
		lay.fillRect(0, 0, lw, lh, color);

		operateRect(x, y, lay, 0, 0, lw, lh); // 描画

	}

	// 幅のあるタグを考慮して行サイズを調査するため、getTextWidth() を新設
	// これはfont.getTextWidth()を置き換える。
	// この関数は、基本的に「行先頭から」の文字列が与えられることに注意。
	// そうしないとTABとかhlocate とかの扱いが難しい…
	function getTextWidth(text)
	{
		var width = 0;	// 現在のWidth
		// hbutton があったら、image の幅を調べる
		// タグで分割する
		var ary = str2ary(text);
		var str = "";
		var stack = [];	// storestackとは別の、この場限りのstackが必要
		for (var i = 0; i < ary.count; i++) {
			if (ary[i][0] == '[') {
				// タグだった場合
				var elm = tag2dic(ary[i]);
				var func = tagFuncs[elm.tagname].storefunc;
				if (func !== void)
					func(stack, elm); //必要ならstackに積む
				var func = tagFuncs[elm.tagname].drawwidth;
				if (func !== void)
					width += func(elm, width);
			} else {
				// 通常の文字列だった場合
				var face = tagsearch(stack, 'hfont',
						'face', false, fontName);
				var size = tagsearch(stack, 'hfont',
						'size', false, fontHeight);
				// フォントサイズがlineHeight(一行)を超えてたら
				// 強制修正
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
		// 「タグ幅合計 + タグを除去した文字列幅」を返す
		return width;
	}

	// 文字列を、TAGをデリミタとして分割した配列を返す
	// まじめに字句解析してないのでウソまみれ。許して！
	function str2ary(str)
	{
		var instr1 = false, instr2 = false;

		// 空白と [] で区切る
		var ary = [], idx=0;
		if (str === void)
			return ary;	// こういうことあるみたい。必要。
		for (var i = 0; i < str.length; i++) {
			var c = str[i];
			if (c == '[' && !instr1 && !instr2) {
				// タグ開始
				if (ary[idx] !== void)
					idx++;
				ary[idx] = string(ary[idx]) + c;
			}
			else if (c == ']' && !instr1 && !instr2) {
				// タグ終了
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

	// TAG文字列から辞書配列を作る
	// 現在は "" 中に空白がある場合を考慮していない…すまん。
	function tag2dic(str)
	{
		if (str[0] == '[')
			str = str.substr(1, str.length-1);
		if (str[str.length-1] == ']')
			str = str.substr(0, str.length-1);
		var ary = str.split(/[ \t]+/,, true);
		var tag = %[ tagname:ary[0] ];
		for (var i = 1; i < ary.count; i++) {
			if (ary[i].length <= 0)	// 空白削除。split(//,,true)が
				continue;	// 効かないみたいなので…
			// =の後にTJS式などはまだ書けない
			var t = ary[i].split(/=/);
			var name = t[0];
			t.erase(0);
			var value = t.join('='); // 最初の = の後は全て纏める
			// dic2tag()でつけた '"' 削除
			if (value[0] == '"' && value[value.length-1] == '"')
				value = value.substr(1,value.length-2);
			tag[name] = (value == "") ? true : value;
		}
		return tag;
	}

	// 辞書配列からタグ文字列を作る
	function dic2tag(dic)
	{
		var str = "";
		var ary = [];
		ary.assign(dic);
		for (var i = 0; i < ary.count; i+=2) {
			if (ary[i] == 'tagname')
				str = ary[i+1] + str;
			else
				// 必ず " で囲む。KAGParser() が取っちゃうから
				str += " "+ary[i]+"="+'"'+ary[i+1]+'"';
		}
		return '[' + str + ']';
	}

// TagStackというクラスを作ろうかと悩んだが、extends Array すると [] が使えない
// みたいなので諦めた。まぁ…いいや。
	// タグをスタックに保存する
	function tagpush(stack, elm)
	{
		var dic = %[];
		(Dictionary.assignStruct incontextof dic)(elm);
		stack.push(dic);
	}

	// タグをスタックから取り出す(really == false で値だけ取り出す)
	function tagpop(stack, really = true)
	{
		if (really)
			return stack.pop();
		else
			return stack[stack.count-1];
	}

	// 特定タグの特定の属性をスタックから探す。見つからなければvoidを返す
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

	// 特定タグをスタックから削除する
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

	// スタックに保存されているタグのrevtagを、文字列にして逆順に全て得る
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

	// スタックに保存されているタグを、文字列にして全て得る
	function getStackedTag(stack)
	{
		var str = "";
		for (var i = 0; i < stack.count; i++)
			str += dic2tag(stack[i]);
		return str;
	}

	// タグを KAGマクロとして使用できるように、kag.tagHandlersに登録する
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
					// タグ辞書を追加引数に store() を呼ぶ
					store(dic2tag(elm), elm);
					return 0;	// これonTag()に必要
				} incontextof this;
		}
	}

	// ルビの割付を計算(ary[startpos, space]を返す)
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

	// タグハンドラ
	var tagFuncs = %[
		// タグと関数の辞書配列。「tagFuncs[タグ名].関数」で使用。
		// ひとつのタグにつき、以下の三つの関数を定義可能。関数は
		// 定義しなければ実行されない(エラーにはならない)。
		//
		// storefunc(stack, elm)
		//	シナリオ本文にタグが出現した時に実行される関数。
		//	実際には同時に historyLayer.store(ch,elm)が実行される
		//	引数: elm=タグの辞書配列
		//	返値: この後(ch)を処理するかどうか(true=処理する)
		// drawfunc(stack, elm, x, y, top_x, top_y, dx, dy)
		//	タグを履歴レイヤ上に描画するときに実行される関数
		//	引数: stack = 描画時のタグ保存用スタック
		//	      elm   = タグの辞書配列
		//	      x,y   = 履歴レイヤへの描画位置(drawtext()の引数)
		//	      dx,dy = 履歴レイヤへの描画位置
		//	      top_x,top_y=この行の先頭描画位置
		//	返値: タグ処理後のテキスト移動幅。[hbutton]とかは > 0
		// revtag(elm)
		//	そのタグの末尾タグ([hfont]に対し[endhfont])文字列を
		//	返す。描画時、行末で全タグをスタックから除くために使用
		//	引数: elm=そのタグが指定された時の辞書
		//	返値: 末尾タグ文字列
		// drawwidth(elm, curwidth)
		//	描画時のそのタグの幅(= drawfunc() の戻り値)を返す関数。
		//	定義されなければ 0 とみなされる
		//	引数: elm=タグの辞書配列
		//	      top_x,top_y=この行の先頭描画位置
		//	返値: タグ描画時の幅(verticalなら縦幅、でなければ横幅)

		hfont: %[
			storefunc: function(stack, elm) {
				tagpush(stack, elm);	// タグを保存
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
				// 対応する [hfont] を削除
				tagerase(stack, 'hfont', false);
				return true;
			} incontextof this,

			drawfunc: function(stack, elm) {
				// 色をひとつ前に戻す
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
				// 全ての [hfont] を削除
				while (tagerase(stack, 'hfont') !== void);
				return true;
			} incontextof this,

			drawfunc: function(stack, elm) {
				// 色をデフォルトに戻す
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
				// 履歴レイヤ上にボタンを表示
				var hb = new HistoryButtonLayer(window, this);
				hbuttons.add(hb);
				hb.setOptions(elm);	// 画像読み込みとか
				var i = (elm.idx === void) ? 0 : int(elm.idx);
				if (verticalView) {
					hb.setPos(x-(lineHeight+hb.width)/2+i,y);
					return hb.height; // センタリング
				} else {
					hb.setPos(x, y+lineHeight-hb.height+i);
					return hb.width;  // 下揃え
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
					// strが無い時は次の一文字を得るために
					// ルビ中にする。assignしないとダメ
					(Dictionary.assign incontextof inrubytag)(elm);
					return false;	// strなしは一旦終わる
				}
				inrubytag = %[];	// クリアしとく
				// align 文字列を統一しておく
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
					// 縦書き時
					var rx = dx + rubyHeight + rubyOffset;
					var ry = dy + p[0];
					var llast = height-marginB-rubyHeight;
					var plast = marginL+rubyHeight;
					for (var i = 0; i < s.length; i++) {
						// 一文字ずつルビを描画
						if (ry > llast) {
							ry = t_y+(ry-llast);
							rx -= lineHeight;
							// 最左行の場合は終了
							if (rx < plast)
								return;
						}
						super.drawText(rx+1, ry+1, s[i], 0, 255, true);
						super.drawText(rx+2, ry+2, s[i], 0, 255, true);
						super.drawText(rx, ry, s[i], fontcolor, 255, true);
						ry += p[1];
					}
				} else {

					// 横書き時
					var rx = dx + p[0];
					var ry = dy - rubyHeight - rubyOffset;
					var llast = width-marginR-rubyHeight;
					var plast = height-marginB-rubyHeight;
					for (var i = 0; i < s.length; i++) {
//ryo--
//既に改行処理はしているのでこの処理は多分不要
//						// 一文字ずつルビを描画
//						if (rx > llast) {
//							rx = t_x+(rx-llast);
//							ry += lineHeight;
//							// 最下行の場合は終了
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
// ToDo: 改ページ直前行でルビが次に続く場合に、切れてしまう
// ToDo: 三行以上ルビが続く場合を考慮していない。…しなくていいか。
				return 0;
			} incontextof this,
		],

		hact: %[
			storefunc: function(stack, elm) {
				tagpush(stack, elm);	// タグを保存
				return true;
			} incontextof this, 

			drawfunc: function(stack, elm, x, y) {
				elm.st_x = x;
				elm.st_y = y;
				tagpush(stack, elm); // 座標だけ覚えとく
			} incontextof this,

			revtag: function(elm) {
				return '[endhact]';
			} incontextof this
		],

		endhact: %[
			storefunc: function(stack, elm) {
				// 対応する [hfont] を削除
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
				if (size <= 0)	// 丁度次の行からhactが始まる時
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

		// [hlocate pos= ipos] 同じ行の中でしか移動できない
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
				// 履歴レイヤ上で次の表示位置を移動
				if (elm.ipos !== void)
					return +elm.ipos;
				if (elm.pos !== void)
					return +elm.pos-curwidth;
				return 0;
			} incontextof this
		],

		// [htext test="abcd"] ヒストリにだけ出力する文字
		htext: %[
		], 

		himage: %[
			drawfunc: function(stack, elm, x, y) {
				// 履歴レイヤ上に画像を表示
				var hi = new HistoryImageLayer(window, this);
				himages.add(hi);
				hi.setOptions(elm);	// 画像読み込みとか
				var i = (elm.idx === void) ? 0 : int(elm.idx);
				if (verticalView) {
					hi.setPos(x-(lineHeight+hi.width)/2+i,y);
					return hi.height; // センタリング
				} else {
					hi.setPos(x, y+lineHeight-hi.height+i);
					return hi.width;  // 下揃え
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
				// 履歴レイヤ上に画像を表示
				var hi = new HistoryImageLayer(window, this);
				himages.add(hi);
				hi.setOptions(elm);	// 画像読み込みとか
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

	// ボタンがメッセージエリア内か？
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

	// ヒストリ上のボタンを画面上で line 分移動し、不要なものを削除する
	// 履歴画面のスクロール時の処理用
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



// HEAD :Scrollbar.Target interface実装部分
	// ヒストリは先頭か？
	function isHead()
	{
		return dispStart <= 0;
	}
	// ヒストリは末尾か？
	function isTail()
	{ 
		if (everypage)
			return dispStart >= dataPages-1;
		else
			return dispStart >= dataLines-dispLines;
	}
	// 現在の位置(pos, 0～1の実数)から、dispStart(履歴の表示開始位置)を得る
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

	// マウスクリックされた時は全部親に処理を任せる
	function onMouseDown(x, y, button)
	{
		parent.onMouseDown(...);
	}


// TAIL :Scrollbar.Target interface実装部分
//

}


// 拡張履歴レイヤクラス
class ExtHistoryLayer extends Layer
{
	// 自分自身は背景画像を表示する。
	var closeButton;		// 右上の履歴終了ボタン
	var scrollbar;			// スクロールバーオブジェクト
	var meslayer;			// メッセージ表示レイヤ
	var currentLine;
	var relinePos;

	var timer;
	var dOpacity;

	var lastWheelTick; // 最後にホイールを操作した tick count

	// 以下、拡張履歴レイヤ用設定。
	// system/Config.tjs の末尾に、function ExtHistoryLayer_config() を
	// 定義して、その中で設定することをお勧めする。

	var bggraphic = "backlog_bg";			// 背景画像ファイル名
	var prevgraphic = "scrollBar_up";		// prevボタンの画像ファイル名
	var nextgraphic = "scrollBar_down";		// nextボタンの画像ファイル名
	var slgraphic = "scrollBar_slider";		// スライダーの画像ファイル名
	var closegraphic = "backlog_return";		// closeボタンの画像ファイル名

	var buttonColor = 0x808080;	// ボタン色
	var buttonCaptionColor = 0xffffff;	// ボタンキャプション色
	var bgColor = 0xc8000000;	// 背景色
	var messageTop = 45;	// 履歴メッセージウィンドウの座標
	var messageLeft = Infinity;	// 同上(どれもInfinityはdefaultを表す)
	var messageWidth = Infinity;	// 履歴メッセージウィンドウの大きさ
	var messageHeight = 675;	// 同上
	var closeButtonTop = 694;	// クローズボタンの座標
	var closeButtonLeft = 1116;	// 同上
	var scrollbarHeight = 28;	// スクロールバー幅(画像btnなら未使用)
	var scrollbarBack = 0x00000000;	// スクロールバー背景色
	var sbbggraphic = "";		// スクロールバー背景画像ファイル名

	var hidemessage = false;	// 履歴表示中にメッセージレイヤを隠すか

	// コンストラクタ
	function ExtHistoryLayer(win, par, elm)
	{
		super.Layer(...);

		name = "拡張履歴レイヤ";

//		closeButtonLeft = window.scWidth-scrollbarHeight;
		// 設定値が Config.tjs 中にあれば設定
		if (typeof(.ExtHistoryLayer_config) != 'undefined')
			(.ExtHistoryLayer_config incontextof this)();

		setPos(0, 0);
		setSize(parent.width, parent.height);
		setImageSize(width, height);
		hitType = htMask;
		visible = false;	// 最初は不可視
		face = dfAlpha;	
		fillRect(0,0, width, height, bgColor);	// def = 半透明の黒
		focusable = true;

		cursor = window.cursorDefault;

		// メッセージレイヤ作成
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

		// ボタンとか作成。ここで作成すると、historyを使わない時に
		// 無駄だが、ヒストリ表示時にボタン作ると、それまでに流し込んだ
		// 文字列の limitPos などが初期状態で改行が変になっちゃうので。
		// makeButtons()関数は、MainWindow.tjs から呼ばれるので削除不能
		makeButtons();

		setOptions(elm);

		timer = new Timer(onTimer,'');
		timer.enabled = false;
		timer.interval = 10;
		opacity = 0;
	}

	// デストラクタ
	function finalize()
	{
		invalidate closeButton;
		invalidate scrollbar;
		invalidate meslayer;
		super.finalize(...);
	}

	// セーブ時に内容を保存
	function save() {
		return meslayer.save(...);
	}
	
	function getTextWidth() {
		return meslayer.getTextWidth(...);
	}

	// ロード時に内容を復元
	function load(dic) {
		meslayer.load(...);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.autoreturn !== void)
			autoReturn = +elm.autoreturn;
		setOptions_sub(this, elm);

		// グラフィックを設定した場合は、ボタンを作り直す
		if (elm.closegraphic !== void || elm.prevgraphic !== void ||
		    elm.nextgraphic !== void || bggraphic !== void)
			makeButtons();
	}

	// ボタン作成(HistoryLayer.makeButtons()を上書き)
	function makeButtons()
	{
		if (closeButton !== void)
			invalidate closeButton;	// 存在するなら再設定
		closeButton = new LButtonLayer(window, this);
		closeButton.width 	 = scrollbarHeight;
		closeButton.height 	 = scrollbarHeight;
		closeButton.hint         = "メッセージ履歴を閉じる";
		closeButton.captionColor = buttonCaptionColor;
		closeButton.color        = buttonColor;
		closeButton.caption      = "×";
		closeButton.visible      = true;
		// 画像があれば読み込み
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

		// スクロールバーは、定義されていれば再定義はしない
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
			// 縦書きの時は、スクロールバーはメッセージレイヤ上端に
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
//			// 横書きの時は、スクロールバーは右端に
//			scrollbar.setSize(scrollbarHeight, meslayer.height);
//			scrollbar.setPos(meslayer.left+meslayer.width,
//					 meslayer.top);
			scrollbar.setSize(28,654);
			scrollbar.setPos(1122,37);
		}

		// 画像があれば読み込み
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

	// 現在は不要だが、MainWindow.ks から呼ばれるのでダミーで残してある
	function setNewAction(action)
	{
	}

	// 現在は不要だが、MainWindow.ks から呼ばれるのでダミーで残してある
	function clearAction()
	{
	}
	
	function calcRelinePos()
	{
		relinePos = meslayer.calcRelinePos();
	}

	// 履歴レイヤをクリアする
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

	// 履歴レイヤに文字を溜め込む。
	function store(ch, elm)
	{
		meslayer.store(...);
	}

	// 改ページ
	function repage()
	{
		meslayer.repage(...);
	}

	// 改行
	function reline()
	{
		meslayer.reline(...);
	}

	// 現在位置にインデントを設定
	function beginIndent()
	{
		meslayer.beginIndent(...);
	}

	// インデントを解除
	function endIndent()
	{
		meslayer.endIndent(...);
	}

	// 履歴画面が表示された時、呼び出される。
	function dispInit()
	{
		// メッセージレイヤを表示しないなら消去
		if (hidemessage && !window.messageLayerHiding)
			window.hideMessageLayerByUser();

		// 全部再描画と初期設定
		makeButtons();
		meslayer.dispInit();

		updateButtonState();
		visible = true;

		dOpacity = 25;
		timer.enabled = true;
	}

	function dispInitComplete(){
		enabled = true;	// これが無いと setMode() でエラーになる
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


	// 履歴画面が非表示になった時、呼び出される
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
		removeMode();	// 上にあるとsystembuttonにフォーカスされるので

		// メッセージレイヤを消去していたら表示
		if (hidemessage && window.messageLayerHiding)
			window.showMessageLayerByUser();
		window.setMenuAccessibleAll();
	}

	// 全ボタン状態を更新
	function updateButtonState()
	{
		scrollbar.updateState();
	}

	// 履歴を隠す
	function hide()
	{
		window.hideHistory();
	}

	// ボタンがクリックされた時
	function onButtonClick(sender)
	{
		if (sender == closeButton)
			hide();
	}

	// マウスクリックされた時
	function onMouseDown(x, y, button)
	{
		if (button == mbRight)
			hide();
		super.onMouseDown(...);
	}

	// キーが押し下げられた時
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

	// マウスホイルをまわした時
	function windowMouseWheel(shift, delta, x, y)
	{
		// ウィンドウのホイール操作メッセージがここに流される
		var currenttick = System.getTickCount();
		delta = delta \ 120;
		if (delta > 0)
			// 奥
			while (delta--)
				meslayer.prevOne();
		else if (delta < 0) {
			// 手前
			if (currenttick - lastWheelTick > 150 &&
			    meslayer.isTail())
				/* くるくる回しているうちにいきなり履歴が
				  閉じたりしないような仕掛け */
				// 既に最終部分を表示している
				hide();
			else {
				delta = -delta;
				while (delta--)
					meslayer.nextOne();
			}
		}
		lastWheelTick = currenttick;
	}

	// historyLayer.everypage は MainWindow.ks から利用されるのでラッパー
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

	// historyLayer.storeState は MainWindow.ks から利用されるのでラッパー
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


// 履歴上に表示するボタンレイヤ
class HistoryButtonLayer extends ButtonLayer
{
	var exp = "";		// クリック時に実行されるTJS式

	// コンストラクタ
	function HistoryButtonLayer(window, parent, elm)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
		//デフォルト値設定
		// ボタンサイズは履歴フォントサイズをデフォルトとする
		setSize(parent.fontHeight, parent.fontHeight);
		setOptions(%[caption:"▲",
			     captionColor:parent.hbCaptionColor,
			     color:parent.hbColor,
			     visible:true, enabled:true]);
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
		if (elm.graphic !== void)
			loadImages(elm.graphic);
		setOptions_sub(this, elm);
	}

	// マウスがクリックされ、放された時
	function onExecute(x, y, button, shift)
	{
		super.onExecute(...);
		if (exp != "")
			Scripts.eval(exp);
	}
}


// [hact]ボタン。実は透明なボタンで、下の文字を隠すだけ。これで、
// [hact]中の文字の大きさ・色変更・ルビに対応できる。
class HistoryActionButtonLayer extends ButtonLayer
{
	// 未実装 var next; // 複数行に分割された時の、次のボタン(なければvoid)
	var exp = "";	// クリックされた時に実行されるTJS式

	// コンストラクタ
	function HistoryActionButtonLayer(window, parent, elm)
	{
		super.ButtonLayer(...);
		visible = true;
		face    = dfAlpha;
		Butt_imageLoaded = true;	// イメージボタンとする。
		setOptions(elm);
		focusable = false;
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
	}

	// サイズ変更。[hact]のための、透明・線引きボタンを作成
	// 結局 width/height の setter 書いても setSize()されるとすりぬけるので
	function setSize(w, h)
	{
		super.setSize(w, h);
		setImageSize(w*(Butt_showFocusImage ? 4 : 3), h);
		fillRect(0, 0, w, h, 0x00000000);
		var c = parent.historyColor;
		// 縦書きが中央揃えなので、薄色でfillすることに変更。いいのかな
		fillRect(0,  0  , w,h, 0x00000000|c);
		fillRect(w,  h-2, w,2, 0xff000000|c);	// 押された時
		fillRect(w*2,h-2, w,2, 0xff000000|c);	// フォーカス1
		if (Butt_showFocusImage) {
			fillRect(w*3,0, w,h, 0x60000000|c); //フォーカス2
			fillRect(w*3+1,1, w-2,h-2,0x00000000);
		}
		Butt_imageLoaded = true;	// 強制的にイメージボタンにする
		// ↑本当は setter を再定義すればいいんだけど…
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;

		setOptions_sub(this, elm);

		// width/heightが指定されたら、透明・線引きボタン作成
		if (elm.width !== void || elm.height !== void)
			setSize(width, height);
	}

	// マウスがクリックされ、放された時
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


// 履歴上に表示するボタンレイヤ
class HistoryImageLayer extends Layer
{
	var graphic;	// 表示する画像

	// コンストラクタ
	function HistoryImageLayer(window, parent, elm)
	{
		super.Layer(window, parent);
		focusable = false;
		//デフォルト値設定
		visible = true;
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		super.finalize(...);
	}

	// オプション設定
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



// KAG のヒストリレイヤ置き換え
if (kag.historyLayer instanceof "HistoryLayer") {
	// デフォルトだったら
	kag.remove(kag.historyLayer);
	invalidate kag.historyLayer if (kag.historyLayer !== void);
	kag.historyLayer = new ExtHistoryLayer(kag, kag.fore.base);
	kag.add(kag.historyLayer);
}


// tagnameを変更し、必要なパラメータを抜き出したヒストリタグを履歴に書きこむ
function storeTag(tagname, mp=%[], params=[])
{
	if ((f.transhistorytag !== void && !f.transhistorytag) ||
	    mp.nohistory || !kag.historyWriteEnabled)
		return;		// 実行しないならしない。

	var dic = %[];
	var ary = [];
	ary.assign(mp);
	for (var i = ary.count-2; i >= 0; i-=2)
		if (params.find(ary[i]) >= 0)
			dic[ary[i]] = ary[i+1];
	dic.tagname = tagname;
	kag.historyLayer.store(kag.historyLayer.meslayer.dic2tag(dic), dic);
}


// これを false にするとメッセージ画面の[font]とかをヒストリに反映しなくなる。
// デフォルトは enabled.
// グローバル変数にしちゃうのはちょっと汚いが、これだけのためにKAGPlugin
// 使うのもカッコ悪いのでグローバル変数に。
// void でも true と扱うようにしているので、[clearver]して void になっても
// 大丈夫。でも、その後で[history historytag=true]とかしといた方が安心。
f.transhistorytag = true;

[endscript]


; タグ置き換えマクロ読み込み
[call storage=RenameKAGTag.ks]


; [history]タグを置き換え、historytag=を追加。
; bggraphic/prevgraphic/nextgraphic/closegraphic/slgraphic/sbbggraphic は
; 自動的に設定される
; メッセージ画面の[font]とかをヒストリに反映するかどうか。
[renametag from=history to=history_org]
[macro name=history]
[history_org *]
[eval exp="f.transhistorytag = +mp.historytag" cond="mp.historytag !== void"]
[endmacro]


; [font]タグがきたら、[hfont]も同時に送るようにする
; [font]タグを置き換えてから、新規に[font]タグを定義
[renametag from=font to=font_org]
[macro name=font]
[font_org *]
[eval exp="storeTag('hfont', mp, ['color', 'face', 'size', 'bold', 'italic'])"]
[endif]
[endmacro]


; [ruby]タグを置き換える
[renametag from=ruby to=ruby_org]
[macro name=ruby]
[ruby_org *]
[eval exp="storeTag('hruby', mp, ['text', 'str'])"]
[endmacro]


; [resetfont]タグを置き換える
[renametag from=resetfont to=resetfont_org]
[macro name=resetfont]
[resetfont_org *]
[eval exp="storeTag('resethfont', mp)"]
[endmacro]

; [ct][cm][er]タグを置き換える。いずれも文字属性をリセットする(resetfontと同じ)
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


; [hact]タグを置き換える(というか消去)
[renametag from=hact to=hact_org]
[macro name=hact]
[eval exp="storeTag('hact', mp, ['exp'])"]
[endmacro]

; [endhact]タグを置き換える(というか消去)
[renametag from=endhact to=endhact_org]
[macro name=endhact]
[eval exp="storeTag('endhact', mp)"]
[endmacro]


; eruby があれば読み込んで拡張
[if exp="Storages.isExistentStorage('eruby.ks')"]
	[call storage=eruby.ks]
	[renamemacro from=eruby to=eruby_org]
	[macro name="eruby"]
	; ヒストリ有効だと eruby 中にも文字が履歴に出力されるので一時停止
	[eval exp="mp.historyWriteEnabled_save = kag.historyWriteEnabled"]
	[history output=false]
	[eruby_org *]
	[history output=true cond="mp.historyWriteEnabled_save"]
	; で、デフォルト align を追加してhrubyを出力
	[eval exp="mp.align = 'e'" cond="mp.align === void"]
	[eval exp="storeTag('hruby', mp, ['text', 'str', 'align'])"]
	[endmacro]
[endif]



[return]
