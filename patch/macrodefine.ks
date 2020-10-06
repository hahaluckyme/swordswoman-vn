
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

;マクロの設定

;[eruby text="かんじ" str="漢字"]


;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

[macro name=elseif]
	[elsif]
[endmacro]

[macro name=DisableClick]
	[eval exp="kag.fore.base.disabledInTrans=true"]
	[eval exp="kag.back.base.disabledInTrans=true"]
[endmacro]
[macro name=EnableClick]
	[eval exp="kag.fore.base.disabledInTrans=false"]
	[eval exp="kag.back.base.disabledInTrans=false"]
[endmacro]

;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

;改行、キー待ちのマクロ設定
[macro name=CR]
	[r]
[endmacro]
[macro name=CR2]
	[history output=false]
	[r]
	[history output=true]
[endmacro]

[macro name=ExecAfterLoad]
	[if exp="f.nowPlayingEventMovie==''"]
		[if exp="f.nowShowingCg != ''"]
			[eval exp="tf.cg = (f.nowShowingCgAlt!='' && sf.アヘ顔表示無し)? f.nowShowingCgAlt : f.nowShowingCg"]
			[image storage=&tf.cg page=back layer=base]
			[image storage=&tf.cg page=fore layer=base]
		[endif]
	[else]
		[eval exp="kag.movies[!f.nowForeSlot].audioVolume=0"]
		[eval exp="kag.movies[f.nowForeSlot].audioVolume=f.volumeMatrix[sf.seVolume]*1000"]
		[eval exp="kag.movies[f.nowForeSlot].audioVolume=0" cond="sf.seMute==1"]
		[if exp="sf.effectMovieMode==0"]
			[if exp="kag.movies[0].lastStatus=='play'"]
				[wait time=100 cond="sf.effectMovieMode==0"]
				[pausevideo  slot=0 cond="sf.effectMovieMode==0"]
			[endif]
		[endif]
	[endif]

	[if exp="f.inHScene==1"]
		[if exp="sf.showExtasyCount==1"]
			[eval exp="kag.foreExtasyCountLayer.show()"]
			[eval exp="kag.backExtasyCountLayer.show()"]
		[else]
			[eval exp="kag.foreExtasyCountLayer.hide()"]
			[eval exp="kag.backExtasyCountLayer.hide()"]
		[endif]
	[endif]

	[eval exp="tf.afterLoad=false"]
;	[playse buf=2 storage="dummy" cond="f.exVoice1!='' && (f.ボイス再生行==0 || +f.voicePlayBuf!=2) && kag.se[4].status!='play'"]
;	[playse buf=5 storage="dummy" cond="f.exVoice2!='' && (f.ボイス再生行==0 || +f.voicePlayBuf!=5) && kag.se[6].status!='play'"]
	[playse buf=2 storage="dummy" cond="f.exVoice1!='' && (f.ボイス再生行==0 || +f.voicePlayBuf!=2) && tf.exVoice1StartFlag==0"]
	[playse buf=5 storage="dummy" cond="f.exVoice2!='' && (f.ボイス再生行==0 || +f.voicePlayBuf!=5) && tf.exVoice2StartFlag==0"]
[endmacro]

[macro name=KeyWait]
	[endindent]

	;ロード直後の処理
	[ExecAfterLoad cond="tf.afterLoad==true"]

	[eval exp="tf.automodeflag=kag.autoMode"]
	[eval exp="tf.currentLabelName = kag.currentLabel"]

	;未読部分でスキップをキャンセル
	[cancelskip cond="kag.skipMode == 4 && sf.skipOnlyAlreadyRead == 1 && !kag.getCurrentRead() && !kag.skipKeyRepressed && !f.nowExecKaisou"]

	[eval exp="tf.waitTime  = int( kag.textLength * kag.autoModeLineWait / 10 )"]
	[eval exp="tf.waitTime2 = 0"]
	[eval exp="tf.waitTime2 = int(( tf.voiceTime * kag.textLength / kag.toNextTextTotalCount) - kag.textLength * kag.userChSpeed)" cond="tf.voiceTime!==void"]
	;オート時の待ち
	[if exp="kag.autoMode"]
		[if exp="sf.waitVoiceEndInAutoMode==1"]
			[if exp="f.nowVoiceLine==1"]
				[ws buf=&f.voicePlayBuf canskip=true 	cond="f.voicePlayFlag==1"]
				[wait canskip=true time=&tf.waitTime	cond="f.voicePlayFlag==0"]
			[else]
				[wait canskip=true time=&tf.waitTime]
			[endif]
		[else]
			[wait canskip=true time=&tf.waitTime  cond="tf.waitTime >= tf.waitTime2"]
			[wait canskip=true time=&tf.waitTime2 cond="tf.waitTime <  tf.waitTime2"]
		[endif]
	[endif]

;	[eval exp ="dm('オートプレイ待ち時間 : ' + kag.textLength + ' / ' + kag.toNextTextTotalCount)"]

	;クリック待ち
	[eval exp="tf.nowKeyWait=1"]
;	[eval exp="kag.isExistentVoiceInNext=0"]
	[l]
	[eval exp="tf.nowKeyWait=0"]
	[eval exp="kag.current.hideIndicatorLayer()"]

	;最初にオートになったときの待ち
	[if exp="kag.autoMode && tf.automodeflag==0"]
		[if exp="sf.waitVoiceEndInAutoMode==1"]
			[if exp="f.nowVoiceLine==1"]
				[ws buf=&f.voicePlayBuf canskip=true 	cond="f.voicePlayFlag==1"]
				[wait canskip=true time=&tf.waitTime	cond="f.voicePlayFlag==0"]
			[else]
				[wait canskip=true time=&tf.waitTime]
			[endif]
		[else]
			[wait canskip=true time=&tf.waitTime  cond="tf.waitTime >= tf.waitTime2"]
			[wait canskip=true time=&tf.waitTime2 cond="tf.waitTime <  tf.waitTime2"]
		[endif]
	[endif]

	[eval exp="f.nowVoiceLine=0"]

	[stopse buf=&f.voicePlayBuf cond="sf.voiceStopAtClick == 1"]
	[r][ct][r][ct]

	[label]

	[eval exp="f.ボイス再生行 = 0"]
	[eval exp="kag.textLength=0"]
	[eval exp="tf.currentLabelName = void"]
	[current layer="message1"]

[endmacro]

[macro name=KeyWaitStay]
	[ws buf=&f.voicePlayBuf canskip=true cond="kag.autoMode&&f.nowVoiceLine==1"]
	[l]
	[stopse buf=&f.voicePlayBuf cond="sf.voiceStopAtClick==1&&f.nowVoiceLine==1"]
[endmacro]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


;外字

[iscript]

class GaijiClass{
	var alt;
	var storage = new Array();

	function GaijiClass(t, s1, s2){
		alt = t;
		storage[0] = s1;
		storage[1] = s2;
	}

	function finalize(){
		invalidate storage;
	}
}

var gaiji = new Array();
gaiji[0] = new GaijiClass("①", "char1a", "char1b");

[endscript]

[macro name=hearts]
	[eval exp="tf.tmp1=gaiji[0].storage[kag.fore.messages[2].antialiased]"]
	[eval exp="tf.tmp2=gaiji[0].alt"]
	[if exp="kag.getCurrentRead()&&kag.changeColorAlreadyReadText&&!f.nowExecKaisou"]
;		[font color="0x00ffff"][graph storage=&tf.tmp1 alt=&tf.tmp2][resetfont]
		[graph storage=&tf.tmp1 alt=&tf.tmp2 color=0x00ffff]
	[else]
		[graph storage=&tf.tmp1 alt=&tf.tmp2 color=0xffffff]
	[endif]
[endmacro]


;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

;インデントのエイリアス
[macro name=i]
	[indent]
[endmacro]
[macro name=/i]
	[endindent]
[endmacro]

[macro name=ita]
	[mappfont storage="MolengoItalics.tft"]
	;@font italic=true
[endmacro]
[macro name=endita]
	[mappfont storage="Molengo.tft"]
	;@font italic=false
[endmacro]

[macro name=bold]
	@font bold=true
[endmacro]
[macro name=endbold]
	@font bold=false
[endmacro]

[macro name=save]
	[eval exp="kag.saveBookMark(49,1)"]
	[eval exp="kag.scflags.bookMarkComments[49] = f.chaptertitle;"]
	[eval exp="kag.scflags.bookMarkChapterName[49] = f.chaptertitle;"]				
[endmacro]

;―――――――――――――――――――――――――――――

;地の文表示
[macro name=text]
	[history output=false]
	[r]
	[history output=true]
	　[i]
[endmacro]

;―――――――――――――――――――――――――――――

;ルビの履歴画面用
[macro name=RubyHyst]
	[eval exp="kag.historyLayer.store(mp.text)"]
[endmacro]


;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

;システムボタン表示
[macro name=SysBtnOn]
	[backlay]
	[sysbtopt backvisible=true]
	[trans method=crossfade time=100]
	[wt]
[endmacro]

;システムボタン非表示
[macro name=SysBtnOff]
	[backlay]
	[sysbtopt backvisible=false]
	[trans method=crossfade time=100]
	[wt]
[endmacro]

;―――――――――――――――――――――――――――――

;メッセージウィンドウとシステムボタン消去
[macro name=WindowOff]
	[eval exp="tf.tmp=kag.rightClickEnabled"]
	[rclick enabled=false]
	[backlay]
	[sysbtopt backvisible=false]
	[layopt layer=message0 page=back visible=false]
	[layopt layer=message1 page=back visible=false]
	[trans method=crossfade time=500   cond="(mp.time==void)&&(sf.effectFade==1)"]
	[trans method=crossfade time=%time cond="(mp.time!=void)&&(sf.effectFade==1)"]
	[trans method=crossfade time=0     cond="sf.effectFade==0"]
	[wt]
	[rclick enabled=&tf.tmp]
[endmacro]

[macro name=WindowOn]
	[WindowOnBottom time=%time|500 cond="f.windowTopNow==0"]
	[WindowOnTop time=%time|500 cond="f.windowTopNow==1"]
[endmacro]

;メッセージウィンドウとシステムボタン表示（通常）
[macro name=WindowOnBottom]
	[eval exp="tf.tmp=kag.rightClickEnabled"]
	[rclick enabled=false]
	[backlay]
	[eval exp="global.systembutton_object.winUpDownBttonSetNormal()"]
	[sysbtopt backvisible=true align=bottom]
	[layopt   layer=message0 page=back visible=true top=574 opacity=&sf.messageWindowOpacity]
	[layopt   layer=message1 page=back visible=true top=574 opacity=255]
	[trans method=crossfade time=500   cond="(mp.time==void)&&(sf.effectFade==1)&&(kag.skipMode!=4)"]
	[trans method=crossfade time=%time cond="(mp.time!=void)&&(sf.effectFade==1)&&(kag.skipMode!=4)"]
	[trans method=crossfade time=0     cond="(sf.effectFade==0)||(kag.skipMode==4)"]
	[wt]
	[eval exp="f.windowTopNow=0"]
	[rclick enabled=&tf.tmp]
	[label]
[endmacro]

;メッセージウィンドウとシステムボタン表示（上部）
[macro name=WindowOnTop]
	[eval exp="tf.tmp=kag.rightClickEnabled"]
	[rclick enabled=false]
	[eval exp="sf.windowTop=1"]
	[backlay]
	[eval exp="global.systembutton_object.winUpDownBttonSetHigh()"]
	[sysbtopt backvisible=true align=top]
	[layopt   layer=message0 page=back visible=true top=8 opacity=&sf.messageWindowOpacity]
	[layopt   layer=message1 page=back visible=true top=8 opacity=255]
	[trans method=crossfade time=500   cond="(mp.time==void)&&(sf.effectFade==1)"]
	[trans method=crossfade time=%time cond="(mp.time!=void)&&(sf.effectFade==1)"]
	[trans method=crossfade time=0     cond="sf.effectFade==0"]
	[wt]
	[eval exp="f.windowTopNow=1" cond="sf.windowAutoMove==1"]
	[rclick enabled=&tf.tmp]
	[label]
[endmacro]

;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

;背景表示
[macro name=BgSet]
	[eval exp="layerMoveStop(0)"]
	[eval exp="layerMoveStop(1)"]
	[eval exp="layerMoveStop(2)"]
	[eval exp="f.nowShowingCg = ''"]
	[eval exp="f.nowShowingCgAlt = ''"]
	[eval exp="kag.nowExistCutin = 0"]
	[eval exp="kag.nowShowCutin = 0"]
	[eval exp="f.shoukoLayer=-1"]
	[eval exp="f.nowShowingBG=mp.storage"]
	[freeimage layer=0 page=back]
	[freeimage layer=1 page=back]
	[freeimage layer=2 page=back]
	[ResetLayer layer=3 page=back]
	[ResetLayer layer=4 page=back]
	[freeimage layer=5 page=back]

	[image storage=%storage page=back layer=base]

;	[image storage=%storage page=back layer=5 visible=false]
;	[eval exp="tf.tmp=kag.back.layers[5]"]
;	[if exp="tf.tmp.imageWidth!=kag.back.base.width"]
;		[eval exp="kag.back.base.copyRect((kag.back.base.width-tf.tmp.imageWidth)\2,0,tf.tmp,0,0,tf.tmp.imageWidth,tf.tmp.imageHeight)"]
;	[else]
;		[eval exp="kag.back.base.copyRect(0,0,tf.tmp,0,0,tf.tmp.imageWidth,tf.tmp.imageHeight)"]
;	[endif]
;	[freeimage layer=5 page=back]

;	[eval exp="systembutton_object.hideCutinButton()"]
[endmacro]

[iscript]
function checkPlace(storage){

	if(+storage.substring(4,1)==1){
		f.gamma = [1.1, 0.9, 1.0];
	}else if(+storage.substring(4,1)==2){
		f.gamma = [0.8, 0.8, 1.0];
	}else{
		f.gamma = [1.0, 1.0, 1.0];
	}
}

function getShoukoGlassLess(storage){
	return Storages.getPlacedPath(Storages.chopStorageExt(storage) + "@.png");
}

function getHairLess(storage){
	return Storages.getPlacedPath(Storages.chopStorageExt(storage) + "#.png");
}

[endscript]

;イベントＣＧ表示
[macro name=CgSet]
	;翔子の立ちキャラが今どのレイヤーに表示されているか
	;（イベントＣＧを表示するので、当然非表示である）
	[eval exp="f.shoukoLayer=-1"]
	[eval exp="kag.nowShowCutin=0"]
	[eval exp="f.nowShowingBG=''"]
	[eval exp="sf.cgOpenFlag[mp.storage.toLowerCase()] = 1"]

	[eval exp="f.nowShowingCg = mp.storage"]
	[eval exp="f.nowShowingCgAlt = (mp.alt!==void)? mp.alt : ''"]
	[eval exp="tf.cg = (f.nowShowingCgAlt!='' && sf.アヘ顔表示無し)? f.nowShowingCgAlt : f.nowShowingCg"]


	[if exp="mp.moviemode===void || (+mp.moviemode==true && sf.effectMovieMode==0)"]

		[freeimage layer=0 page=back]
		[freeimage layer=1 page=back]
		[freeimage layer=2 page=back]
		[ResetLayer layer=3]
		[ResetLayer layer=4]
		[freeimage layer=5 page=back]
		[image storage=&(tf.cg) page=back layer=base]

	;	[if exp="kag.nowExistCutin==true"]
	;		[if exp="sf.showCutin==true"]
	;			[image layer=3 page=back visible=true  left=0 storage=&(mp.storage+'@')]
	;			[eval exp="kag.nowShowCutin=1"]
	;		[else]
	;			[image layer=3 page=back visible=false left=0 storage=&(mp.storage+'@')]
	;			[eval exp="kag.nowShowCutin=0"]
	;		[endif]
	;		[eval exp="systembutton_object.showCutinButton()"]
	;	[else]
	;		[eval exp="systembutton_object.hideCutinButton()"]
	;	[endif]

		[if exp="getShoukoGlassLess(tf.cg)!=''"]
			[image layer=3 page=back visible=&sf.翔子眼鏡無し left=0 storage=&(tf.cg+'@')]
		[endif]
		[if exp="getHairLess(tf.cg)!=''"]
			[image layer=4 page=back visible=&sf.陰毛表示無し left=0 storage=&(tf.cg+'#')]
		[endif]

		[UpDate cond="+mp.moviemode==true"]

	[endif]

[endmacro]

[macro name="CgOpenFlagSet"]
	[eval exp="sf.cgOpenFlag[mp.storage.toLowerCase()] = 1"]
[endmacro]

[macro name="ResetLayer"]
	[freeimage layer=%layer page=%page|back]
	[eval exp="kag.back.layers[+mp.layer].type = ltAlpha"]
	[eval exp="kag.back.layers[+mp.layer].fillRect(0,0,32,32,0)"]
[endmacro]

;Ｈシーンの開始と終了
[macro name=HSceneStart]
	[ExtasyCount]
	[eval exp="kag.foreExtasyCountLayer.update()"]
	[eval exp="kag.backExtasyCountLayer.update()"]
	[eval exp="kag.foreExtasyCountLayer.show()" cond="sf.showExtasyCount==1"]
	[eval exp="kag.backExtasyCountLayer.show()" cond="sf.showExtasyCount==1"]
	[eval exp="f.inHScene = 1"]
[endmacro]
[macro name=HSceneEnd]
	[ExtasyCountCancel]
	[eval exp="kag.foreExtasyCountLayer.update()"]
	[eval exp="kag.backExtasyCountLayer.update()"]
	[eval exp="kag.foreExtasyCountLayer.hide()"]
	[eval exp="kag.backExtasyCountLayer.hide()"]
	[eval exp="f.inHScene = 0"]
[endmacro]

[macro name=Extasy]
	[ExtasyMale]
	[ExtasyFemale]
[endmacro]
[macro name=ExtasyF]
	[ExtasyFemale]
[endmacro]
[macro name=ExtasyM]
	[ExtasyMale]
[endmacro]

[macro name=ExtasyCount]
	[eval exp="kag.extasyCheckConductor.assign(kag.conductor)"]
	[eval exp="kag.extasyCheckConductor.getCount()"]
[endmacro]

;キャラ表示（レイヤー０）
[macro name=ChrSet0]
	[backlay layer=0]
	[layopt layer=0 page=back opacity=255 visible=true]

	[eval exp="tf.shoukoGlassLess = getShoukoGlassLess(mp.storage)"]
	[eval exp="f.shoukoLayer=0" cond="tf.shoukoGlassLess!=''"]

	[if exp="+mp.changecolor==true"]
		[eval exp="checkPlace(f.nowShowingBG)"]
		[eval exp="tf.rgamma = f.gamma[0]"]
		[eval exp="tf.ggamma = f.gamma[1]"]
		[eval exp="tf.bgamma = f.gamma[2]"]
	[else]
		[eval exp="tf.rgamma = 1.0"]
		[eval exp="tf.ggamma = 1.0"]
		[eval exp="tf.bgamma = 1.0"]
	[endif]


	[if exp="mp.left===void"]
		[if exp="getHairLess(mp.storage)!='' && sf.陰毛表示無し"]
			[image layer=0 page=back visible=true storage=&(mp.storage+'#') pos=%pos|c rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[if exp="tf.shoukoGlassLess!=''"]
				[image layer=3 page=back visible=&sf.翔子眼鏡無し storage=&(mp.storage+'@') pos=%pos|c rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[else]
				[ResetLayer layer=3 page=back]
			[endif]
		[else]
			[image layer=0 page=back visible=true storage=%storage pos=%pos|c rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[if exp="tf.shoukoGlassLess!=''"]
				[image layer=3 page=back visible=&sf.翔子眼鏡無し storage=&(mp.storage+'@') pos=%pos|c rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[else]
				[ResetLayer layer=3 page=back]
			[endif]
		[endif]
	[else]
		[if exp="getHairLess(mp.storage)!='' && sf.陰毛表示無し"]
			[image layer=0 page=back visible=true storage=&(mp.storage+'#') left=%left rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[if exp="tf.shoukoGlassLess!=''"]
				[image layer=3 page=back visible=&sf.翔子眼鏡無し storage=&(mp.storage+'@') left=%left rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[else]
				[ResetLayer layer=3 page=back]
			[endif]
		[else]
			[image layer=0 page=back visible=true storage=%storage left=%left rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[if exp="tf.shoukoGlassLess!=''"]
				[image layer=3 page=back visible=&sf.翔子眼鏡無し storage=&(mp.storage+'@') left=%left rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[else]
				[ResetLayer layer=3 page=back]
			[endif]
		[endif]
	[endif]
[endmacro]

[iscript]
function layerMoveStop(layer)
{
	if(kag.fore.layers[layer].moveObject!==void){
		kag.fore.layers[layer].moveObject.stopMove();
	}
	if(kag.back.layers[layer].moveObject!==void){
		kag.back.layers[layer].moveObject.stopMove();
	}
}
[endscript]

;キャラ消去（レイヤー０）
[macro name=ChrReset0]
	[backlay layer=0]
	[freeimage layer=0 page=back]
	[if exp="f.shoukoLayer==0"]
		[freeimage layer=3 page=back]
		[eval exp="kag.back.layers[3].type = ltAlpha"]
		[eval exp="kag.back.layers[3].fillRect(0,0,32,32,0)"]
		[eval exp="f.shoukoLayer=-1"]
	[endif]
	[eval exp="layerMoveStop(0)"]
[endmacro]

;キャラ表示（レイヤー１）
[macro name=ChrSet1]
	[backlay layer=1]
	[layopt layer=1 page=back opacity=255 visible=true]
	[eval exp="tf.shoukoGlassLess = getShoukoGlassLess(mp.storage)"]
	[eval exp="f.shoukoLayer=1" cond="tf.shoukoGlassLess!=''"]

	[if exp="+mp.changecolor==true"]
		[eval exp="checkPlace(f.nowShowingBG)"]
		[eval exp="tf.rgamma = f.gamma[0]"]
		[eval exp="tf.ggamma = f.gamma[1]"]
		[eval exp="tf.bgamma = f.gamma[2]"]
	[else]
		[eval exp="tf.rgamma = 1.0"]
		[eval exp="tf.ggamma = 1.0"]
		[eval exp="tf.bgamma = 1.0"]
	[endif]

	[if exp="mp.left===void"]
		[if exp="getHairLess(mp.storage)!='' && sf.陰毛表示無し"]
			[image layer=1 page=back visible=true storage=&(mp.storage+'#') pos=%pos|lc rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[image layer=3 page=back visible=&sf.翔子眼鏡無し storage=&(mp.storage+'@') pos=%pos|lc rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma cond="tf.shoukoGlassLess!=''"]
		[else]
			[image layer=1 page=back visible=true storage=%storage pos=%pos|lc rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[image layer=3 page=back visible=&sf.翔子眼鏡無し storage=&(mp.storage+'@') pos=%pos|lc rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma cond="tf.shoukoGlassLess!=''"]
		[endif]
	[else]
		[if exp="getHairLess(mp.storage)!='' && sf.陰毛表示無し"]
			[image layer=1 page=back visible=true storage=&(mp.storage+'#') left=%left rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[image layer=3 page=back visible=&sf.翔子眼鏡無し storage=&(mp.storage+'@') left=%left rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma cond="tf.shoukoGlassLess!=''"]
		[else]
			[image layer=1 page=back visible=true storage=%storage left=%left rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[image layer=3 page=back visible=&sf.翔子眼鏡無し storage=&(mp.storage+'@') left=%left rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma cond="tf.shoukoGlassLess!=''"]
		[endif]
	[endif]
[endmacro]

;キャラ消去（レイヤー１）
[macro name=ChrReset1]
	[backlay layer=1]
	[freeimage layer=1 page=back]
	[if exp="f.shoukoLayer==1"]
		[freeimage layer=3 page=back]
		[eval exp="kag.back.layers[3].type = ltAlpha"]
		[eval exp="kag.back.layers[3].fillRect(0,0,32,32,0)"]
		[eval exp="f.shoukoLayer=-1"]
	[endif]
	[eval exp="layerMoveStop(1)"]
[endmacro]

;キャラ表示（レイヤー２）
[macro name=ChrSet2]
	[backlay layer=2]
	[layopt layer=2 page=back opacity=255 visible=true]
	[eval exp="tf.shoukoGlassLess = getShoukoGlassLess(mp.storage)"]
	[eval exp="f.shoukoLayer=2" cond="tf.shoukoGlassLess!=''"]

	[if exp="+mp.changecolor==true"]
		[eval exp="checkPlace(f.nowShowingBG)"]
		[eval exp="tf.rgamma = f.gamma[0]"]
		[eval exp="tf.ggamma = f.gamma[1]"]
		[eval exp="tf.bgamma = f.gamma[2]"]
	[else]
		[eval exp="tf.rgamma = 1.0"]
		[eval exp="tf.ggamma = 1.0"]
		[eval exp="tf.bgamma = 1.0"]
	[endif]

	[if exp="mp.left===void"]
		[if exp="getHairLess(mp.storage)!='' && sf.陰毛表示無し"]
			[image layer=2 page=back visible=true storage=&(mp.storage+'#') pos=%pos|rc rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[image layer=3 page=back visible=&sf.翔子眼鏡無し storage=&(mp.storage+'@') pos=%pos|rc rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma cond="tf.shoukoGlassLess!=''"]
		[else]
			[image layer=2 page=back visible=true storage=%storage pos=%pos|rc rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[image layer=3 page=back visible=&sf.翔子眼鏡無し storage=&(mp.storage+'@') pos=%pos|rc rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma cond="tf.shoukoGlassLess!=''"]
		[endif]
	[else]
		[if exp="getHairLess(mp.storage)!='' && sf.陰毛表示無し"]
			[image layer=2 page=back visible=true storage=&(mp.storage+'#') left=%left rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[image layer=3 page=back visible=&sf.翔子眼鏡無し storage=&(mp.storage+'@') left=%left rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma cond="tf.shoukoGlassLess!=''"]
		[else]
			[image layer=2 page=back visible=true storage=%storage left=%left rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma]
			[image layer=3 page=back visible=&sf.翔子眼鏡無し storage=&(mp.storage+'@') left=%left rgamma=&tf.rgamma ggamma=&tf.ggamma bgamma=&tf.bgamma cond="tf.shoukoGlassLess!=''"]
		[endif]
	[endif]
[endmacro]

;キャラ消去（レイヤー２）
[macro name=ChrReset2]
	[backlay layer=2]
	[freeimage layer=2 page=back]
	[if exp="f.shoukoLayer==2"]
		[freeimage layer=3 page=back]
		[eval exp="kag.back.layers[3].type = ltAlpha"]
		[eval exp="kag.back.layers[3].fillRect(0,0,32,32,0)"]
		[eval exp="f.shoukoLayer=-1"]
	[endif]
	[eval exp="layerMoveStop(2)"]
[endmacro]

;キャラ表示（レイヤー３）
[macro name=ChrSet3]
	[backlay layer=3]
	[layopt layer=3 page=back opacity=255 visible=true]
	[image layer=3 page=back storage=%storage visible=true pos=%pos|c]
[endmacro]

;キャラ消去（レイヤー３）
[macro name=ChrReset3]
	[backlay layer=3]
	[freeimage layer=3 page=back]
	[eval exp="kag.back.layers[3].type = ltAlpha"]
	[eval exp="kag.back.layers[3].fillRect(0,0,32,32,0)"]
[endmacro]

;画面更新
[macro name=UpDate]
	[trans method=crossfade time=0     cond="sf.effectFade==0"]
	[trans method=crossfade time=500   cond="(mp.time==void)&&(mp.rule==void)&&(sf.effectFade==1)"]
	[trans method=crossfade time=%time cond="(mp.time!=void)&&(mp.rule==void)&&(sf.effectFade==1)"]

	[trans method=universal rule=%rule time=500 	vague=40 	cond="(mp.time==void)&&(mp.rule!=void)&&(mp.vague==void)&&(sf.effectFade==1)"]
	[trans method=universal rule=%rule time=500 	vague=%vague 	cond="(mp.time==void)&&(mp.rule!=void)&&(mp.vague!=void)&&(sf.effectFade==1)"]
	[trans method=universal rule=%rule time=%time 	vague=40 	cond="(mp.time!=void)&&(mp.rule!=void)&&(mp.vague==void)&&(sf.effectFade==1)"]
	[trans method=universal rule=%rule time=%time 	vague=%vague 	cond="(mp.time!=void)&&(mp.rule!=void)&&(mp.vague!=void)&&(sf.effectFade==1)"]

	[wt canskip=%canskip|true]

	[eval exp="f.nowForeSlot = (kag.movies[0].layer1 === kag.fore.layers[f.movieLayer])? 0 : 1" cond="f.movieLayer!==void"]

	[label]
[endmacro]

;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

;画面揺れ
[macro name=QuakeScreen]
	[quake time=%time|500 vmax=%vmax|10 hmax=%hmax|10 cond="kag.skipMode!=4 && sf.effectQuake==1"]
[endmacro]

;フラッシュ
[macro name=Flash]
	[if exp="sf.effectFlash==1"]
		[backlay]
		[freeimage layer=5 page=back]
		[layopt layer=5 page=back visible=true opacity=255]
		[image  layer=5 page=back visible=true storage=_white pos=c]
		[UpDate time=10]
		[freeimage layer=5 page=back]
		[UpDate time=%time|500]
	[endif]
[endmacro]
[macro name=Flash1]
	[Flash]
[endmacro]

[macro name=Flash2]
	[if exp="sf.effectFlash==1"]
		[backlay]
		[freeimage layer=5 page=back]
		[layopt layer=5 page=back visible=true opacity=255]
		[image  layer=5 page=back visible=true storage=_white pos=c]
		[UpDate time=10]
		[freeimage layer=5 page=back]
		[UpDate time=100]
		[image  layer=5 page=back visible=true storage=_white pos=c]
		[UpDate time=10]
		[freeimage layer=5 page=back]
		[UpDate]
	[endif]
[endmacro]

[iscript]

function evilEyeEffect(layer, path, time)
{
	var w = kag.fore.base.width;
	var h = kag.fore.base.height;

	kag.back.messages[0].visible = false;
	kag.back.messages[1].visible = false;
	kag.back.messages[2].visible = false;

	kag.back.layers[5].piledCopy(0,0,kag.back.base,0,0,w,h);

	var target;
	if(layer === void || layer == 'base'){
		target = kag.fore.base;
	}else{
		target = kag.fore.layers[layer];
	}

	var e = %[];
	e.clipx = 0;
	e.clipy = 0;
	e.clipw = w;
	e.cliph = h;
	e.path = path;
	e.withalpha = true;
	e.time = time;
	e.accel = 0;
	kag.fore.layers[5].beginZoomingMove(e, kag.back.layers[5]);
}

[endscript]

[macro name=EvilEye]
	[if exp="sf.effectFlash==1"]
		[backlay]
		[image page=fore layer=5 storage="_tr" visible=true]
		[image page=back layer=5 storage="_tr" visible=true]
		[layopt layer=5 page=fore visible=true opacity=255]
		[eval exp="kag.fore.layers[5].visible = true"]
;		[eval exp="evilEyeEffect(mp.layer, '(0,0,800,600,128,40,30,720,540,80)', 150)"]
		[eval exp="evilEyeEffect(mp.layer, '(0,0,1360,768,128,64,36,1232,696,80)', 150)"]
		[wm]
;		[eval exp="evilEyeEffect(mp.layer, '(40,30,720,540,80,0,0,800,600,50)' , 600)"]
		[eval exp="evilEyeEffect(mp.layer, '(40,30,1232,696,80,0,0,1360,768,50)' , 600)"]
		[wm]
		[eval exp="kag.back.layers[5].visible = false"]
		[eval exp="kag.fore.layers[5].visible = false"]
		[backlay]
	[endif]
[endmacro]

[macro name=Shine]
	[if exp="sf.effectFlash==1"]
		[backlay]
		[image page=fore layer=5 storage="_tr" visible=true]
		[image page=back layer=5 storage="_tr" visible=true]
		[layopt layer=5 page=fore visible=true opacity=255]
		[eval exp="kag.fore.layers[5].visible = true"]
;		[eval exp="evilEyeEffect(mp.layer, '(0,0,800,600,128,40,30,720,540,0)', 500)"]
		[eval exp="evilEyeEffect(mp.layer, '(0,0,1360,768,128,64,36,1232,696,0)', 500)"]
		[wm]
		[eval exp="kag.back.layers[5].visible = false"]
		[eval exp="kag.fore.layers[5].visible = false"]
		[backlay]
	[endif]
[endmacro]

;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

;表情表示

[iscript]
function getGlassLessFace(storage){

	if(sf.翔子眼鏡無し==1){
		if(Storages.isExistentStorage(storage+"@.png")){
			return storage+"@";
		}
	}
	return storage;
}


function checkFaceChara(storage){

	//女の子キャラの表情画像のアルファベットリスト
	var femaleCharList = "abcdjlnp";

	if (femaleCharList.indexOf(storage[2]) == -1){
		return 0;
	}else{
		if(f.status_a=='遼' && storage[2] == 'a'){
			return 0;
		}else{
			return 1;
		}
	}
}

function checkFace(storage){

	if(storage===void) return;
	switch(sf.faceMode){
		case 0:
		//常に表示する
			if(sf.faceModeChar==1) {
				return checkFaceChara(storage);
			}else{
				return 1;
			}

		case 1:
		//通常シーンのみ
			if(f.inHScene==0) {
				if(sf.faceModeChar==1) {
					return checkFaceChara(storage);
				}else{
					return 1;
				}
			}else{
				return 0;
			}

		case 2:
		//Ｈシーンのみ
			if(f.inHScene==1) {
				if(sf.faceModeChar==1) {
					return checkFaceChara(storage);
				}else{
					return 1;
				}
			}else{
				return 0;
			}

		case 3:
		//常に表示しない
			return 0;
	}

}

var marginL = [186,218,286,314];

[endscript]

[macro name=PutFaceButtom]
	[if exp="mp.time===void"]
		[position layer=message2 page=fore left=240 top=585 height=136 visible=true  frame=%storage cond="checkFace(mp.storage)==1"]
		[position layer=message2 page=fore left=240 top=585 height=136 visible=false frame=%storage cond="checkFace(mp.storage)==0"]
	[else]
		[backlay]
		[position layer=message2 page=back left=240 top=585 height=136 visible=true  frame=%storage cond="checkFace(mp.storage)==1"]
		[position layer=message2 page=back left=240 top=585 height=136 visible=false frame=%storage cond="checkFace(mp.storage)==0"]
		[trans method=crossfade time=%time]
		[wt]
	[endif]
[endmacro]

[macro name=PutFaceTop]
	[if exp="mp.time===void"]
		[position layer=message2 page=fore left=240 top=19 height=136 visible=true  frame=%storage cond="checkFace(mp.storage)==1"]
		[position layer=message2 page=fore left=240 top=19 height=136 visible=false frame=%storage cond="checkFace(mp.storage)==0"]
	[else]
		[backlay]
		[position layer=message2 page=back left=240 top=19 height=136 visible=true  frame=%storage cond="checkFace(mp.storage)==1"]
		[position layer=message2 page=back left=240 top=19 height=136 visible=false frame=%storage cond="checkFace(mp.storage)==0"]
		[trans method=crossfade time=%time]
		[wt]
	[endif]
[endmacro]

[macro name=FaceOpt]
	[eval exp="tf.tmp = (mp.num===void||mp.num==1)? marginL[0] : marginL[+mp.num-1]"]
	[position layer=message1 marginl=&tf.tmp]
[endmacro]

[macro name=Face]
	[eval exp="tf.showFaceFile = getGlassLessFace(mp.storage)"]
	[eval exp="f.nowShowingFaceFile = mp.storage"]
	[PutFaceButtom storage=&tf.showFaceFile time=%time cond="f.windowTopNow==0"]
	[PutFaceTop    storage=&tf.showFaceFile time=%time cond="f.windowTopNow==1"]

	[hface graphic=&tf.showFaceFile width=82 height=82 frame=true]

;	[eval exp="tf.marginl = 186 - 128 + kag.fore.messages[2].width"]
;	[position layer=message1 marginl=&tf.marginl]
[endmacro]

;表情消去
[macro name=FaceOff]
	[position layer=message2 page=fore left=240 top=585 height=136 visible=false frame="" color=0x000000 opacity=0]
	[position layer=message2 page=back left=240 top=585 height=136 visible=false frame="" color=0x000000 opacity=0]
	[layopt layer=message2 page=fore visible=false]
	[layopt layer=message2 page=back visible=false]
	[eval exp="f.nowShowingFaceFile = ''"]
	[position layer=message1 marginl=404]
[endmacro]


[macro name=FaceHide]
	[layopt layer=message2 visible=false]
[endmacro]

[macro name=FaceShow]
	[layopt layer=message2 visible=true]
[endmacro]


;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

[iscript]

function getMovieFileName(storage){

	if(storage.indexOf(".")>=0){
		return storage;
	}

	if(sf.effectMovieMode==1 && sf.aviEnabled==true){
		return storage + ".avi";
	}
	if(sf.effectMovieMode==2){
		return storage + ".mpg";
	}

	return storage + ".mpg";

}

[endscript]

;ムービー再生
[macro name="PlayMovie"]
	[eval exp="kag.movies[0].cancelSegmentLoop()"]
	[eval exp="kag.movies[1].cancelSegmentLoop()"]

	[eval exp="kag.back.layers[3].visible=false"]
	[eval exp="kag.back.layers[4].visible=false"]
	[ResetLayer layer=3 page=back]
	[ResetLayer layer=4 page=back]

	[eval exp="tf.movieFile = getMovieFileName(mp.storage)"]

	[video loop=false mode=layer slot=0]
	[videolayer visible=true layer=%layer page=fore channel=1 slot=0]
	[videolayer visible=true layer=%layer page=back channel=2 slot=0]
	[openvideo storage=&(tf.movieFile) slot=0]
	[preparevideo slot=0][wp slot=0 for=prepare]
	[playvideo storage=&(tf.movieFile) slot=0]

	[eval exp="kag.movies[0].audioVolume=f.volumeMatrix[sf.bgmVolume]*1000"]
	[eval exp="kag.movies[0].audioVolume=0" cond="sf.bgmMute==1"]
	[eval exp="kag.movies[1].audioVolume=0"]

	[layopt layer=%layer left=0 top=0 page=back visible=true]
	[layopt layer=%layer left=0 top=0 page=fore visible=false]

[endmacro]

[macro name="StopMovie"]
	[stopvideo slot=0]
	[clearvideolayer slot=0 channel=1]
	[clearvideolayer slot=0 channel=2]
[endmacro]

[macro name="PlayBgMovie"]
	[eval exp="kag.movies[0].cancelSegmentLoop()"]
	[eval exp="kag.movies[1].cancelSegmentLoop()"]
	[if exp="f.shoukoLayer==-1"]
		[eval exp="kag.fore.layers[3].visible=false"]
		[eval exp="kag.back.layers[3].visible=false"]
		[eval exp="kag.fore.layers[4].visible=false"]
		[eval exp="kag.back.layers[4].visible=false"]
	[endif]
	[ResetLayer layer=3 page=back]
	[ResetLayer layer=4 page=back]
	[eval exp="tf.movieFile = getMovieFileName(mp.storage)"]

	[video loop=true mode=layer slot=0]
	[videolayer visible=true layer=%layer page=fore channel=1 slot=0]
	[videolayer visible=true layer=%layer page=back channel=2 slot=0]
	[openvideo storage=&(tf.movieFile) slot=0]
	[preparevideo slot=0][wp slot=0 for=prepare]
	[playvideo storage=&(tf.movieFile) slot=0]
	
	[layopt layer=%layer left=0 top=0 page=back visible=true]
	[layopt layer=%layer left=0 top=0 page=fore visible=false]
[endmacro]

[macro name="PlayEventMovie"]

	[eval exp="kag.back.layers[3].visible=false"]
	[eval exp="kag.back.layers[4].visible=false"]
	[ResetLayer layer=3 page=back]
	[ResetLayer layer=4 page=back]
	[eval exp="f.nowPlayingEventMovie=Storages.chopStorageExt(mp.storage)"]
	[eval exp="tf.movieFile = getMovieFileName(f.nowPlayingEventMovie)"]

	[if exp="sf.effectMovieMode!=0"]
		[fadeoutse buf=7 time=500]
		[fadeoutse buf=8 time=500]

		[video loop=true mode=layer slot=0]
		[video loop=true mode=layer slot=1]
		[videolayer visible=true layer=%layer|0 page=fore channel=1 slot=0]
		[videolayer visible=true layer=%layer|0 page=back channel=1 slot=1]
		
		[eval exp="kag.movies[0].layer2 = null"]
		[eval exp="kag.movies[1].layer2 = null"]

		[openvideo storage=&(tf.movieFile) slot=0]
		[preparevideo slot=0][wp slot=0 for=prepare]
		[openvideo storage=&(tf.movieFile) slot=1]
		[preparevideo slot=1][wp slot=1 for=prepare]

		[playvideo storage=&(tf.movieFile) slot=0]
		[playvideo storage=&(tf.movieFile) slot=1]

		[layopt layer=%layer|0 left=0 top=0 page=fore visible=false]
		[layopt layer=%layer|0 left=0 top=0 page=back visible=true]
		[eval exp="f.movieLayer = (mp.layer!==void)?(+mp.layer):0"]

		;音量を設定
		[eval exp="f.nowForeSlot = (kag.movies[0].layer1 === kag.fore.layers[f.movieLayer])? 0 : 1"]
		[eval exp="kag.movies[!f.nowForeSlot].audioVolume=f.volumeMatrix[sf.seVolume]*1000"]
		[eval exp="kag.movies[!f.nowForeSlot].audioVolume=0" cond="sf.seMute==1"]
		[eval exp="kag.movies[f.nowForeSlot].audioVolume=0"]

		[eval exp="f.vol=[] if f.vol===void"]
		[eval exp="f.vol[!f.nowForeSlot]=f.volumeMatrix[sf.seVolume]*1000"]
		[eval exp="f.vol[!f.nowForeSlot]=0" cond="sf.seMute==1"]
		[eval exp="f.vol[f.nowForeSlot]=0"]

	[endif]

[endmacro]

[macro name="ChangeEventMovie"]

	[eval exp="f.nowPlayingEventMovie=Storages.chopStorageExt(mp.storage)"]
	[eval exp="tf.movieFile = getMovieFileName(f.nowPlayingEventMovie)"]

	[if exp="sf.effectMovieMode!=0"]
		[eval exp="f.nowForeSlot = (kag.movies[0].layer1 === kag.fore.layers[f.movieLayer])? 0 : 1"]
		[openvideo storage=&(tf.movieFile) slot=&(!f.nowForeSlot)]
		[preparevideo slot=&(!f.nowForeSlot)][wp slot=&(!f.nowForeSlot) for=prepare]
		[playvideo storage=&(tf.movieFile) slot=&(!f.nowForeSlot)]

		;音量を設定
		[eval exp="kag.movies[!f.nowForeSlot].audioVolume=f.volumeMatrix[sf.seVolume]*1000"]
		[eval exp="kag.movies[!f.nowForeSlot].audioVolume=0" cond="sf.seMute==1"]
		[eval exp="kag.movies[f.nowForeSlot].audioVolume=0"]

		[UpDate]

		[openvideo storage=&(tf.movieFile) slot=&(!f.nowForeSlot)]
		[preparevideo slot=&(!f.nowForeSlot)][wp slot=&(!f.nowForeSlot) for=prepare]
		[playvideo storage=&(tf.movieFile) slot=&(!f.nowForeSlot)]

		;音量を設定
		[eval exp="kag.movies[!f.nowForeSlot].audioVolume=f.volumeMatrix[sf.seVolume]*1000"]
		[eval exp="kag.movies[!f.nowForeSlot].audioVolume=0" cond="sf.seMute==1"]
		[eval exp="kag.movies[f.nowForeSlot].audioVolume=0"]
	[endif]

[endmacro]

[macro name="SetLoop"]
	[videosegloop slot=0 start=%start end=%end]
	[videosegloop slot=1 start=%start end=%end]
	[eval exp="f.eventMovieLoopStart=(+mp.start)"]
	[eval exp="f.eventMovieLoopEnd=(+mp.end)"]
[endmacro]

[macro name="FwdEventMovie"]
	[if exp="sf.effectMovieMode!=0"]
		[eval exp="f.nowForeSlot = (kag.movies[0].layer1 === kag.fore.layers[f.movieLayer])? 0 : 1"]
		[if exp="kag.movies[(f.nowForeSlot)].frame<(+mp.frame)"]
			[eval exp="kag.movies[f.nowForeSlot].audioVolume=0"]
			[eval exp="kag.movies[!f.nowForeSlot].audioVolume=f.volumeMatrix[sf.seVolume]*1000"]
			[eval exp="kag.movies[!f.nowForeSlot].audioVolume=0" cond="sf.seMute==1"]
			[eval exp="kag.movies[!f.nowForeSlot].frame=(+mp.frame)"]
			[UpDate time=500]
			[eval exp="kag.movies[!f.nowForeSlot].frame=kag.movies[f.nowForeSlot].frame"]
		[EndIf]
	[endif]
[endmacro]

[macro name="RwdEventMovie"]
	[if exp="kag.movies[(f.nowForeSlot)].frame>(+mp.frame)"]
		[eval exp="kag.movies[(!f.nowForeSlot)].frame=(+mp.frame)"]
		[UpDate]
	[EndIf]
[endmacro]

;ムービー後処理
[macro name="StopBgMovie"]
	[stopvideo slot=0]
	[clearvideolayer slot=0 channel=1]
	[clearvideolayer slot=0 channel=2]
[endmacro]

[macro name="StopEventMovie"]
	[stopvideo slot=0]
	[stopvideo slot=1]
	[clearvideolayer slot=0 channel=1]
	[clearvideolayer slot=1 channel=1]
	[eval exp="f.nowPlayingEventMovie=''"]
	[eval exp="kag.movies[0].cancelSegmentLoop()"]
	[eval exp="kag.movies[1].cancelSegmentLoop()"]
[endmacro]

;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

;ボイス関連関数＆マクロ

[iscript]
function stopVoices()
{
	kag.se[2].stop();
	kag.se[3].stop();
	kag.se[5].stop();
}

function stopVoices1()
{
	kag.se[2].stop();
	kag.se[3].stop();
	kag.se[5].stop();
	kag.se[6].stop();
}

function stopVoices2()
{
	kag.se[2].stop();
	kag.se[3].stop();
	kag.se[4].stop();
	kag.se[5].stop();
}

function createHistoryActionExp(buf, storage)
{
	// メッセージ履歴をクリックしたときに実行する TJS 式を生成する
	if(+buf==5){
		return "stopVoices1(),kag.se[5].volume=100,kag.se[5].play(%[storage:(sf.voiceMute)?'dummy':'"+storage +"']),tf.nowReturnedFromHistory=true";
	}else{
		return "stopVoices2(),kag.se[2].volume=100,kag.se[2].play(%[storage:(sf.voiceMute)?'dummy':'"+storage +"']),tf.nowReturnedFromHistory=true";
	}
}

function voicePlayCheck(name){
	var suf = name[0];
	var id;

	switch(suf){
		case "a":
			id = (f.status_a=="遼")? 0 : 1;
			break;
		case "b":
			id = 2;
			break;
		case "c":
			id = (f.status_c=="希美乃")? 3 : 4;
			break;
		default:
			id = 5;
			break;
	}

	switch(+sf.voiceSetting[id]){
		case 0:
			return true;
		case 1:
			return !(+f.inHScene);
		case 2:
			return +f.inHScene;
		case 3:
			return false;
	}
}


[endscript]

[macro name=Voice]

	[eval exp="f.nowVoiceLine=1"]
	[eval exp="f.voicePlayFlag=voicePlayCheck(mp.storage)"]

	[if exp="f.voicePlayFlag==true"]
		[if exp="mp.fade!==void && +mp.fade==1"]
			[VoiceDown buf=&f.voicePlayBuf]
		[else]
			[stopse buf=&f.voicePlayBuf cond="(mp.stay===void)||(+mp.stay!=1)"]
		[endif]
	[endif]

	[eval exp="f.ボイス再生行 = 1"]
	[eval exp="f.voicePlayBuf = mp.buf"]
	[eval exp="f.lastVoice = mp.storage"]
	[eval exp="kag.toNextTextTotalCount = 0"]
	[eval exp="stopVoices()" cond="tf.nowReturnedFromHistory==true"]
	[eval exp="tf.nowReturnedFromHistory = false"]
	[counttext]

	[if exp="f.voicePlayFlag==true"]
		[playse storage=&mp.storage buf=%buf cond="sf.voiceMute==0"]
		[playse storage=dummy buf=%buf cond="sf.voiceMute==1"]
		[seopt volume=100 buf=%buf]
		[eval exp="tf.voiceTime = kag.se[f.voicePlayBuf].totalTime"]

		;声がかぶるときはバックグラウンドのボイス音量を下げる
		[if exp="(+mp.buf==2 || +mp.buf==3 || +mp.buf==5)"]
			[fadese buf=4 volume=60 time=200]
			[fadese buf=6 volume=60 time=200]
		[endif]
	[else]
		;再生はしないけど再生時間は取得したいのでダミーのバッファで。
		[playse storage=&mp.storage buf=13]
		[seopt volume=0 buf=13]
		[eval exp="tf.voiceTime = kag.se[13].totalTime"]
	[endif]

[endmacro]

[macro name=VoiceEnd]
	[endhact]
[endmacro]

[macro name=VoiceAtSe]
	[seopt buf=%buf volume=%volume cond="mp.volume!=void"]
	[eval exp="f.voicePlayBuf = mp.buf"]
	[hact exp="&createHistoryActionExp(2, mp.storage)"]
	[playse storage=%storage buf=%buf loop=true volume=%volume]
[endmacro]


[macro name=v]
	[eval exp="mp.tmp = createHistoryActionExp(f.voicePlayBuf, f.lastVoice)"]
	[hact exp=&mp.tmp]
	[i]
	[hfont color=0xffff00]
[endmacro]

[macro name=v2]
	[eval exp="mp.tmp = createHistoryActionExp(f.voicePlayBuf, f.lastVoice)"]
	[hact exp=&mp.tmp]
[endmacro]

[macro name=/v]
	[endhfont]
	[/i]
	[endhact]
	[resethfont]
	@font bold=false
	@font italic=false
[endmacro]

[macro name=ExVoice1]
	[stopse buf=2]
	[stopse buf=4]
	[eval exp="tf.exVoice1StartFlag=0"]
	[seopt volume=%volume|100 buf=4]
	[eval exp="tf.playflg=voicePlayCheck(mp.storage)"]
	[eval exp="f.exVoice1 = mp.storage" cond="tf.playflg==true"]
;	[eval exp="f.exVoiceBuf1=mp.buf" cond="mp.buf!==void"]
;	[eval exp="f.exVoiceBuf1=2" cond="mp.buf===void"]

	[if exp="tf.debugMode==1"]
		[playse storage=&mp.storage buf=13]
		[seopt volume=0 buf=13]
	[endif]
[endmacro]

[macro name=ExVoice1Start]
	[eval exp="tf.exVoice1StartFlag=1"]
	[playse storage="dummy" buf=2 cond="kag.se[4].status!='play'"]
[endmacro]

[macro name=ExVoice1Stop]
	[eval exp="tf.exVoice1StartFlag=0"]
	[eval exp="f.exVoice1=''"]
	[fadeoutse buf=4 time=500|%time]
[endmacro]

[macro name=ExVoice1Clear]
	[eval exp="tf.exVoice1StartFlag=0"]
	[eval exp="f.exVoice1=''"]
[endmacro]

[macro name=ExVoice2]
	[stopse buf=5]
	[stopse buf=6]
	[eval exp="tf.exVoice2StartFlag=0"]
	[seopt volume=%volume|100 pan=-20 buf=6]
	[seopt pan=20 buf=4]
	[eval exp="tf.playflg=voicePlayCheck(mp.storage)"]
	[eval exp="f.exVoice2 = mp.storage" cond="tf.playflg==true"]
;	[eval exp="f.exVoiceBuf1=mp.buf" cond="mp.buf!==void"]
;	[eval exp="f.exVoiceBuf1=2" cond="mp.buf===void"]

	[if exp="tf.debugMode==1"]
		[playse storage=&mp.storage buf=13]
		[seopt volume=0 buf=13]
	[endif]
[endmacro]

[macro name=ExVoice2Start]
	[eval exp="tf.exVoice2StartFlag=1"]
	[playse storage="dummy" buf=5 cond="kag.se[6].status!='play'"]
[endmacro]

[macro name=ExVoice2Stop]
	[eval exp="tf.exVoice2StartFlag=0"]
	[eval exp="f.exVoice2=''"]
	[fadeoutse buf=6 time=500|%time]

	[seopt pan=0 buf=4]
	[seopt pan=0 buf=6]
[endmacro]

[macro name=ExVoice2StopClear]
	[eval exp="tf.exVoice2StartFlag=0"]
	[eval exp="f.exVoice2=''"]
	[seopt pan=0 buf=4]
	[seopt pan=0 buf=6]
[endmacro]

[macro name=VoiceDown]
	[fadese buf=%buf time=%time|500 volume=&"f.volumeMatrix[sf.bgVoiceVolume] * 0.6"]
	[seopt buf=%buf volume=0 cond="sf.bgVoiceMute==1"]
[endmacro]

;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

;ＳＥ再生マクロ
[macro name=Sound]
	[if exp="(mp.moviemode===void||(+mp.moviemode!=1)) || sf.effectMovieMode==0"]
		[seopt buf=%buf volume=%volume|100]
		[if exp="mp.loop!==void && +mp.loop==true"]
			[playse storage=%storage buf=%buf loop=true]
		[else]
			[if exp="kag.skipMode==0 || sf.noSeInSkip==0"]
				[playse storage=%storage buf=%buf]
				[ws buf=%buf cond="(mp.wait=='true')&&(kag.skipMode==0)"]
			[endif]
		[endif]
	[endif]
	[eval exp="f.buf7=mp.storage" cond="(+mp.buf)==7"]
	[eval exp="f.buf8=mp.storage" cond="(+mp.buf)==8"]
[endmacro]

[macro name=SoundIn]
	[if exp="mp.volume!==void"]
		[if exp="(mp.moviemode===void||(+mp.moviemode!=1)) || sf.effectMovieMode==0"]
			[if exp="kag.skipMode==0"]
				[seopt buf=%buf volume=0]
				[if exp="mp.loop!==void && +mp.loop==true"]
					[playse storage=%storage buf=%buf loop=true]
					[fadese time=%time buf=%buf volume=%volume]
				[else]
					[playse storage=%storage buf=%buf]
					[fadese time=%time buf=%buf volume=%volume]
				[endif]
			[else]
				[seopt buf=%buf volume=%volume]
				[if exp="mp.loop!==void && +mp.loop==true"]
					[playse storage=%storage buf=%buf loop=true]
				[else]
					[if exp="sf.noSeInSkip==0"]
						[playse storage=%storage buf=%buf]
					[endif]
				[endif]
			[endif]
		[endif]
	[else]
		[if exp="(mp.moviemode===void||(+mp.moviemode!=1)) || sf.effectMovieMode==0"]
			[seopt buf=%buf volume=100]
			[if exp="kag.skipMode==0"]
				[if exp="mp.loop!==void && +mp.loop==true"]
					[fadeinse time=%time storage=%storage buf=%buf loop=true]
				[else]
					[fadeinse time=%time storage=%storage buf=%buf]
				[endif]
			[else]
				[if exp="mp.loop!==void && +mp.loop==true"]
					[playse storage=%storage buf=%buf loop=true]
				[else]
					[if exp="sf.noSeInSkip==0"]
						[playse storage=%storage buf=%buf]
					[endif]
				[endif]
			[endif]
		[endif]
	[endif]
	[eval exp="f.buf7=mp.storage" cond="(+mp.buf)==7"]
	[eval exp="f.buf8=mp.storage" cond="(+mp.buf)==8"]
[endmacro]

[macro name=SoundOut]
	[fadeoutse time=%time|500 buf=%buf 	cond="kag.skipMode!=4"]
	[stopse buf=%buf 			cond="kag.skipMode==4"]
	[eval exp="f.buf7=''" cond="(+mp.buf)==7"]
	[eval exp="f.buf8=''" cond="(+mp.buf)==8"]
[endmacro]

[macro name=SoundStop]
	[stopse buf=%buf]
	[eval exp="f.buf7=''" cond="(+mp.buf)==7"]
	[eval exp="f.buf8=''" cond="(+mp.buf)==8"]
[endmacro]

[macro name=SoundAllOut]
	[SoundOut buf=0 time=%time]
	[SoundOut buf=1 time=%time]
	[SoundOut buf=2 time=%time]
	[SoundOut buf=3 time=%time]
	[SoundOut buf=4 time=%time]
	[SoundOut buf=5 time=%time]
	[SoundOut buf=6 time=%time]
	[SoundOut buf=7 time=%time]
	[SoundOut buf=8 time=%time]
	[SoundOut buf=9 time=%time]
	[eval exp="f.buf7=''"]
	[eval exp="f.buf8=''"]
	[ExVoice1Clear]
	[ExVoice2StopClear]
[endmacro]

[macro name=SoundAllStop]
	[stopse buf=0]
	[stopse buf=1]
	[stopse buf=2]
	[stopse buf=3]
	[stopse buf=4]
	[stopse buf=5]
	[stopse buf=6]
	[stopse buf=7]
	[stopse buf=8]
	[stopse buf=9]
	[eval exp="f.buf7=''"]
	[eval exp="f.buf8=''"]
	[ExVoice1Clear]
	[ExVoice2StopClear]
[endmacro]

;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

;ＢＧＭ入れ替え
[macro name=BgmExChange]
	[if exp="kag.skipMode==4"]
		[playbgm storage=%storage]
		[bgmopt volume=%volume|100]
	[else]
		[xchgbgm storage=%storage loop=true time=%time overlap=%time volume=%volume|100]
	[endif]
[endmacro]

[macro name="BgmFadeOut"]
	[if exp="kag.skipMode==4 || tf.afterLoad==true"]
		[stopbgm]
	[else]
		[fadeoutbgm time=%time|1000]
	[endif]
[endmacro]

[macro name="BgmFadeIn"]
	[if exp="kag.skipMode==4"]
		[playbgm storage=%storage]
	[else]
		[fadeinbgm storage=%storage time=%time|1000]
	[endif]
[endmacro]


;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

;選択肢

[iscript]
var optionLocate=[[272],[220, 284],[216, 272, 328],[200, 252, 304, 356],[180, 226, 272, 318, 364],[160,204,248,292,336,380]];

function hideOtherOption(num){
	for(var i=0 ; i<f.選択肢数 ; i++){
		if(i != num) kag.fore.messages[3].links[i].object.visible = false;
	}
}

function getTop(num, pos){

	var center = 380;
	var d = 50 - num * 2;
	var tmp = (num * 2 - 1) * d;
	return center - (tmp \ 2) + ((pos-1)*2-1) * d;

}
[endscript]

[macro name=SelectStart]
	[ExtasyCountCancel]
	;ロード直後の処理
	[if exp="tf.afterLoad==true"]
		[ExecAfterLoad]
;		[wait time=100 cond="sf.effectMovieMode==0 && kag.movies[0].lastStatus=='play'"]
;		[pausevideo  slot=0 cond="sf.effectMovieMode==0 && kag.movies[0].lastStatus=='play'"]
;		[eval exp="tf.afterLoad=false"]
;		[Sound buf=2 storage="dummy" cond="f.exVoice1!='' && (f.ボイス再生行==0 || +f.voicePlayBuf!=2)"]
;		[Sound buf=5 storage="dummy" cond="f.exVoice2!='' && (f.ボイス再生行==0 || +f.voicePlayBuf!=5)"]
	[endif]

	[CR]
	
	[backlay]
	[layopt layer=message0 page=back visible=false]
	[layopt layer=message1 page=back visible=false]
	[eval exp="systembutton_object.backButtons[7].visible=false"]

	[eval exp="f.選択肢識別子 = kag.conductor.curStorage + ':' + kag.conductor.curLine"]
	[eval exp="f.選択肢表示中 = 1"]
	[style autoreturn=false]
	[nowait]
	[eval exp="f.選択肢数 = +mp.option"]
	[current page=back layer="message3"]
[endmacro]

[macro name=SelectEnd]
	[trans method=crossfade time=250 cond="sf.effectFade==1"]
	[trans method=crossfade time=0   cond="sf.effectFade==0"]
	[wt]
	[endnowait]
	[style autoreturn=true]
	[record]
	[s]
[endmacro]


[macro name=SelectOption]
	[eval exp="tf.pos = (mp.pos!==void)? mp.pos : mp.num"]
;	[eval exp="tf.y = optionLocate[f.選択肢数-1][tf.pos]"]
	[eval exp="tf.y = getTop(f.選択肢数,tf.pos)"]
	[locate x=323 y=&tf.y]
	[button2 graphic="select_frame" target=%target text=%text color=0x00ffff cond="(sf.選択肢[f.選択肢識別子 + ':' + mp.num] == 1)   &&(kag.changeColorAlreadyReadText == 1)"]
	[button2 graphic="select_frame" target=%target text=%text color=0xffffff cond="(sf.選択肢[f.選択肢識別子 + ':' + mp.num] == void)||(kag.changeColorAlreadyReadText == 0)"]
	[eval exp="f.selectbuf[mp.num] = mp.text"]
	[eval exp="kag.historyLayer.store(mp.text)"][hr]
[endmacro]

[macro name=SelectOptionEnd]
;	[locate x=0] [locate x=500] [font color=default][endlink][r]
[endmacro]

[macro name=OptionTarget]

;	[eval exp=" kag.fore.messages[3].links[mp.num-1].object.imageLeft = -kag.fore.messages[3].links[mp.num-1].object.width"]
	[locklink]
	[eval exp="hideOtherOption(mp.num-1)"]
	[backlay]
	[current page=back layer="message3"]
	[er]

	[if exp="mp.visible===void || +mp.visible==1"]
		[eval exp="systembutton_object.backButtons[7].visible=true"]
		[layopt layer=message0 page=back visible=true]
		[layopt layer=message1 page=back visible=true]
	[endif]
	[trans method=crossfade time=250 cond="sf.effectFade==1"]
	[trans method=crossfade time=0   cond="sf.effectFade==0"]
	[wt]

	[cm][hr]
	[eval exp="kag.historyLayer.store('――' + f.selectbuf[mp.num] + 'を選択――――')"]
	[hr][hr][hr]
	[current page=fore layer=message1]
	[eval exp="sf.選択肢[f.選択肢識別子 + ':' + mp.num] = 1"]
	[eval exp="f.選択肢表示中 = 0"]

	[ExtasyCount cond="f.inHScene"]

	[label]

[endmacro]

[macro name=/SelectOption]
[SelectOptionEnd]
[endmacro]

;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

[return]
