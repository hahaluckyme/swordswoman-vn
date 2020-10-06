

[eval exp="kag.clickCount = 0"]

;タイトル画面中は１を保持。
[eval exp="f.titleflg=1"]

;タイトルコール抑制用
[eval exp="tf.cancelTitleCall=0"]

[cancelskip]
[rclick enabled=false]
[history enabled=false]

*blandlogo

;タイトルコール用キャラ決め
[eval exp="tf.rand = intrandom(0,2)"]

[BgSet storage="brandlogo"]
[trans method=crossfade time=500 cond="kag.clickCount==0"]
[wt]
[playse storage="a9001" buf=2 cond="kag.clickCount==0"]
[wait time=2000 cond="kag.clickCount==0"]

[BgSet storage="_white"]
[UpDate]

*title|タイトル
[cm]
[startanchor]

[ExVoice1Stop]
[ExVoice2Stop]

;メニュー項目の無効化
[eval exp="kag.menuEnabled=false"]

;色々と初期化
[eval exp="f.titleflg=1"]
[eval exp="f.extraMode=0"]
[eval exp="f.enableWheel = 0"]
[eval exp="tf.nowKeyWait=0"]
[eval exp="f.inHScene=0"]
[eval exp="f.inCgMode=0"]
[eval exp="f.nowShowingCgInCgMode=0"]
[eval exp="f.nowShowingMovieInMovieMode=0"]
[eval exp="f.inKaisouMode=0"]
[eval exp="f.nowExecKaisou=0"]
[eval exp="f.選択肢表示中 = 0"]
[eval exp="f.inKaisou=0"]
[eval exp="f.chaptertitle=''"]
[eval exp="f.nowVoiceLine=0"]
[eval exp="f.voicePlayBuf = 2"]
[eval exp="f.voicePlayFlag = 0"]
[eval exp="f.lastVoice=''"]
[eval exp="f.selectbuf = []"]
[eval exp="f.nowShowingCg = ''"]
[eval exp="f.nowShowingCgAlt = ''"]
[eval exp="kag.nowShowCutin=0"]
[eval exp="f.gamma=[1.0, 1.0, 1.0]"]
[eval exp="f.nowForeSlot=0"]
[eval exp="f.nowPlayingEventMovie=''"]
[eval exp="f.exVoice1 = ''"]
[eval exp="f.exVoice2 = ''"]
[eval exp="tf.exVoice1StartFlag = 0"]
[eval exp="tf.exVoice2StartFlag = 0"]
[eval exp="f.windowTopNow=0"]
[eval exp="kag.extasyCountMale = -1"]
[eval exp="kag.extasyCountFemale = -1"]

[eval exp="f.status_a='はるか'"]
[eval exp="f.status_c='希美乃'"]


;データをロードした直後はtrueになる変数
[eval exp="tf.afterLoad=false"]

;メッセージ履歴のクリア
[eval exp="kag.historyLayer.clear()"]

;絶頂カウントの非表示
[eval exp="kag.foreExtasyCountLayer.hide()"]
[eval exp="kag.backExtasyCountLayer.hide()"]

;レイヤー初期化
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
	[eval exp="kag.back.layers[3].type = ltAlpha"]
	[eval exp="kag.back.layers[3].fillRect(0,0,32,32,0)"]
	[eval exp="kag.back.layers[4].type = ltAlpha"]
	[eval exp="kag.back.layers[4].fillRect(0,0,32,32,0)"]
	[eval exp="kag.back.layers[5].type = ltAlpha"]
	[eval exp="kag.back.layers[5].fillRect(0,0,32,32,0)"]
[freeimage layer=base page=back]

[iscript]
	for(var i=0 ; i<5 ; i++){
		kag.fore.layers[i].left = 0;
		kag.fore.layers[i].top  = 0;
		kag.back.layers[i].left = 0;
		kag.back.layers[i].top  = 0;
	}
[endscript]

;背景ムービー再生
[PlayBgMovie storage="title_bg.mpg" layer=0]
[if exp="sf.effectAnime==1"]
[else]
	[pausevideo slot=0]
[endif]

;ＢＧＭ再生
[playbgm storage="bgm_title"]

*title2
[eval exp="kag.disableMessageWindowHide = 1"]
[eval exp="f.titleflg=1"]

; メッセージレイヤ 0-2 を非表示にする
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]
[layopt layer="message2" visible=false]

; メッセージレイヤ 3 を使う
[position layer="message3" page=back left=0 top=0 width=800 height=600 color=0x000000 margint=0 marginl=0 opacity=0 frame=_tr]
[layopt   layer="message3" page=back visible=true]
[current  layer="message3" page=back]

*title3
[er]
[eval exp="f.titleflg=1"]

[if exp="f.titleScreenControl==0"]
	[image page=back layer=1 storage="title_bg" left=0 visible=true]
;	[ChrSet1 storage="title_bg" pos=c]
	[UpDate]
	[image page=back layer=1 storage="title_bg2" left=0 visible=true]
;	[ChrSet1 storage="title_bg2" pos=c]

[else]
;	[ChrSet1 storage="title_bg2" pos=c]
	[image page=back layer=1 storage="title_bg2" left=0 visible=true]
[endif]

[locate x=875 y=508][button special=true graphic=title_start      clickse=sys_decide target=*start]
[locate x=875 y=548][button special=true graphic=title_load       clickse=sys_decide target=*load]
[locate x=875 y=588][button special=true graphic=title_config     target=*config]
[locate x=875 y=628][button special=true graphic=title_omake      clickse=sys_decide target=*omake]
[locate x=875 y=668][button special=true graphic=title_exit       clickse=sys_decide target=*exit]

[locate x=190 y=656][button special=true clickse=sys_decide graphic=title_intoro1 target=*goto_mille-feuille]
[locate x=190 y=688][button special=true clickse=sys_decide graphic=title_intoro2 target=*goto_ktc]
[locate x=190 y=720][button special=true clickse=sys_decide graphic=title_intoro3 target=*goto_gendertf]

;タイトルコール
[playse storage="a9002" buf=2 cond="tf.cancelTitleCall==0"]
[eval exp="tf.cancelTitleCall=1"]

[DisableClick]
[trans method=crossfade time=500 cond="f.titleScreenControl==1" canskip=false]
[trans method=crossfade time=200 cond="f.titleScreenControl==0" canskip=false][wt]
[EnableClick]

[if exp="tf.debugMode==1"]
	[eval exp="kag.fore.layers[1].font.height=30"]
	[eval exp="kag.fore.layers[1].drawText(1000,726,'デバッグモード',0xff0044,255,1,255,0,2,2,2)"]
[endif]

[eval exp="f.titleScreenControl=1"]
[rclick enabled=false jump=false]

[s]
[jump target="*title3"]


*omake
[er]

[locate x=875 y=548][button special=true clickse=sys_decide graphic=title_cgMode  rightclick=*modoru target=*cgMode]
[locate x=875 y=588][button special=true clickse=sys_decide graphic=title_kaisou  rightclick=*modoru target=*kaisou]
[locate x=875 y=628][button special=true clickse=sys_decide graphic=title_bgmMode rightclick=*modoru target=*bgmMode]
[locate x=875 y=668][button special=true clickse=sys_decide graphic=title_modoru target=*modoru rightclick=*modoru]

[DisableClick]
[trans method=crossfade time=500]
[wt canskip=false]
[EnableClick]

[rclick enabled=true jump=true target="*modoru"]

[s]
[jump target="*omake"]


*modoru
[er]
[DisableClick]
[rclick enabled=true *jump=false]
[jump target="*title3"]


*start

[er]

;;ムービー後処理
[StopBgMovie]

[backlay]
[layopt   layer=message3 page=back visible=false]
[position layer=message0 page=back visible=false left=0   top=574 marginl=0   margint=0 frame="messagewindow1"]
[position layer=message1 page=back visible=false left=0   top=574 marginl=404 margint=4 marginr=210 frame="messagewindow2"]
[position layer=message2 page=back visible=false left=200 top=585 marginl=0   margint=0 height=136  opacity=0]
[position layer=message3 page=back visible=true  left=0   top=0   marginl=0   margint=0 frame="" opacity=0]
[current page=fore layer="message1"]

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

[wait time=500 cond="tf.debugMode==0"]

[rclick enabled=true *jump=false]
[history enabled=true]
[eval exp="kag.disableMessageWindowHide = 0"]

[eval exp="f.titleflg=0"]
[eval exp="tf.cancelTitleCall=0"]
[eval exp="f.titleScreenControl=0"]
[eval exp="f.enableWheel = 1"]

[eval exp="kag.fore.layers[5].absolute = 6000"]
[eval exp="kag.back.layers[5].absolute = 6000"]

;通過履歴を初期化
[eval exp="kag.historyOfStore=[]"]
[eval exp="kag.historyOfStore2=[]"]

;メニュー項目の有効化
[eval exp="kag.menuEnabled=true"]


[jump storage="1-01.ks" cond="tf.debugMode==0"]
[jump target="*debugmode"]


*debugmode|開始点
[cm]
[record]
[eval exp="f.chaptertitle='デバッグモード'"]

[BgSet storage="_black"][UpDate]
[WindowOff]

*選択肢０
;通過履歴を初期化
[eval exp="kag.historyOfStore=[]"]
[SelectStart option=6]
[SelectOption target=*選択肢０ａ num=1 text="『第１章』"]
[SelectOption target=*選択肢０ｂ num=2 text="『第２章』"]
[SelectOption target=*選択肢０ｃ num=3 text="『第３章』"]
[SelectOption target=*選択肢０ｄ num=4 text="『第４章』"]
[SelectOption target=*選択肢０ｅ num=5 text="『第５章』"]
[SelectOption target=*選択肢０ｆ num=6 text="次へ"]
[SelectEnd]

*選択肢０ａ
[OptionTarget num=1 visible=false]

[WindowOff]
[jump storage="1-01.ks"]

*選択肢０ｂ
[OptionTarget num=2 visible=false]

[WindowOff]
[jump storage="2-01.ks"]

*選択肢０ｃ
[OptionTarget num=3 visible=false]

[WindowOff]
[jump storage="3-01.ks"]

*選択肢０ｄ
[OptionTarget num=4 visible=false]

[WindowOff]
[jump storage="4-01.ks"]

*選択肢０ｅ
[OptionTarget num=5 visible=false]

[WindowOff]
[jump storage="5-01.ks"]

*選択肢０ｆ
[OptionTarget num=6 visible=false]


*選択肢１
;通過履歴を初期化
[eval exp="kag.historyOfStore=[]"]
[SelectStart option=6]
[SelectOption target=*選択肢１ａ num=1 text="『第６章』"]
[SelectOption target=*選択肢１ｂ num=2 text="『第７章』"]
[SelectOption target=*選択肢１ｃ num=3 text="『第８章』"]
[SelectOption target=*選択肢１ｄ num=4 text="『第９章』"]
[SelectOption target=*選択肢１ｅ num=5 text="『フラグ操作』"]
[SelectOption target=*選択肢１ｆ num=6 text="戻る"]
[SelectEnd]

*選択肢１ａ
[OptionTarget num=1 visible=false]

[WindowOff]
[jump storage="6-01.ks"]

*選択肢１ｂ
[OptionTarget num=2 visible=false]

[WindowOff]
[jump storage="7-01.ks"]

*選択肢１ｃ
[OptionTarget num=3 visible=false]

[WindowOff]
[jump storage="8-01.ks"]

*選択肢１ｄ
[OptionTarget num=4 visible=false]

[WindowOff]
[jump storage="9-01.ks"]

*選択肢１ｅ
[OptionTarget num=5 visible=false]

[jump target="*選択肢２"]

*選択肢１ｆ
[OptionTarget num=6 visible=false]
[jump target="*選択肢０"]


*選択肢２
;通過履歴を初期化
[eval exp="kag.historyOfStore=[]"]
[SelectStart option=5]
[SelectOption target=*選択肢２ａ num=1 text="『おまけモードオープンフラグ操作』"]
[SelectOption target=*選択肢２ｂ num=2 text="『追加シナリオオープンフラグ操作』"]
[SelectOption target=*選択肢２ｃ num=3 text="『ＣＧオープンフラグクリア』"]
[SelectOption target=*選択肢２ｄ num=4 text="『回想オープンフラグクリア』"]
[SelectOption target=*選択肢２ｅ num=5 text="戻る"]
[SelectEnd]


*選択肢２ａ
[OptionTarget num=1 visible=false]
;通過履歴を初期化
[eval exp="kag.historyOfStore=[]"]
[SelectStart option=3]
[SelectOption target=*選択肢２ａａ num=1 text="『おまけモードオープンフラグＯＮ』"]
[SelectOption target=*選択肢２ａｂ num=2 text="『おまけモードオープンフラグＯＦＦ』"]
[SelectOption target=*選択肢２ａｃ num=3 text="戻る"]
[SelectEnd]

*選択肢２ａａ
[OptionTarget num=1 visible=false]
[eval exp="sf.extraModeOpenFlag=1"]
[jump target="*選択肢０"]

*選択肢２ａｂ
[OptionTarget num=2 visible=false]
[eval exp="sf.extraModeOpenFlag=0"]
[jump target="*選択肢０"]

*選択肢２ａｃ
[OptionTarget num=3 visible=false]
[jump target="*選択肢２"]


*選択肢２ｂ
[OptionTarget num=2 visible=false]
;通過履歴を初期化
[eval exp="kag.historyOfStore=[]"]
[SelectStart option=3]
[SelectOption target=*選択肢２ｂａ num=1 text="『追加シナリオオープンフラグＯＮ』"]
[SelectOption target=*選択肢２ｂｂ num=2 text="『追加シナリオオープンフラグＯＦＦ』"]
[SelectOption target=*選択肢２ｂｃ num=3 text="戻る"]
[SelectEnd]

*選択肢２ｂａ
[OptionTarget num=1 visible=false]
[eval exp="sf.throughTrueEnd=1"]
[jump target="*選択肢０"]

*選択肢２ｂｂ
[OptionTarget num=2 visible=false]
[eval exp="sf.throughTrueEnd=0"]
[jump target="*選択肢０"]

*選択肢２ｂｃ
[OptionTarget num=3 visible=false]
[jump target="*選択肢２"]


*選択肢２ｃ
[OptionTarget num=2 visible=false]
;通過履歴を初期化
[eval exp="kag.historyOfStore=[]"]
[SelectStart option=2]
[SelectOption target=*選択肢２ｃａ num=1 text="『ＣＧオープンフラグをクリアします』"]
[SelectOption target=*選択肢２ｃｂ num=2 text="戻る"]
[SelectEnd]

*選択肢２ｃａ
[OptionTarget num=1 visible=false]
[eval exp="sf.cgOpenFlag=%[]"]
[jump target="*選択肢０"]

*選択肢２ｃｂ
[OptionTarget num=2 visible=false]
[jump target="*選択肢２"]


*選択肢２ｄ
[OptionTarget num=2 visible=false]
;通過履歴を初期化
[eval exp="kag.historyOfStore=[]"]
[SelectStart option=2]
[SelectOption target=*選択肢２ｄａ num=1 text="『回想オープンフラグをクリアします』"]
[SelectOption target=*選択肢２ｄｂ num=2 text="戻る"]
[SelectEnd]

*選択肢２ｄａ
[OptionTarget num=1 visible=false]
[eval exp="sf.kaisouOpenFlag=%[]"]
[jump target="*選択肢０"]

*選択肢２ｄｂ
[OptionTarget num=3 visible=false]
[jump target="*選択肢２"]

*選択肢２ｅ
[OptionTarget num=5 visible=false]
[jump target="*選択肢０"]


*load
[eval exp="f.titleflg=0"]
[eval exp="f.rclickmode = 1"]
[current layer="message3" page=back]
[call storage="save_load.ks" target="*rclick"]
[eval exp="f.titleScreenControl=1"]

[jump target="*title3"]

*config
;[position layer="message3" page=back left=0 top=0 width=800 height=600 color=0x000000 opacity=0 frame=""]
;[image page=back layer=1 storage=title_bg3 left=0 top=0]
;[layopt page=back layer=1 visible=true]
;[update time=0]

[eval exp="tf.configOpen=1"]

[eval exp="f.rclickmode = 0"]
[call storage="configmenu.ks"]

[freeimage page=back layer=1]
[position layer="message3" page=back left=0 top=0 width=800 height=600 color=0x000000 margint=0 marginl=0 opacity=0 frame=_tr]
[layopt   layer="message3" page=back visible=true]
[current  layer="message3" page=back]

[eval exp="f.titleScreenControl=1"]
[jump target="*title3"]


*cgMode
[eval exp="f.titleflg=0"]
[eval exp="f.extraMode=1"]
[eval exp="f.cgModePage=1"]
[call storage="0-11.ks"]
[jump target="*return_from_extra"]


*kaisou
[eval exp="f.titleflg=0"]
[eval exp="f.extraMode=1"]
[eval exp="f.inKaisouMode=1"]
[eval exp="f.kaisouPage=1"]
[eval exp="f.chaptertitle='回想モード'"]

;ラベル通過時のデータ記録を強制する
[eval exp="kag.nextRecordHistory=true"]

[call storage="0-21.ks"]
[eval exp="kag.nextRecordHistory=false"]

[jump target="*return_from_extra"]


*bgmMode
[fadeoutbgm time=1000]

[eval exp="f.titleflg=0"]
[eval exp="f.extraMode=1"]
[call storage="0-31.ks"]
[playbgm storage="bgm_title"]
[jump target="*return_from_extra"]


*charaMode
[eval exp="f.titleflg=0"]
[eval exp="f.extraMode=1"]
[call storage="0-51.ks"]
[jump target="*return_from_extra"]


*movieMode
[eval exp="f.titleflg=0"]
[eval exp="f.extraMode=1"]
[call storage="0-61.ks"]
[jump target="*return_from_extra"]


*return_from_extra

[eval exp="kag.disableMessageWindowHide = 1"]
[eval exp="f.titleflg=1"]
[eval exp="f.extraMode=0"]
[eval exp="f.titleScreenControl=1"]

;メニュー項目の無効化
[eval exp="kag.menuEnabled=false"]

; メッセージレイヤ 0-2 を非表示にする
[layopt layer="message0" visible=false]
[layopt layer="message1" visible=false]
[layopt layer="message2" visible=false]

;[freeimage layer=0 page=back]
;[freeimage layer=1 page=back]
;[freeimage layer=2 page=back]
;[freeimage layer=3 page=back]
;[freeimage layer=4 page=back]
;[freeimage layer=5 page=back]

; メッセージレイヤ 3 を使う
[position layer="message3" page=back left=0 top=0 width=800 height=600 color=0x000000 margint=0 marginl=0 opacity=0 frame=_tr]
[layopt   layer="message3" page=back visible=true]
[current  layer="message3" page=back]
[image page=back layer=1 storage="title_bg2" left=0 visible=true]

[jump target="*omake"]



; ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


*intoro_mille-feuille
[call storage="0-41.ks"]
[position layer="message3" page=back left=0 top=0 width=1366 height=768 color=0x000000 margint=0 marginl=0 opacity=0 frame=_tr]
[image layer=1 page=back storage="intoro_mille-feuille_bg" left=0 top=0]
[layopt layer=1 page=back visible=true]
[layopt   layer="message3" page=back visible=true]
[current  layer="message3" page=back]
[locate x=252  y=678][button clickse=sys_decide recthit=false rightclick=*modoru_from_intoro_mille-feuille graphic=intoro_weblink_mille-feuille target=*goto_mille-feuille]
[locate x=699  y=676][button clickse=sys_decide recthit=false rightclick=*modoru_from_intoro_mille-feuille graphic=intoro_weblink_ktc           target=*goto_ktc]
[locate x=1093 y=678][button clickse=sys_decide recthit=false rightclick=*modoru_from_intoro_mille-feuille graphic=intoro_return                target=*modoru_from_intoro_mille-feuille]

[DisableClick][UpDate time="500"][EnableClick]
[eval exp="f.titleScreenControl=1"]
[rclick enabled=true jump=true target="*modoru_from_intoro_mille-feuille"]

[freeimage layer=1 page=back]
[eval exp="intoro_object.init()"]
[s]


*modoru_from_intoro_mille-feuille
[eval exp="f.titleScreenControl=1"]
[mapdisable layer=1 page=fore]
[mapdisable layer=1 page=base]
[eval exp="global.intoro_object.intoroHide()"]
[freeimage layer=1 page=back]
[jump target="*title2"]


*intoro_novels
[position layer="message3" page=back left=0 top=0 width=1366 height=768 color=0x000000 margint=0 marginl=0 opacity=0 frame=intoro_novels_bg]
[layopt layer="message3" page=back visible=true]
[current layer="message3" page=back]
[locate x=699  y=676][button clickse=sys_decide rightclick=*title2 recthit=false graphic=intoro_weblink_ktc target=*goto_ktc]
[locate x=1093 y=678][button clickse=sys_decide rightclick=*title2 recthit=false graphic=intoro_return      target=*modoru_from_2d]

[DisableClick][UpDate time="500"][EnableClick]
[eval exp="f.titleScreenControl=1"]
;[rclick enabled=true jump=true target="*intoro_nijigen"]
[rclick enabled=true jump=true target="*title2"]

[s]


*intoro_comics
[position layer="message3" page=back left=0 top=0 width=1366 height=768 color=0x000000 margint=0 marginl=0 opacity=0 frame=intoro_comics_bg]
[layopt layer="message3" page=back visible=true]
[current layer="message3" page=back]
[locate  x=699 y=676][button clickse=sys_decide rightclick=*title2 recthit=false graphic=intoro_weblink_ktc target=*goto_ktc]
[locate x=1093 y=678][button clickse=sys_decide rightclick=*title2 recthit=false graphic=intoro_return      target=*modoru_from_2d]

[DisableClick][UpDate time="500"][EnableClick]
[eval exp="f.titleScreenControl=1"]
;[rclick enabled=true jump=true target="*intoro_nijigen"]
[rclick enabled=true jump=true target="*title2"]

[s]


*goto_mille-feuille
[eval exp="System.shellExecute('http://www.mille-feuille.jp/')"]
[unlocklink]
[eval exp="f.titleScreenControl=1"]
[jump target="*title2"]
[s]


*goto_ktc
[eval exp="System.shellExecute('http://ktcom.jp/')"]
[unlocklink]
[eval exp="f.titleScreenControl=1"]
[jump target="*title2"]
[s]


*goto_gendertf
[eval exp="System.shellExecute('http://gender.tf/')"]
[unlocklink]
[eval exp="f.titleScreenControl=1"]
[jump target="*title2"]
[s]


*modoru_from_2d
[eval exp="f.titleScreenControl=1"]
[jump target="*title2"]

*exit
;[call storage="yesnodialog.ks" target="*ask_yesno"]
;[close ask=no cond="tf.result==true"]
[close]
[eval exp="f.titleScreenControl=1"]
[jump target="*title3"]

