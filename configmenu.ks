
[iscript]
function getVolumeImageFile(id,mute,mode){
	var str = ["config_item_vol","config_item_per"];
	if(mute==0){
		if(id<10){
			return str[mode] + "0" + id + "0";
		}else{
			return str[mode] + "100";
		}
	}else{
		if(id<10){
			return str[mode] + "m0" + id + "0";
		}else{
			return str[mode] + "m100";
		}
	}
}

function shoukoFaceFile(){

	if(f.nowShowingFaceFile!==void && f.nowShowingFaceFile!=""){
		if(f.nowShowingFaceFile[2]=="c"){
			if(+sf.�Ďq�ዾ����==1){
				if(Storages.isExistentStorage(f.nowShowingFaceFile+"@.png")){
					kag.fore.messages[2].loadImages(f.nowShowingFaceFile+"@");
					kag.back.messages[2].loadImages(f.nowShowingFaceFile+"@");
				}else{
					kag.fore.messages[2].loadImages(f.nowShowingFaceFile);
					kag.back.messages[2].loadImages(f.nowShowingFaceFile);
				}
			}else{
				kag.fore.messages[2].loadImages(f.nowShowingFaceFile);
				kag.back.messages[2].loadImages(f.nowShowingFaceFile);
			}
		}
	}

}
[endscript]


*rclick

; �E�N���b�N�ŕ���悤��
[rclick jump=true target="*exit" enabled=true]

; ���j���[�Ăяo���{�^�����\���ɂ���
[backlay]
[sysbtopt backvisible=false]


[eval exp="tf.fadeControl = 250"]
[eval exp="tf.nowPlayingEventMovieFlag = ((f.nowPlayingEventMovie!='')&&(kag.movies[0].lastStatus=='play'))"]
[eval exp="tf.nowMovieMode = sf.effectMovieMode"]
[eval exp="tf.configPage=1" cond="tf.configPage===void"]
[eval exp="tf.nowNoAheFace = sf.�A�w��\������"]

[eval exp="f.enableWheel = 0"]


;���b�Z�[�W���C���̕\����Ԃ��L�^
[eval exp="tf.messageLayer0visible = kag.fore.messages[0].visible"]
[eval exp="tf.messageLayer1visible = kag.fore.messages[1].visible"]
[eval exp="tf.messageLayer2visible = kag.fore.messages[2].visible"]
[eval exp="tf.messageLayer3visible = kag.fore.messages[3].visible"]

; ���b�Z�[�W���C�� 0-3 ���\���ɂ���
[layopt layer="message0" page=back visible=false]
[layopt layer="message1" page=back visible=false]
[layopt layer="message2" page=back visible=false]
[layopt layer="message3" page=back visible=false]

*menu
[playse buf=9 storage="sys_decide"]

*menu2
[jump target=*pagemake1 cond="tf.configPage==1"]
[jump target=*pagemake2 cond="tf.configPage==2"]

*menu3
[trans method=crossfade time=&(tf.fadeControl)]
[wt canskip=false]
[eval exp="tf.fadeControl = 0"]
[waittrig name="rightClick" canskip=false]


*exit
[eval exp="tf.configOpen=0"]
[er]

[freeimage page=back layer=5]

; ���b�Z�[�W���C�� 4 ���\����
[position layer="message4" page=back left=0 top=0 width=1366 height=768 color=0x000000 opacity=0 frame=""]
[layopt   layer="message4" page=back visible=false]

; ���j���[�Ăяo���{�^���𕜋A
[sysbtopt backvisible=true cond="f.titleflg==0"]
[eval exp="systembutton_object.backButtons[6].visible=false" cond="f.�I�����\����==true"]

;�Ⓒ�܂ł̃J�E���g�\��
[if exp="f.inHScene==1"]
	[if exp="sf.showExtasyCount==1"]
		[eval exp="kag.foreExtasyCountLayer.show()"]
		[eval exp="kag.backExtasyCountLayer.show()"]
	[else]
		[eval exp="kag.foreExtasyCountLayer.hide()"]
		[eval exp="kag.backExtasyCountLayer.hide()"]
	[endif]
[endif]

;���[�r�[�Đ��ɂ���
[if exp="f.nowPlayingEventMovie==''"]
	;���݃C�x���g���[�r�[���Đ������󋵂ł͂Ȃ�
	[if exp="sf.effectMovieMode!=0"]
		;���[�r�[�Đ����|�[�Y���ł���A�Đ��������ꂽ�@���@�|�[�Y����
		[resumevideo slot=0 cond="kag.movies[0].lastStatus=='pause'"]
	[else]
		;���[�r�[�Đ����ł���A�Đ���������Ȃ������@���@�Đ����|�[�Y
		[pausevideo  slot=0 cond="kag.movies[0].lastStatus=='play'"]
	[endif]
	[if exp="f.nowShowingCg != ''"]
		[CgSet storage=&(f.nowShowingCg) alt=&(f.nowShowingCgAlt)]
	[endif]
	[eval exp="kag.fore.layers[3].visible=sf.�Ďq�ዾ����"]
	[eval exp="kag.back.layers[3].visible=sf.�Ďq�ዾ����"]

[else]
	;���݃C�x���g���[�r�[���Đ������󋵂ł���
	[if exp="tf.nowPlayingEventMovieFlag==1"]
		;���ہA�R���t�B�O��ʂɓ������Ƃ��C�x���g���[�r�[���Đ���������
		[if exp="sf.effectMovieMode==0"]
			;�u���[�r�[���Đ����Ȃ��v���I�����ꂽ
			[CgSet storage=&(f.nowShowingCg) alt=&(f.nowShowingCgAlt)]
			[stopvideo slot=0]
			[stopvideo slot=1]
			[clearvideolayer slot=0 channel=1]
			[clearvideolayer slot=1 channel=1]
			[Sound storage=&(f.buf7) buf=7 loop=true cond="f.buf7!=''"]
			[Sound storage=&(f.buf8) buf=8 loop=ture cond="f.buf8!=''"]
		[else]
			[if exp="sf.effectMovieMode!=tf.nowMovieMode"]
				;�R���t�B�O��ʂɓ������Ƃ��ƈႤ���[�h���I�����ꂽ
				[stopvideo slot=0]
				[stopvideo slot=1]
				[clearvideolayer slot=0 channel=1]
				[clearvideolayer slot=1 channel=1]
				[PlayEventMovie storage=&(f.nowPlayingEventMovie)]
				[SetLoop start=&(f.eventMovieLoopStart) end=&(f.eventMovieLoopEnd)]
				[eval exp="kag.movies[0].frame=f.eventMovieLoopStart"]
				[eval exp="kag.movies[1].frame=f.eventMovieLoopStart"]
				[eval exp="f.nowForeSlot = (kag.movies[0].layer1 === kag.fore.layers[f.movieLayer])? 0 : 1"]
				[trans method=crossfade time=200][wt canskip=false]
			[endif]
		[endif]
	[else]
		;�R���t�B�O��ʂɓ������Ƃ��A�C�x���g���[�r�[���Đ����łȂ�����
		[if exp="sf.effectMovieMode!=0"]
			;�Đ��J�n
			[PlayEventMovie storage=&(f.nowPlayingEventMovie)]
			[SetLoop start=&(f.eventMovieLoopStart) end=&(f.eventMovieLoopEnd)]
			[eval exp="kag.movies[0].frame=f.eventMovieLoopStart"]
			[eval exp="kag.movies[1].frame=f.eventMovieLoopStart"]
		[else]
			[if exp="f.nowShowingCg != ''"]
				[CgSet storage=&(f.nowShowingCg) alt=&(f.nowShowingCgAlt)]
			[endif]
			[eval exp="kag.fore.layers[3].visible=sf.�Ďq�ዾ����"]
			[eval exp="kag.back.layers[3].visible=sf.�Ďq�ዾ����"]
		[endif]
	[endif]

[endif]

; ���b�Z�[�W���C�� 0-3 �𕜋A
[layopt layer="message0" page=back visible=true cond="tf.messageLayer0visible==true"]
[layopt layer="message1" page=back visible=true cond="tf.messageLayer1visible==true"]
[layopt layer="message2" page=back visible=true cond="tf.messageLayer2visible==true"]
[layopt layer="message3" page=back visible=true cond="tf.messageLayer3visible==true"]
[trans method=crossfade time=200 cond="f.titleflg==0"]
[wt canskip=false cond="f.titleflg==0"]

[current layer="message1"]

[eval exp="f.enableWheel = 1"]

[rclick jump=false]

;�ݒ���e�̕ۑ�
[eval exp="kag.saveSystemVariables()"]

[return]


*pagemake1
; ���b�Z�[�W���C�� 4 ���g��
[image page=back layer=5 storage="config_bg1" visible=true opacity=255]
[position layer="message4" page=back left=0 top=0 width=1366 height=768 color=0x000000 margint=0 marginl=0 opacity=0 frame=""]
[layopt   layer="message4" page=back visible=true]
[current  layer="message4" page=back]
[er]
[nowait]
[DisableClick]

;���b�Z�[�W���x
[if exp="kag.userChSpeed == kag.chSpeeds['slow']"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=303 dy=179]
[elsif exp="kag.userChSpeed == kag.chSpeeds['normal']"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=388 dy=179]
[elsif exp="kag.userChSpeed == kag.chSpeeds['fast']"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=473 dy=179]
[else]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=558 dy=179]
[endif]

;�I�[�g�v���C�̑҂�����
[if exp="kag.autoModeLineWait == kag.autoModeLineWaits.slow"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=303 dy=243]
[elsif exp="kag.autoModeLineWait == kag.autoModeLineWaits.slower"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=383 dy=243]
[elsif exp="kag.autoModeLineWait == kag.autoModeLineWaits.medium"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=463 dy=243]
[elsif exp="kag.autoModeLineWait == kag.autoModeLineWaits.faster"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=543 dy=243]
[else]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=623 dy=243]
[endif]

;�����̃A���`�G�C���A�X
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=300 dy=306 cond="kag.chDefaultAntialiased == true"]

;��������i�e�j
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=422 dy=306 cond="kag.chrShadow == true"]

;��������i�܁j
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=544 dy=306 cond="kag.chrEdge == true"]

;���b�Z�[�W�E�B���h�E�Z�x
[locate x=717 y=307][button graphic=config_item_down target=*item_messageWindowOpacity1 rightclick=*exit cond="sf.messageWindowOpacity > 0"]
[locate x=925 y=307][button graphic=config_item_up   target=*item_messageWindowOpacity2 rightclick=*exit cond="sf.messageWindowOpacity< 255"]

[locate x=753 y=&(307-11)]
[graph storage=config_item_mwo000  char=false rightclick=*exit cond="sf.messageWindowOpacity ==   0"]
[graph storage=config_item_mwo010  char=false rightclick=*exit cond="sf.messageWindowOpacity ==  21"]
[graph storage=config_item_mwo020  char=false rightclick=*exit cond="sf.messageWindowOpacity ==  47"]
[graph storage=config_item_mwo030  char=false rightclick=*exit cond="sf.messageWindowOpacity ==  73"]
[graph storage=config_item_mwo040  char=false rightclick=*exit cond="sf.messageWindowOpacity ==  99"]
[graph storage=config_item_mwo050  char=false rightclick=*exit cond="sf.messageWindowOpacity == 125"]
[graph storage=config_item_mwo060  char=false rightclick=*exit cond="sf.messageWindowOpacity == 151"]
[graph storage=config_item_mwo070  char=false rightclick=*exit cond="sf.messageWindowOpacity == 177"]
[graph storage=config_item_mwo080  char=false rightclick=*exit cond="sf.messageWindowOpacity == 203"]
[graph storage=config_item_mwo090  char=false rightclick=*exit cond="sf.messageWindowOpacity == 229"]
[graph storage=config_item_mwo100  char=false rightclick=*exit cond="sf.messageWindowOpacity == 255"]
[locate x=770 y=&(307-13)][font size=19 color=0xffffff][history output=false]Lorem ipsum[history output=true][defstyle]

;���ǃ��b�Z�[�W�̐F��ς���
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=300 dy=336 cond="kag.changeColorAlreadyReadText == 1"]

;���ǃ��b�Z�[�W�̂݃X�L�b�v��
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=300 dy=362 cond="sf.skipOnlyAlreadyRead == 1"]

;���b�Z�[�W�E�B���h�E�̎����ړ�
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=608 dy=336 cond="sf.windowAutoMove == 1"]

;���̃��b�Z�[�W�̓{�C�X�t���ł��邱�Ƃ�m�点�邩
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=608 dy=362 cond="sf.showVoiceIndicator == 1"]

;��ʌ��ʁi�t�F�[�h�j
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=300 dy=428 cond="sf.effectFade == 1"]

;��ʌ��ʁi�h��j
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=396 dy=428 cond="sf.effectQuake == 1"]

;��ʌ��ʁi�t���b�V���j
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=492 dy=428 cond="sf.effectFlash == 1"]

;��ʌ��ʁi�A�j���j
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=588 dy=428 cond="sf.effectAnime == 1"]

;��ʌ��ʁi���[�r�[�j
;[pimage storage="config_opt_checkbutton" layer=5 page=back dx=436 dy=355 cond="sf.effectMovieMode == 1"]

;[if exp="sf.effectMovieMode == 1"]
;	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=80  dy=383]
;[elsif exp="sf.effectMovieMode == 2"]
;	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=234 dy=383]
;[else]
;	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=388 dy=383]
;[endif]

;�\��E�B���h�E�L��
[if exp="sf.faceMode == 0"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=303 dy=500]
[elsif exp="sf.faceMode == 1"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=439 dy=500]
[elsif exp="sf.faceMode == 2"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=575 dy=500]
[else]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=710 dy=500]
[endif]

[if exp="sf.faceModeChar == 0"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=303 dy=526]
[else]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=459 dy=526]
[endif]


;;�Ďq�ዾ����
;[pimage storage="config_opt_checkbutton" layer=5 page=back dx=76 dy=505 cond="sf.�Ďq�ዾ���� == 1"]
;
;;�A�ѕ\������
;[pimage storage="config_opt_checkbutton" layer=5 page=back dx=224 dy=505 cond="sf.�A�ѕ\������ == 1"]
;
;;�A�w��\������
;[pimage storage="config_opt_checkbutton" layer=5 page=back dx=372 dy=505 cond="sf.�A�w��\������ == 1"]

;�T�C�h�J�b�g
;[pimage storage="config_opt_checkbutton" layer=5 page=back dx=280 dy=623 cond="sf.wideScreen == 0"]

;�k���\��
;[pimage storage="config_opt_checkbutton" layer=5 page=back dx=553 dy=623 cond="sf.smallScreen == 1"]


;�}�E�X�z�C�[��
[if exp="sf.whenWheelUp == 0"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=303 dy=591]
[else]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=542 dy=591]
[endif]

;
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=300 dy=628 cond="sf.�A�w��\������  == 1"]

;
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=539 dy=628 cond="sf.showExtasyCount == 0"]


;�f�t�H���g�ɖ߂�
[locate x=926 y=634][button clickse=sys_decide clicksebuf=9 rightclick=*exit graphic=config_item_default target=*to_default]

;�n�j�{�^��
[locate x=926 y=678][button clickse=sys_decide clicksebuf=9 rightclick=*exit graphic=config_ok target=*exit]

[endnowait]
[EnableClick]

[jump target=*menu3]

*pagemake2
; ���b�Z�[�W���C�� 4 ���g��
[image page=back layer=5 storage="config_bg2" visible=true]
[position layer="message4" page=back left=0 top=0 width=1366 height=768 color=0x000000 margint=0 marginl=0 opacity=0 frame=""]
[layopt   layer="message4" page=back visible=true]
[current  layer="message4" page=back]
[er]
[nowait]
[DisableClick]

;�a�f�l����
[locate x=488 y=178][button graphic=config_item_mute1 target=*item_bgm_mute1  rightclick=*exit cond="sf.bgmMute != 1"]
[locate x=488 y=178][button graphic=config_item_mute2 target=*item_bgm_mute2  rightclick=*exit cond="sf.bgmMute == 1"]
[locate x=540 y=178][button graphic=config_item_down  target=*item_bgmVolume1 rightclick=*exit cond="sf.bgmVolume > 0"]
[locate x=742 y=178][button graphic=config_item_up    target=*item_bgmVolume2 rightclick=*exit cond="sf.bgmVolume< 10"]
[pimage storage=&(getVolumeImageFile(sf.bgmVolume,sf.bgmMute,0)) layer=5 page=back dx=578 dy=177]

;�{�C�X����
[locate x=488 y=202][button graphic=config_item_mute1 target=*item_voice_mute1  rightclick=*exit cond="sf.voiceMute != 1"]
[locate x=488 y=202][button graphic=config_item_mute2 target=*item_voice_mute2  rightclick=*exit cond="sf.voiceMute == 1"]
[locate x=540 y=202][button graphic=config_item_down  target=*item_voiceVolume1 rightclick=*exit cond="sf.voiceVolume > 0"]
[locate x=742 y=202][button graphic=config_item_up    target=*item_voiceVolume2 rightclick=*exit cond="sf.voiceVolume < 10"]
[locate x=780 y=202][button clicksebuf=2 graphic=config_item_test target=*item_voiceTest]
[pimage storage=&(getVolumeImageFile(sf.voiceVolume,sf.voiceMute,0)) layer=5 page=back dx=578 dy=201]

;�a�f�{�C�X
[locate x=488 y=226][button graphic=config_item_mute1 target=*item_bgVoice_mute1  rightclick=*exit cond="sf.bgVoiceMute != 1"]
[locate x=488 y=226][button graphic=config_item_mute2 target=*item_bgVoice_mute2  rightclick=*exit cond="sf.bgVoiceMute == 1"]
[locate x=540 y=226][button graphic=config_item_down  target=*item_bgVoiceVolume1 rightclick=*exit cond="sf.bgVoiceVolume > 0"]
[locate x=742 y=226][button graphic=config_item_up    target=*item_bgVoiceVolume2 rightclick=*exit cond="sf.bgVoiceVolume < 10"]
[pimage storage=&(getVolumeImageFile(sf.bgVoiceVolume,sf.bgVoiceMute,1)) layer=5 page=back dx=578 dy=225]

;�r�d����
[locate x=488 y=250][button graphic=config_item_mute1 target=*item_se_mute1  rightclick=*exit cond="sf.seMute != 1"]
[locate x=488 y=250][button graphic=config_item_mute2 target=*item_se_mute2  rightclick=*exit cond="sf.seMute == 1"]
[locate x=540 y=250][button graphic=config_item_down  target=*item_seVolume1 rightclick=*exit cond="+sf.seVolume > 0"]
[locate x=742 y=250][button graphic=config_item_up    target=*item_seVolume2 rightclick=*exit cond="+sf.seVolume < 10"]
[locate x=780 y=250][button graphic=config_item_test target=*item_seTest]
[pimage storage=&(getVolumeImageFile(sf.seVolume,sf.seMute,0)) layer=5 page=back dx=578 dy=249]

;�a�f�r�d����
[locate x=488 y=274][button graphic=config_item_mute1 target=*item_bgSe_mute1  rightclick=*exit cond="sf.bgSeMute != 1"]
[locate x=488 y=274][button graphic=config_item_mute2 target=*item_bgSe_mute2  rightclick=*exit cond="sf.bgSeMute == 1"]
[locate x=540 y=274][button graphic=config_item_down  target=*item_bgSeVolume1 rightclick=*exit cond="+sf.BgSeVolume > 0"]
[locate x=742 y=274][button graphic=config_item_up    target=*item_bgSeVolume2 rightclick=*exit cond="+sf.BgSeVolume < 10"]
[pimage storage=&(getVolumeImageFile(sf.BgSeVolume,sf.bgSeMute,0)) layer=5 page=back dx=578 dy=273]

;�L�����{�C�X�L���@��
[if exp="sf.voiceSetting[0] == 0"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=488 dy=350]
[elsif exp="sf.voiceSetting[0] == 1"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=553 dy=350]
[elsif exp="sf.voiceSetting[0] == 2"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=648 dy=350]
[else]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=740 dy=350]
[endif]

;�L�����{�C�X�L���@�͂邩
[if exp="sf.voiceSetting[1] == 0"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=488 dy=374]
[elsif exp="sf.voiceSetting[1] == 1"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=553 dy=374]
[elsif exp="sf.voiceSetting[1] == 2"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=648 dy=374]
[else]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=740 dy=374]
[endif]

;�L�����{�C�X�L���@����
[if exp="sf.voiceSetting[2] == 0"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=488 dy=398]
[elsif exp="sf.voiceSetting[2] == 1"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=553 dy=398]
[elsif exp="sf.voiceSetting[2] == 2"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=648 dy=398]
[else]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=740 dy=398]
[endif]

;�L�����{�C�X�L���@����T
[if exp="sf.voiceSetting[3] == 0"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=488 dy=422]
[elsif exp="sf.voiceSetting[3] == 1"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=553 dy=422]
[elsif exp="sf.voiceSetting[3] == 2"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=648 dy=422]
[else]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=740 dy=422]
[endif]

;�L�����{�C�X�L���@����
[if exp="sf.voiceSetting[4] == 0"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=488 dy=446]
[elsif exp="sf.voiceSetting[4] == 1"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=553 dy=446]
[elsif exp="sf.voiceSetting[4] == 2"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=648 dy=446]
[else]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=740 dy=446]
[endif]

;�L�����{�C�X�L���@���̑�
[if exp="sf.voiceSetting[5] == 0"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=488 dy=470]
[elsif exp="sf.voiceSetting[5] == 1"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=553 dy=470]
[elsif exp="sf.voiceSetting[5] == 2"]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=648 dy=470]
[else]
	[pimage storage="config_opt_radiobutton" layer=5 page=back dx=740 dy=470]
[endif]


;�{�C�X�Đ����̃N���b�N
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=279 dy=519 cond="sf.voiceStopAtClick == 0"]

;�I�[�g�v���C���̃{�C�X
[if exp="sf.voiceStopAtClick == 1"]
	[pimage storage="config_item_autoplay" layer=5 page=back dx=300 dy=541 cond="sf.waitVoiceEndInAutoMode == 1"]
[else]
	[pimage storage="config_opt_checkbutton" layer=5 page=back dx=279 dy=543 cond="sf.waitVoiceEndInAutoMode == 1"]
[endif]

;�X�L�b�v���ɂr�d���Đ����Ȃ�
[pimage storage="config_opt_checkbutton" layer=5 page=back dx=279 dy=567 cond="sf.noSeInSkip == 1"]

;�f�t�H���g�ɖ߂�
[locate x=926 y=634][button clickse=sys_decide clicksebuf=9 rightclick=*exit graphic=config_item_default target=*to_default]

;�n�j�{�^��
[locate x=926 y=678][button clickse=sys_decide clicksebuf=9 rightclick=*exit graphic=config_ok target=*exit]

[endnowait]
[EnableClick]

[jump target=*menu3]


;�������@���b�Z�[�W���x�ݒ�@������
*item_speed1
[eval exp="kag.userChSpeed = kag.chSpeeds['slow']"]
[eval exp="kag.setUserSpeed()"]
[jump target=*menu]

*item_speed2
[eval exp="kag.userChSpeed = kag.chSpeeds['normal']"]
[eval exp="kag.setUserSpeed()"]
[jump target=*menu]

*item_speed3
[eval exp="kag.userChSpeed = kag.chSpeeds['fast']"]
[eval exp="kag.setUserSpeed()"]
[jump target=*menu]

*item_speed4
[eval exp="kag.userChSpeed = 0"]
[eval exp="kag.setUserSpeed()"]
[jump target=*menu]


;�������@�I�[�g�v���C�̑҂����Ԑݒ�@������
*item_waittime1
[eval exp="kag.autoModeLineWait = kag.autoModeLineWaits.slow"]
[jump target=*menu]

*item_waittime2
[eval exp="kag.autoModeLineWait = kag.autoModeLineWaits.slower"]
[jump target=*menu]

*item_waittime3
[eval exp="kag.autoModeLineWait = kag.autoModeLineWaits.medium"]
[jump target=*menu]

*item_waittime4
[eval exp="kag.autoModeLineWait = kag.autoModeLineWaits.faster"]
[jump target=*menu]

*item_waittime5
[eval exp="kag.autoModeLineWait = kag.autoModeLineWaits.fast"]
[jump target=*menu]


;�������@�����̃A���`�G�C���A�X�@������
*item_antialias
[jump target="*item_antialias2" cond="kag.chDefaultAntialiased == 1"]

*item_antialias1
[eval exp="kag.chDefaultAntialiased = 1"]
[eval exp="kag.fore.messages[0].antialiased= 1"]
[eval exp="kag.back.messages[0].antialiased= 1"]
[eval exp="kag.setMessageLayerUserFont()"]
[jump target=*menu]

*item_antialias2
[eval exp="kag.chDefaultAntialiased = 0"]
[eval exp="kag.fore.messages[0].antialiased= 0"]
[eval exp="kag.back.messages[0].antialiased= 0"]
[eval exp="kag.setMessageLayerUserFont()"]
[jump target=*menu]


;�������@��������i�e�j�@������
*item_mojikazari_kage
[eval exp="kag.chrShadow = !kag.chrShadow"]
[jump target=*menu]


;�������@��������i�܁j�@������
*item_mojikazari_fukuro
[eval exp="kag.chrEdge = !kag.chrEdge"]
[jump target=*menu]


;�������@��ʃG�t�F�N�g�i�t�F�[�h�j�@������
*item_effect_fade
[eval exp="sf.effectFade = !sf.effectFade"]
[jump target=*menu]


;�������@��ʃG�t�F�N�g�i�A�j���j�@������
*item_effect_anime
[eval exp="sf.effectAnime = !sf.effectAnime"]
[jump target=*menu]


;�������@��ʃG�t�F�N�g�i�h��j�@������
*item_effect_quake
[eval exp="sf.effectQuake =! sf.effectQuake"]
[jump target=*menu]


;�������@��ʃG�t�F�N�g�i�t���b�V���j�@������
*item_effect_flash
[eval exp="sf.effectFlash = !sf.effectFlash"]
[jump target=*menu]


;�������@��ʃG�t�F�N�g�i���[�r�[�j�@������
*item_effect_movie
[eval exp="sf.effectMovieMode = (sf.effectMovieMode==0)? 1 : 0"]
[jump target=*menu]


;�������@���[�r�[�̃��[�h�iwmv�j�@������
*item_moviemode1
[eval exp="sf.effectMovieMode = 1"]
[jump target=*menu]


;�������@���[�r�[�̃��[�h�impg�j�@������
*item_moviemode2
[eval exp="sf.effectMovieMode = 2"]
[jump target=*menu]


;�������@���[�r�[�̃��[�h�i�����j�@������
*item_moviemode3
[eval exp="sf.effectMovieMode = 0"]
[jump target=*menu]


;�������@���b�Z�[�W�E�B���h�E�̈ړ��@������
*item_messagewindow
[eval exp="sf.windowAutoMove = !sf.windowAutoMove"]
[jump target=*menu]


;�������@���b�Z�[�W�E�B���h�E�Z�x�@������
*item_messageWindowOpacity1
[if exp="sf.messageWindowOpacity > 46"]
	[eval exp="sf.messageWindowOpacity -= 26"]
[else]
	[eval exp="sf.messageWindowOpacity = 0"]
[endif]
[eval exp="kag.fore.messages[0].opacity = sf.messageWindowOpacity"]
[eval exp="kag.back.messages[0].opacity = sf.messageWindowOpacity"]
[jump target=*menu]

*item_messageWindowOpacity2
[if exp="sf.messageWindowOpacity > 20"]
	[eval exp="sf.messageWindowOpacity += 26"]
[else]
	[eval exp="sf.messageWindowOpacity = 21"]
[endif]
[eval exp="sf.messageWindowOpacity = 255" cond="sf.messageWindowOpacity > 256"]
[eval exp="kag.fore.messages[0].opacity = sf.messageWindowOpacity"]
[eval exp="kag.back.messages[0].opacity = sf.messageWindowOpacity"]
[jump target=*menu]


;�������@���ǃ��b�Z�[�W�̐F�ς��@������
*item_kidoku
[eval exp="kag.changeColorAlreadyReadText = !kag.changeColorAlreadyReadText"]
[jump target=*menu]


;�������@���b�Z�[�W�X�L�b�v�̐ݒ�@������
*item_messageskip
[eval exp="sf.skipOnlyAlreadyRead = !sf.skipOnlyAlreadyRead"]
[jump target=*menu]


;�������@���̃��b�Z�[�W�Ƀ{�C�X�����邩�ǂ����\���@������
*item_nextIndicator
[eval exp="sf.showVoiceIndicator = !sf.showVoiceIndicator"]
[jump target=*menu]


;�������@�J�b�g�C����\�����邩�@������
*item_cutin
[eval exp="sf.showCutin = !sf.showCutin"]
[if exp="kag.nowExistCutin==1"]
	[if exp="sf.showCutin==1"]
		[eval exp="kag.fore.layers[3].visible = true"]
		[eval exp="kag.back.layers[3].visible = true"]
		[eval exp="systembutton_object.foreButtons[7].loadImages('sysbtn_cutinOff')"]
		[eval exp="systembutton_object.backButtons[7].loadImages('sysbtn_cutinOff')"]
		[eval exp="kag.nowShowCutin=1"]
	[else]
		[eval exp="kag.fore.layers[3].visible = false"]
		[eval exp="kag.back.layers[3].visible = false"]
		[eval exp="systembutton_object.foreButtons[7].loadImages('sysbtn_cutinOn')"]
		[eval exp="systembutton_object.backButtons[7].loadImages('sysbtn_cutinOn')"]
		[eval exp="kag.nowShowCutin=0"]
	[endif]
[endif]
[jump target=*menu]


;�������@�\��\�����[�h�@������
;�\��\���̃��[�h�ݒ�@ 0:��ɕ\�� 1:�ʏ�V�[���̂ݕ\�� 2:�g�V�[���̂ݕ\�� 3:��ɕ\�����Ȃ�
;�\��\�����[�h�̐ݒ�Q 0:�S�ĕ\������ 1:�j�L�����͕\�����Ȃ�
*item_face1
[eval exp="sf.faceMode = 0"]
[eval exp="tf.messageLayer2visible = true"]

[jump target=*menu]

*item_face2
[eval exp="sf.faceMode = 1"]
[eval exp="tf.messageLayer2visible = true"  cond="f.inHScene == 0"]
[eval exp="tf.messageLayer2visible = false" cond="f.inHScene == 1"]
[jump target=*menu]

*item_face3
[eval exp="sf.faceMode = 2"]
[eval exp="tf.messageLayer2visible = true"  cond="f.inHScene == 1"]
[eval exp="tf.messageLayer2visible = false" cond="f.inHScene == 0"]
[jump target=*menu]

*item_face4
[eval exp="sf.faceMode = 3"]
[eval exp="tf.messageLayer2visible = false"]
[jump target=*menu]

*item_face5
[eval exp="sf.faceModeChar = 0"]

[if exp="sf.faceMode == 0"]
	[eval exp="tf.messageLayer2visible = true"]
[elsif exp="sf.faceMode == 1"]
	[eval exp="tf.messageLayer2visible = true"  cond="f.inHScene == 0"]
	[eval exp="tf.messageLayer2visible = false" cond="f.inHScene == 1"]
[elsif exp="sf.faceMode == 2"]
	[eval exp="tf.messageLayer2visible = true"  cond="f.inHScene == 1"]
	[eval exp="tf.messageLayer2visible = false" cond="f.inHScene == 0"]
[else]
	[eval exp="tf.messageLayer2visible = false"]
[endif]

[jump target=*menu]

*item_face6
[eval exp="sf.faceModeChar = 1"]

[if exp="f.nowShowingFaceFile!==void && f.nowShowingFaceFile!=''"]
	[if exp="checkFaceChara(f.nowShowingFaceFile)==1"]
	;���݂̕\��L��������
		[if exp="sf.faceMode == 0"]
			[eval exp="tf.messageLayer2visible = true"]
		[elsif exp="sf.faceMode == 1"]
			[eval exp="tf.messageLayer2visible = true"  cond="f.inHScene == 0"]
			[eval exp="tf.messageLayer2visible = false" cond="f.inHScene == 1"]
		[elsif exp="sf.faceMode == 2"]
			[eval exp="tf.messageLayer2visible = true"  cond="f.inHScene == 1"]
			[eval exp="tf.messageLayer2visible = false" cond="f.inHScene == 0"]
		[else]
			[eval exp="tf.messageLayer2visible = false"]
		[endif]
	[else]
	;���݂̕\��L�������j
		[eval exp="tf.messageLayer2visible = false"]
	[endif]
[endif]

[jump target=*menu]


*item_mouseWheel1
[eval exp = "sf.whenWheelUp = 0"]
[jump target=*menu]

*item_mouseWheel2
[eval exp = "sf.whenWheelUp = 1"]
[jump target=*menu]



*item_ex1
[eval exp="sf.�Ďq�ዾ���� = !sf.�Ďq�ዾ����"]
[eval exp="shoukoFaceFile()"]
[jump target=*menu]

*item_ex2
[eval exp="sf.�A�ѕ\������ = !sf.�A�ѕ\������"]
[jump target=*menu]

*item_ex3
[eval exp="sf.�A�w��\������ = !sf.�A�w��\������"]
[jump target=*menu]

*item_ex4
[if exp="sf.wideScreen==1"]
	[eval exp="kag.innerWidth = 1024"]
	[eval exp="kag.layerLeft = -171"]
[else]
	[eval exp="kag.innerWidth = 1366"]
	[eval exp="kag.layerLeft = 0"]
[endif]
[eval exp="sf.wideScreen = !sf.wideScreen"]
[jump target=*menu]

*item_ex5
[eval exp="sf.smallScreen = !sf.smallScreen"]
[if exp="sf.smallScreen==1"]
	[eval exp="kag.setZoom(600,768)"]
	[if exp="sf.wideScreen==1"]
		[eval exp="kag.innerWidth = 1067"]
	[else]
		[eval exp="kag.innerWidth = 800"]
	[endif]
	[eval exp="kag.innerHeight = 600"]
[else]
	[eval exp="kag.setZoom(1,1)"]
	[if exp="sf.wideScreen==1"]
		[eval exp="kag.innerWidth = 1366"]
	[else]
		[eval exp="kag.innerWidth = 1024"]
	[endif]
	[eval exp="kag.innerHeight = 768"]
[endif]
[jump target=*menu]

*item_ex6
[eval exp="sf.showExtasyCount = !sf.showExtasyCount"]
[jump target=*menu]




;�������@�N���b�N���ă{�C�X���~�߂邩�@������
*item_voiceAtClick
[if exp="sf.voiceStopAtClick == 0"]
	[eval exp="sf.voiceStopAtClick = 1"]
	[eval exp="sf.waitVoiceEndInAutoMode = 1"]
[else]
	[eval exp="sf.voiceStopAtClick = 0"]
[endif]
[jump target=*menu]


;�������@�I�[�g�v���C�Ń{�C�X�I����҂��@������
*item_voiceAtAutoplay
[eval exp="sf.waitVoiceEndInAutoMode = !sf.waitVoiceEndInAutoMode"]
[jump target=*menu]


;�������@�a�f�l���ʐݒ�@������
*item_bgmVolume1
[eval exp="sf.bgmVolume -= 1" cond="sf.bgmVolume > 0"]
[bgmopt gvolume=&"f.volumeMatrix[sf.bgmVolume]"]
[eval exp="sf.bgmMute=0"]
[jump target=*menu]

*item_bgmVolume2
[eval exp="sf.bgmVolume += 1" cond="sf.bgmVolume < 10"]
[bgmopt gvolume=&"f.volumeMatrix[sf.bgmVolume]"]
[eval exp="sf.bgmMute=0"]
[jump target=*menu]

*item_bgm_mute1
[eval exp="sf.bgmMute=1"]
[bgmopt gvolume=0]
[jump target=*menu]

*item_bgm_mute2
[eval exp="sf.bgmMute=0"]
[bgmopt gvolume=&"f.volumeMatrix[sf.bgmVolume]"]
[jump target=*menu]


;�������@�{�C�X���ʐݒ�@������
*item_voiceVolume1
[eval exp="sf.voiceVolume -= 1" cond="sf.voiceVolume > 0"]
[eval exp="sf.voiceMute=0"]
[seopt buf=2 gvolume=&"f.volumeMatrix[sf.voiceVolume]"]
[seopt buf=3 gvolume=&"f.volumeMatrix[sf.voiceVolume]"]
[seopt buf=4 gvolume=&"f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100"]
[seopt buf=5 gvolume=&"f.volumeMatrix[sf.voiceVolume]"]
[seopt buf=6 gvolume=&"f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100"]
[jump target=*menu]

*item_voiceVolume2
[eval exp="sf.voiceVolume += 1" cond="sf.voiceVolume < 10"]
[eval exp="sf.voiceMute=0"]
[seopt buf=2 gvolume=&"f.volumeMatrix[sf.voiceVolume]"]
[seopt buf=3 gvolume=&"f.volumeMatrix[sf.voiceVolume]"]
[seopt buf=4 gvolume=&"f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100"]
[seopt buf=5 gvolume=&"f.volumeMatrix[sf.voiceVolume]"]
[seopt buf=6 gvolume=&"f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100"]
[jump target=*menu]

*item_voiceTest
[playse storage=&tf.voiceTestFile buf=2 cond="sf.voiceMute==0"]
[jump target=*menu]

*item_voice_mute1
[eval exp="sf.voiceMute=1"]
[seopt buf=2 gvolume=0]
[seopt buf=3 gvolume=0]
;[seopt buf=4 gvolume=0]
[seopt buf=5 gvolume=0]
;[seopt buf=6 gvolume=0]
[jump target=*menu]

*item_voice_mute2
[eval exp="sf.voiceMute=0"]
[seopt buf=2 gvolume=&"f.volumeMatrix[sf.voiceVolume]"]
[seopt buf=3 gvolume=&"f.volumeMatrix[sf.voiceVolume]"]
;[seopt buf=4 gvolume=&"f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100"]
[seopt buf=5 gvolume=&"f.volumeMatrix[sf.voiceVolume]"]
;[seopt buf=6 gvolume=&"f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100"]
[jump target=*menu]


;�������@�a�f�{�C�X���ʐݒ�@������
*item_bgVoiceVolume1
[eval exp="sf.bgVoiceVolume -= 1" cond="sf.bgVoiceVolume > 0"]
[eval exp="sf.bgVoiceMute=0"]
[seopt buf=4 gvolume=&"f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100"]
[seopt buf=6 gvolume=&"f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100"]
[jump target=*menu]

*item_bgVoiceVolume2
[eval exp="sf.bgVoiceVolume += 1" cond="sf.bgVoiceVolume < 10"]
[eval exp="sf.bgVoiceMute=0"]
[seopt buf=4 gvolume=&"f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100"]
[seopt buf=6 gvolume=&"f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100"]
[jump target=*menu]

*item_bgVoice_mute1
[eval exp="sf.bgVoiceMute=1"]
[seopt buf=4 gvolume=0]
[seopt buf=6 gvolume=0]
[jump target=*menu]

*item_bgVoice_mute2
[eval exp="sf.bgVoiceMute=0"]
[seopt buf=4 gvolume=&"f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100"]
[seopt buf=6 gvolume=&"f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100"]
[jump target=*menu]


;�������@�r�d���ʐݒ�@������
*item_seVolume1
[eval exp="sf.seVolume -= 1" cond="sf.seVolume > 0"]
[seopt buf=0 gvolume=&"f.volumeMatrix[sf.seVolume]"]
[seopt buf=1 gvolume=&"f.volumeMatrix[sf.seVolume]"]
[seopt buf=9 gvolume=&"f.volumeMatrix[sf.seVolume]"]
[eval exp="sf.seMute=0"]
[jump target=*menu]

*item_seVolume2
[eval exp="sf.seVolume += 1" cond="sf.seVolume < 10"]
[seopt buf=0 gvolume=&"f.volumeMatrix[sf.seVolume]"]
[seopt buf=1 gvolume=&"f.volumeMatrix[sf.seVolume]"]
[seopt buf=9 gvolume=&"f.volumeMatrix[sf.seVolume]"]
[eval exp="sf.seMute=0"]
[jump target=*menu]

*item_seTest
[playse storage="sys_decide" buf=9 cond="sf.seMute==0"]
[jump target=*menu]

*item_se_mute1
[eval exp="sf.seMute=1"]
[seopt buf=0 gvolume=0]
[seopt buf=1 gvolume=0]
[seopt buf=9 gvolume=0]
[jump target=*menu]

*item_se_mute2
[eval exp="sf.seMute=0"]
[seopt buf=0 gvolume=&"f.volumeMatrix[sf.seVolume]"]
[seopt buf=1 gvolume=&"f.volumeMatrix[sf.seVolume]"]
[seopt buf=9 gvolume=&"f.volumeMatrix[sf.seVolume]"]
[playse storage="sys_decide2" buf=9 cond="sf.seMute==0"]
[jump target=*menu]


;�������@�a�f�r�d���ʐݒ�@������
*item_bgSeVolume1
[eval exp="sf.BgSeVolume -= 1" cond="sf.BgSeVolume > 0"]
[seopt buf=7 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[seopt buf=8 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[seopt buf=10 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[seopt buf=11 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[eval exp="sf.bgSeMute=0"]
[jump target=*menu]

*item_bgSeVolume2
[eval exp="sf.BgSeVolume += 1" cond="sf.BgSeVolume < 10"]
[seopt buf=7 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[seopt buf=8 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[seopt buf=10 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[seopt buf=11 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[eval exp="sf.bgSeMute=0"]
[jump target=*menu]

*item_bgSeTest
[playse storage="sys_decide" buf=9 cond="sf.bgSeMute==0"]
[jump target=*menu]

*item_bgSe_mute1
[eval exp="sf.bgSeMute=1"]
[seopt buf=7 gvolume=0]
[seopt buf=8 gvolume=0]
[seopt buf=10 gvolume=0]
[seopt buf=11 gvolume=0]
[jump target=*menu]

*item_bgSe_mute2
[eval exp="sf.bgSeMute=0"]
[seopt buf=7 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[seopt buf=8 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[seopt buf=10 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[seopt buf=11 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[jump target=*menu]


;�������@�L�����ʃ{�C�X�L���@������
*item_charaVoice1
[eval exp="sf.voiceSetting[tf.buf]=0"]
[jump target=*menu]

*item_charaVoice2
[eval exp="sf.voiceSetting[tf.buf]=1"]
[jump target=*menu]

*item_charaVoice3
[eval exp="sf.voiceSetting[tf.buf]=2"]
[jump target=*menu]

*item_charaVoice4
[eval exp="sf.voiceSetting[tf.buf]=3"]
[jump target=*menu]


*item_noSeInSkip
[eval exp="sf.noSeInSkip = !sf.noSeInSkip"]
[jump target=*menu]


;�������@�f�t�H���g�ɖ߂��@������
*to_default
[if exp="kag.fullScreen==false"]
	[eval exp="tf.result=askYesNo2('Return settings to default? (please be cautious of the sound being too loud)')"]
[else]
	[eval exp="tf.result=askYesNo('Return settings to default? (please be cautious of the sound being too loud)')"]
[endif]

[jump target=*menu2 cond="tf.result==false"]

;���b�Z�[�W���x
;[eval exp="kag.userChSpeed=kag.chSpeeds['normal']"]
[eval exp="kag.userChSpeed=0"]

;�I�[�g�v���C�̑҂�����
[eval exp="kag.autoModeLineWait=kag.autoModeLineWaits.medium"]

;�����̃A���`�G�C���A�X
[eval exp="kag.chDefaultAntialiased = 1"]
[eval exp="kag.fore.messages[0].antialiased= 1"]
[eval exp="kag.back.messages[0].antialiased= 1"]
[eval exp="kag.setMessageLayerUserFont()"]

;��������i�e�j
[eval exp="kag.chrShadow=1"]

;��������i�܁j
[eval exp="kag.chrEdge=1"]

;�\��\���̃��[�h�ݒ� 0:��ɕ\�� 1:�ʏ�V�[���̂� 2:�g�V�[���̂� 3:��ɕ\��
[eval exp="sf.faceMode=0"]

;�\��\�����[�h�̐ݒ�Q 0:�S�ĕ\������ 1:�j�L�����͕\�����Ȃ�
[eval exp="sf.faceModeChar=0"]

;�{�C�X�Đ����ɃN���b�N�����Ƃ��̓��� 0:�{�C�X���~�߂Ȃ��܂܎��̃��b�Z�[�W�� 1:�{�C�X���~�߂�
[eval exp="sf.voiceStopAtClick=0"]

;���b�Z�[�W�E�B���h�E�̎����ړ� 0:�����ړ����Ȃ� 1:�����ړ�����
[eval exp="sf.windowAutoMove=1"]

;�I�[�g�v���C���̋��� 0:�{�C�X�Đ��I����҂��Ȃ� 1:�{�C�X�Đ��I����҂�
[eval exp="sf.waitVoiceEndInAutoMode=1"]

;���̃��b�Z�[�W�̓{�C�X�t������\�����邩
[eval exp="sf.showVoiceIndicator=1"]

;�J�b�g�C����\�����邩
[eval exp="sf.showCutin=1"]

;���b�Z�[�W�E�B���h�E�Z�x
[eval exp="sf.messageWindowOpacity=177"]
[eval exp="kag.fore.messages[0].opacity = sf.messageWindowOpacity"]
[eval exp="kag.back.messages[0].opacity = sf.messageWindowOpacity"]

[eval exp="sf.effectFade=1"]
[eval exp="sf.effectQuake=1"]
[eval exp="sf.effectAnime=1"]
[eval exp="sf.effectFlash=1"]

[eval exp="sf.effectMovieMode=1"]

;���ǃ��b�Z�[�W�̐F
[eval exp="kag.changeColorAlreadyReadText=1"]

;���b�Z�[�W�X�L�b�v���[�h 0:�S�ăX�L�b�v 1:���ǂ̂�
[eval exp="sf.skipOnlyAlreadyRead=1"]


;�Ďq�ዾ�\��
[eval exp="sf.�Ďq�ዾ����=0"]
[eval exp="shoukoFaceFile()"]

;�A�ѕ\��
[eval exp="sf.�A�ѕ\������=0"]

;�A�w��\��
[eval exp="sf.�A�w��\������=0"]

;�g�V�[���ɓ�������J�E���g��\������
[eval exp="sf.showExtasyCount=1"]

;�z�C�[�����t��]�������Ƃ��̓���(0:�������, 1:�����߂��j
[eval exp="sf.whenWheelUp=0"]

[eval exp="sf.bgmMute=0"]
[eval exp="sf.voiceMute=0"]
[eval exp="sf.bgVoiceMute=0"]
[eval exp="sf.seMute=0"]
[eval exp="sf.bgSeMute=0"]

[eval exp="sf.bgmVolume=6"]
[eval exp="sf.voiceVolume=8"]
[eval exp="sf.bgVoiceVolume=7"]
[eval exp="sf.seVolume=6"]
[eval exp="sf.BgSeVolume=6"]

[seopt buf=0 gvolume=&"f.volumeMatrix[sf.seVolume]"]
[seopt buf=1 gvolume=&"f.volumeMatrix[sf.seVolume]"]
[seopt buf=2 gvolume=&"f.volumeMatrix[sf.voiceVolume]"]
[seopt buf=3 gvolume=&"f.volumeMatrix[sf.voiceVolume]"]
[seopt buf=4 gvolume=&"f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100"]
[seopt buf=5 gvolume=&"f.volumeMatrix[sf.voiceVolume]"]
[seopt buf=6 gvolume=&"f.volumeMatrix[sf.voiceVolume]*f.volumeMatrix[sf.bgVoiceVolume]/100"]
[seopt buf=7 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[seopt buf=8 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[seopt buf=9 gvolume=&"f.volumeMatrix[sf.seVolume]"]
[seopt buf=10 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]
[seopt buf=11 gvolume=&"f.volumeMatrix[sf.BgSeVolume]"]

[bgmopt gvolume=&"f.volumeMatrix[sf.bgmVolume]"]

[eval exp="sf.voiceSetting[0]=0"]
[eval exp="sf.voiceSetting[1]=0"]
[eval exp="sf.voiceSetting[2]=0"]
[eval exp="sf.voiceSetting[3]=0"]
[eval exp="sf.voiceSetting[4]=0"]
[eval exp="sf.voiceSetting[5]=0"]

[eval exp="sf.noSeInSkip=1"]

[eval exp="kag.saveSystemVariables()"]
[jump target=*menu]

