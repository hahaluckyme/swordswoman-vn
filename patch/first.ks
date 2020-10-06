
*start|スタート
[cm]

;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

;設定ファイル（特に使用していない）
[eval exp="f.configFileName = System.exeName.substring(System.exePath.length,Storages.chopStorageExt(System.exeName).length - System.exePath.length) + '.tof'"]

[loadplugin module=wuvorbis.dll]
[loadplugin module=extrans.dll]
[call storage="autoInsertLabel.ks"]
[call storage="spectrum.ks"]

;config menu status, necessary so word wrapping doesn't crash on opening it
[eval exp="tf.configOpen=0"]

;デバッグモード
[eval exp="tf.debugMode=0"]

;Patch stuff
[mappfont storage="Molengo.tft"]

;テスト音声ファイル
[eval exp="tf.voiceTestFile='a9006'"]

;起動時からオートになるのを防ぐ
[eval exp="kag.autoMode = 0"]

;既読も未読もメッセージの速さを同一に固定
[eval exp="kag.userCh2ndSpeed = -1"]

;ＯＳを判別（特に使用していない）
[eval exp="tf.isNT = (System.osName.indexOf('NT')!=-1)"]
[eval exp="tf.isXpOrLater = !((System.osName.indexOf('NT 4.0')!=-1)||(System.osName.indexOf('NT 5.0')!=-1))&&(tf.isNT)"]

;ログファイル出力フォルダの設定
[eval exp="Debug.logLocation = kag.saveDataLocation"]


;拡張履歴画面
[call storage="ExtHistoryLayer.ks"]

;セーブ・ロード画面用処理の読み込み
[call storage="save_load.ks"]

;システムボタン用処理の読み込み
[call storage="sysbtn.ks"]

;マクロ定義読み込み
[call storage="macrodefine.ks"]


;メニュー項目の無効化
[eval exp="kag.menuEnabled=false"]


;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;システム変数を設定

;ワイド画面
[eval exp="sf.wideScreen=1" 		cond="sf.wideScreen===void"]

;メッセージウィンドウ現在位置
[eval exp="sf.windowTop=0" 		cond="sf.windowTop===void"]

;表情表示のモード設定 0:常に表示 1:通常シーンのみ 2:Ｈシーンのみ 3:常に表示
[eval exp="sf.faceMode=0" 		cond="sf.faceMode===void"]

;表情表示モードの設定２ 0:全て表示する 1:男キャラは表示しない
[eval exp="sf.faceModeChar=0" 		cond="sf.faceModeChar===void"]

;ボイス再生時にクリックしたときの動作 0:ボイスを止めないまま次のメッセージへ 1:ボイスを止める
[eval exp="sf.voiceStopAtClick=0" 	cond="sf.voiceStopAtClick===void"]

;メッセージウィンドウの自動移動
[eval exp="sf.windowAutoMove=1" 	cond="sf.windowAutoMove===void"]

;オートプレイ時の挙動 0:ボイス再生終了を待たない 1:ボイス再生終了を待つ
[eval exp="sf.waitVoiceEndInAutoMode=1" cond="sf.waitVoiceEndInAutoMode===void"]

;次のメッセージはボイス付きかを表示するか
[eval exp="sf.showVoiceIndicator=1" 	cond="sf.showVoiceIndicator===void"]

;カットインを表示するか
[eval exp="sf.showCutin=1" 		cond="sf.showCutin===void"]

;翔子の眼鏡表示
[eval exp="sf.翔子眼鏡無し=0" 		cond="sf.翔子眼鏡無し===void"]

;毛の表示
[eval exp="sf.陰毛表示無し=0" 		cond="sf.陰毛表示無し===void"]

;アヘ顔の表示
[eval exp="sf.アヘ顔表示無し=0" 	cond="sf.アヘ顔表示無し===void"]

;エフェクト関係
[eval exp="sf.effectFade=1" 		cond="sf.effectFade===void"]
[eval exp="sf.effectQuake=1" 		cond="sf.effectQuake===void"]
[eval exp="sf.effectAnime=1" 		cond="sf.effectAnime===void"]
[eval exp="sf.effectFlash=1" 		cond="sf.effectFlash===void"]

;ムービーのモード
;	0:無し	1:wmv	2:mpg
[eval exp="sf.effectMovieMode=1" 	cond="sf.effectMovieMode===void"]

;メッセージスキップモード 0:全てスキップ 1:既読のみ
[eval exp="sf.skipOnlyAlreadyRead=1" 	cond="sf.skipOnlyAlreadyRead===void"]

;メッセージウィンドウ濃度
[eval exp="sf.messageWindowOpacity=177" cond="sf.messageWindowOpacity===void"]

;音量設定
[eval exp="sf.bgmMute=0" 		cond="sf.bgmMute===void"]
[eval exp="sf.voiceMute=0" 		cond="sf.voiceMute===void"]
[eval exp="sf.bgVoiceMute=0" 		cond="sf.bgVoiceMute===void"]
[eval exp="sf.seMute=0" 		cond="sf.seMute===void"]
[eval exp="sf.bgSeMute=0" 		cond="sf.bgSeMute===void"]

[eval exp="f.volumeMatrix=[]"]
[eval exp="f.volumeMatrix=[ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]"]

;スキップ中はＳＥを再生しない
[eval exp="sf.noSeInSkip=1" 		cond="sf.noSeInSkip===void"]

;Ｈシーンに入ったらカウントを表示する
[eval exp="sf.showExtasyCount=1"	cond="sf.showExtasyCount===void"]

;ホイールを逆回転させたときの動作(0:履歴画面, 1:巻き戻し）
[eval exp="sf.whenWheelUp=0"		cond="sf.whenWheelUp===void"]

[eval exp="sf.bgmVolume=6" 		cond="sf.bgmVolume===void"]
[eval exp="sf.voiceVolume=8" 		cond="sf.voiceVolume===void"]
[eval exp="sf.bgVoiceVolume=7"	 	cond="sf.bgVoiceVolume===void"]
[eval exp="sf.seVolume=6" 		cond="sf.seVolume===void"]
[eval exp="sf.BgSeVolume=6"		cond="sf.BgSeVolume===void"]

;選択肢通過記録用辞書配列
[eval exp="sf.選択肢=%[]" 		cond="sf.選択肢===void"]

;ＣＧ表示フラグ用辞書配列
[eval exp="sf.cgOpenFlag=%[]" 		cond="sf.cgOpenFlag===void"]

;回想モード用辞書配列
[eval exp="sf.kaisouOpenFlag=%[]" 	cond="sf.kaisouOpenFlag===void"]

;ボイス個別有無
[if exp="sf.voiceSetting===void"]
	[eval exp="sf.voiceSetting=%[]"]
	[eval exp="sf.voiceSetting[0]=0"]
	[eval exp="sf.voiceSetting[1]=0"]
	[eval exp="sf.voiceSetting[2]=0"]
	[eval exp="sf.voiceSetting[3]=0"]
	[eval exp="sf.voiceSetting[4]=0"]
	[eval exp="sf.voiceSetting[5]=0"]
	[eval exp="sf.voiceSetting[6]=0"]
[endif]

;おまけモード関連
[eval exp="sf.extraModeOpenFlag=0" 	cond="sf.extraModeOpenFlag===void"]

[eval exp="sf.cgModeContinuous = 0"	cond="sf.cgModeContinuous===void"]
[eval exp="sf.cgModeVoicePlay = 0"	cond="sf.cgModeVoicePlay===void"]

;トゥルーエンド通過
[eval exp="sf.throughTrueEnd=0"		cond="sf.throughTrueEnd===void"]

;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


[eval exp="f.windowTopNow=0"]
[eval exp="f.titleScreenControl=0"]

[if exp="sf.seMute==0"]
	[seopt buf=0 gvolume="&(f.volumeMatrix[sf.seVolume])"]
	[seopt buf=1 gvolume="&(f.volumeMatrix[sf.seVolume])"]
	[seopt buf=9 gvolume="&(f.volumeMatrix[sf.seVolume])"]
[else]
	[seopt buf=0 gvolume=0]
	[seopt buf=1 gvolume=0]
	[seopt buf=9 gvolume=0]
[endif]

[if exp="sf.bgSeMute==0"]
	[seopt buf=7  gvolume="&(f.volumeMatrix[sf.BgSeVolume])"]
	[seopt buf=8  gvolume="&(f.volumeMatrix[sf.BgSeVolume])"]
	[seopt buf=10 gvolume="&(f.volumeMatrix[sf.BgSeVolume])"]
	[seopt buf=11 gvolume="&(f.volumeMatrix[sf.BgSeVolume])"]
[else]
	[seopt buf=7  gvolume=0]
	[seopt buf=8  gvolume=0]
	[seopt buf=10 gvolume=0]
	[seopt buf=11 gvolume=0]
[endif]

[if exp="sf.voiceMute==0"]
	[seopt buf=2 gvolume="&(f.volumeMatrix[sf.voiceVolume])"]
	[seopt buf=3 gvolume="&(f.volumeMatrix[sf.voiceVolume])"]
	[seopt buf=5 gvolume="&(f.volumeMatrix[sf.voiceVolume])"]
[else]
	[seopt buf=2 gvolume=0]
	[seopt buf=3 gvolume=0]
	[seopt buf=5 gvolume=0]
[endif]

[if exp="sf.bgVoiceMute==0"]
	[seopt buf=4 gvolume="&(f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100)"]
	[seopt buf=6 gvolume="&(f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100)"]
[else]
	[seopt buf=4 gvolume=0]
	[seopt buf=6 gvolume=0]
[endif]

[if exp="sf.bgmMute==0"]
	[bgmopt gvolume="&(f.volumeMatrix[sf.bgmVolume])"]
[else]
	[bgmopt gvolume=0]
[endif]


[eval exp="kag.se[2].open('sys_decide.ogg')"]

[eval exp="sf.aviEnabled = false"]

;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

[iscript]

if(kag.sideCut){
	kag.innerWidth = kag.sideCutWidth;
	kag.layerLeft = - (kag.scWidth - kag.sideCutWidth) \2 ;
}

if(kag.smallMode){
	kag.setZoom(kag.smallHeight,kag.scHeight);
	kag.innerWidth = (kag.sideCut)? kag.smallWidth2 : kag.smallWidth1;
	kag.innerHeight = kag.smallHeight;
}

kag.visible = true;

if(kag.changeFullScreen){
	kag.onFullScreenMenuItemClick();
}

[endscript]



[image page=fore layer=base storage="_white"]
[image page=back layer=base storage="_white"]

[iscript]
function skipCSA(key, shift)
{
//	dm("key : " + key);
	if(key == 0xc0 || key == #'Q' || key == VK_NUMPAD9){
		kag.process('', '*goto_title');
		return true;
	}
}
[endscript]

*goto_title
[eval exp="kag.keyDownHook.remove(skipCSA)"]
[stoptrans]

;タイトルコール用キャラ決め
[eval exp="tf.rand = intrandom(0,2)"]
[BgSet storage="_white"]
[trans method=crossfade time=0][wt]
[jump storage="0-01.ks" target="*title"]