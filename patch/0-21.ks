[if exp="typeof(global.kaisou_object) == 'undefined'"]
[iscript]

var kaisou_thumb_left = 0;
var kaisou_thumb_top = 0;
var kaisou_thumb_width = 1366;
var kaisou_thumb_height = 768;

class KaisouLayerPlugin extends KAGPlugin{

	var hidingLayer;
	var showingLayer;
	var hidingDelta = 0;
	var showingDelta = 0;
	var timer;

	function KaisouLayerPlugin(){
		timer = new Timer(onTimer,'');
		timer.enabled = false;
		timer.interval = 10;

	}

	function init(){

		var par = kag.fore.base;

		hidingLayer = new Layer(kag, par);
		hidingLayer.width = kaisou_thumb_width;
		hidingLayer.height = kaisou_thumb_height;
		hidingLayer.visible= false;
//		hidingLayer.absolute = 1500; //layer0(absolute=1000)とlayer1(absolute=2000)の間に表示
		hidingLayer.absolute = 2000000;
		hidingLayer.hitThreshold = 256;

		showingLayer = new Layer(kag, par);
		showingLayer.width = kaisou_thumb_width;
		showingLayer.height = kaisou_thumb_height;
		showingLayer.visible= false;
//		showingLayer.absolute = 1501; //layer0(absolute=1000)とlayer1(absolute=2000)の間に表示
		hidingLayer.absolute = 2000001;
		showingLayer.hitThreshold = 256;

		hidingLayer.fillRect(0, 0, kaisou_thumb_width, kaisou_thumb_height, 0x00000000);
		showingLayer.fillRect(0, 0, kaisou_thumb_width, kaisou_thumb_height, 0x00000000);

	}

	function onEnter(num){

		if(showingLayer===void)return;

		var storage = "omake_kaisou_thumb" + num;

		showingLayer.left = kaisou_thumb_left;
		showingLayer.top  = kaisou_thumb_top;
		showingLayer.loadImages(storage);
		showingLayer.opacity = 0;
		showingLayer.visible = true;
		showingDelta = 10;

		timer.enabled = true;

	}

	function onLeave{

		showingLayer.visible = false;

		hidingLayer.colorRect(0, 0, kaisou_thumb_width, kaisou_thumb_height, 0 ,hidingLayer.opacity-255);
		hidingLayer.pileRect(0, 0, showingLayer, 0, 0, showingLayer.width, showingLayer.height, showingLayer.opacity);
		hidingLayer.left = kaisou_thumb_left;
		hidingLayer.top  = kaisou_thumb_top;
		hidingLayer.opacity = 255;
		hidingLayer.visible = true;
		hidingDelta = -10;

		showingLayer.fillRect(0, 0, kaisou_thumb_width, kaisou_thumb_height, 0x00000000);
		showingLayer.opacity = 0;
		showingDelta = 0;

		timer.enabled = true;
	}

	function onTimer(){

		if(hidingDelta!=0){
			var opa;
			opa = hidingLayer.opacity + hidingDelta;
			if(opa > 255){
				opa = 255;
				hidingDelta = 0;
			}
			if(opa < 0){
				opa = 0;
				hidingDelta = 0;
				hidingLayer.visible = false;
				hidingLayer.fillRect(0, 0, kaisou_thumb_width, kaisou_thumb_height, 0x0000000);
			}
			hidingLayer.opacity = opa;
		}

		if(showingDelta!=0){
			var opa;
			opa = showingLayer.opacity + showingDelta;
			if(opa > 255){
				opa = 255;
				showingDelta = 0;
			}
			if(opa < 0){
				opa = 0;
				showingDelta = 0;
				showingLayer.visible = false;
			}
			showingLayer.opacity = opa;
		}

		if(hidingDelta==0 && showingDelta==0){
			timer.enabled = false;
		}

	}

	function kaisouHide(){
		hidingLayer.visible = false;
		showingLayer.visible = false;

		kag.fore.layers[5].loadImages(%[storage:"_tr"]);
		kag.fore.layers[5].left = kaisou_thumb_left;
		kag.fore.layers[5].top = kaisou_thumb_top;
		kag.fore.layers[5].width = kaisou_thumb_width;
		kag.fore.layers[5].height = kaisou_thumb_height;
		kag.fore.layers[5].operateRect(kaisou_thumb_left, kaisou_thumb_top, hidingLayer, 0, 0, kaisou_thumb_width , kaisou_thumb_height,omAlpha, hidingLayer.opacity);
		kag.fore.layers[5].operateRect(kaisou_thumb_left, kaisou_thumb_top, showingLayer, 0, 0, kaisou_thumb_width, kaisou_thumb_height,omAlpha, showingLayer.opacity);
		kag.fore.layers[5].visible = true;
		kag.fore.layers[5].absolute = 2000000;

		hidingLayer.opacity = 0;
		showingLayer.opacity = 0;
	}

}

var kaisouLocate = [
	["01","02","03","04","05","06","07","08"],
	["09","10","11","12","13","14","15","16"],
	["17","18","19","20","21","22","23","24"],
	["25","26","27","28","29","30"]
];

var kaisouIndent = [
	[0,0,1,0,0,0,0,1],
	[0,0,1,0,0,0,1,0],
	[0,1,0,0,0,1,0,0],
	[0,1,0,0,0,1]
];

var kaisou_page_num = 4;

kag.addPlugin(global.kaisou_object = new KaisouLayerPlugin(kag));


[endscript]
[endif]


;[ct]

[eval exp="tf.fadeControl=500"]

*init
[layopt page=back layer="message0" visible=false]
[layopt page=back layer="message1" visible=false]
[layopt page=back layer="message2" visible=false]
;[freeimage page=back layer=0]
[freeimage page=back layer=1]
[freeimage page=back layer=2]
;[freeimage page=back layer=3]
;[freeimage page=back layer=4]
;[freeimage page=back layer=5]

*start|回想モード
[eval exp="tf.afterLoad=0"]
[record]

[rclick jump=true target="*exit" enabled=true]

;[er]
;[jump target="*page1" cond="f.kaisouPage==1"]
;[jump target="*page2" cond="f.kaisouPage==2"]
;[jump target="*page3" cond="f.kaisouPage==3"]
;[jump target="*page4" cond="f.kaisouPage==4"]


*pagemake1
[position layer="message3" page=back left=0 top=0 width=800 height=600 color=0x000000 margint=0 marginl=0 opacity=0 frame="_tr"]
[current layer="message3" page=back]

[eval exp="tf.file = 'omake_kaisou_bg' + ((f.kaisouPage<10) ? ('0' + ((string)f.kaisouPage)) : ((string)f.kaisouPage))"]
[image layer=2 page=back left=0 top=0 visible=true storage=&tf.file]

[eval exp="tf.i=0"]

*pagemake2
[eval exp="tf.kaisou=kaisouLocate[f.kaisouPage-1][tf.i]"]
[if exp="tf.kaisou!==void"]
	[if exp="sf.kaisouOpenFlag[tf.kaisou]==1"]
		[locate x=202 y=&(143+56*tf.i)]
		[eval exp="tf.onenter='kaisou_object.onEnter(\'' + tf.kaisou + '\');tf.select=\'' + tf.kaisou + '\''"]
		[button clickse=sys_decide graphic=&('omake_kaisou'+tf.kaisou) onenter=&tf.onenter onleave="kaisou_object.onLeave()" rightclick=*exit target=*kaisou_select]
	[else]
		[locate x=202 y=&(143+56*tf.i-9)]
		[eval exp="tf.file = 'omake_kaisou00'+((kaisouIndent[f.kaisouPage-1][tf.i])?'b':'a')"]
		[graph storage=&tf.file char=false rightclick=*exit]
	[endif]
[endif]
[eval exp="tf.i++"]
[jump target=*pagemake2 cond="tf.i<9"]

*pagemake3
[locate x=193  y=593][button clickse=sys_decide graphic="omake_pageback" rightclick=*exit target="*pageback"]
[locate x=1004 y=593][button clickse=sys_decide graphic="omake_pagenext" rightclick=*exit target="*pagenext"]
[locate x=860  y=680][button clickse=sys_decide graphic="omake_exit" recthit=false rightclick=*exit target=*exit]

[locate x=193  y=700][button2 clickse=sys_decide graphic=general_button1 color=0xffffff text="デバッグ用回想オープン" rightclick=*exit target="*kaisouOpen" cond="tf.debugMode==1"]

[trans method=crossfade time=&(tf.fadeControl)]
[DisableClick][wt][EnableClick]
[eval exp="tf.fadeControl=150"]

[jump target="*menu"]


*menu
;メニューの「前に戻る」を無効化
[eval exp="kag.goBackMenuItem.enabled=false"]

[eval exp="kaisou_object.init()"]
[s]



*kaisouOpen
[iscript]
for(var i=0 ; i<kaisouLocate[f.kaisouPage-1].count ; i++){
	sf.kaisouOpenFlag[kaisouLocate[f.kaisouPage-1][i]] = 1;
}
[endscript]
[jump target="*start"]


*pageback
[eval exp="f.kaisouPage--"]
[if exp="f.kaisouPage==0"]
	[eval exp="f.kaisouPage=kaisou_page_num"]
[endif]
[jump target="*start"]


*pagenext
[eval exp="f.kaisouPage++"]
[if exp="f.kaisouPage>kaisou_page_num"]
	[eval exp="f.kaisouPage=1"]
[endif]
[jump target="*start"]


*exit
;[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
;[freeimage layer=3 page=back]
;[freeimage layer=4 page=back]
;[freeimage layer=5 page=back]
;[layopt page=back layer=1 visible=false]
[rclick jump=false]
[er]
[eval exp="kag.clickCount=0"]
[eval exp="f.inKaisouMode=0"]
[eval exp="tf.fadeControl=500"]
[eval exp="kaisou_object.kaisouHide()"]

;このスクリプトに入ったときの通過記録を削除する
[eval exp="kag.historyOfStore.erase(0)" cond="kag.historyOfStore.count!=0"]

[return]


*kaisou_select
[call target="*kaisou_prepare"]
[eval exp="tf.file='h-' + tf.select + '.ks'"]
[call storage=&tf.file]
[jump target="*kaisou_end"]


*kaisou_prepare
[eval exp="kaisou_object.kaisouHide()"]
[er]

[backlay]
[layopt   layer=message3 page=back visible=false]
[position layer=message0 page=back visible=false left=0   top=574 marginl=0   margint=0 frame="messagewindow1"]
[position layer=message1 page=back visible=false left=0   top=574 marginl=404 margint=4 marginr=210 frame="messagewindow2"]
[position layer=message2 page=back visible=false left=200 top=585 marginl=0   margint=0 height=136  opacity=0]
[position layer=message3 page=back visible=true  left=0   top=0   marginl=0   margint=0 frame="" opacity=0]
[current page=fore layer="message1"]

;ムービー後処理
[StopBgMovie]

[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image storage=_black page=back layer=base]
[fadeoutbgm time=1000]
[fadeoutse buf=2 time=500]
[UpDate]

[wait time=500]

[rclick enabled=true jump=false]
[history enabled=true]
[eval exp="kag.disableMessageWindowHide = 0"]

[eval exp="f.titleflg=0"]
[eval exp="f.extraMode=0"]
[eval exp="f.cancelTitleCall=0"]
[eval exp="f.inKaisouMode=0"]
[eval exp="f.nowExecKaisou=1"]
[eval exp="f.enableWheel = 1"]

[eval exp="kag.fore.layers[5].absolute = 6000"]
[eval exp="kag.back.layers[5].absolute = 6000"]

;メニュー項目の有効化
[eval exp="kag.menuEnabled=true"]

;何か上手くいかないから強制的に書き換えたる
[eval exp="kag.historyOfStore[0].user.chaptertitle='回想モード'" cond="kag.historyOfStore.count!=0"]
[eval exp="kag.historyOfStore2=[]"]

[return]


*kaisou_end

[eval exp="f.chaptertitle='回想モード'"]

; メッセージレイヤ 0-2 を非表示にする
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]
[layopt layer="message3" visible=false]

; メッセージレイヤ 3 を使う
;[position layer="message3" page=back left=0 top=0 width=800 height=600 color=0x000000 margint=0 marginl=0 opacity=0 frame=title_bg]
;[layopt layer="message3" page=back visible=true]
;[current layer="message3" page=back]

[layopt layer="message3" page=back visible=true]

[rclick enabled=false]
[history enabled=false]
[eval exp="kag.disableMessageWindowHide = 1"]

;メニュー項目の無効化
[eval exp="kag.menuEnabled=false"]

;制御用フラグの設定
[eval exp="f.extraMode=1"]
[eval exp="f.cancelTitleCall=1"]
[eval exp="f.inKaisouMode=1"]
[eval exp="tf.fadeControl=500"]
[eval exp="f.nowExecKaisou=0"]
[eval exp="f.chaptertitle=''"]
[eval exp="f.windowTopNow=0"]
[eval exp="f.enableWheel = 0"]

;通過記録を削除する
[eval exp="kag.historyOfStore.erase(0)" cond="kag.historyOfStore.count!=0"]

;[PlayBgMovie storage="titlebg.mpg" layer=0]
;[if exp="sf.effectAnime==1"]
;[else]
;	[pausevideo slot=0]
;[endif]

[playbgm storage="bgm_title"]

;背景ムービー再生
[PlayBgMovie storage="title_bg.mpg" layer=0]
[if exp="sf.effectAnime==1"]
[else]
	[pausevideo slot=0]
[endif]

[jump target=*start]

