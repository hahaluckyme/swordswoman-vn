
*start|�X�^�[�g
[cm]

;����������������������������������������������������������������������������������������������������

;�ݒ�t�@�C���i���Ɏg�p���Ă��Ȃ��j
[eval exp="f.configFileName = System.exeName.substring(System.exePath.length,Storages.chopStorageExt(System.exeName).length - System.exePath.length) + '.tof'"]

[loadplugin module=wuvorbis.dll]
[loadplugin module=extrans.dll]
[call storage="autoInsertLabel.ks"]
[call storage="spectrum.ks"]

;config menu status, necessary so word wrapping doesn't crash on opening it
[eval exp="tf.configOpen=0"]

;�f�o�b�O���[�h
[eval exp="tf.debugMode=0"]

;Patch stuff
[mappfont storage="Molengo.tft"]

;�e�X�g�����t�@�C��
[eval exp="tf.voiceTestFile='a9006'"]

;�N��������I�[�g�ɂȂ�̂�h��
[eval exp="kag.autoMode = 0"]

;���ǂ����ǂ����b�Z�[�W�̑����𓯈�ɌŒ�
[eval exp="kag.userCh2ndSpeed = -1"]

;�n�r�𔻕ʁi���Ɏg�p���Ă��Ȃ��j
[eval exp="tf.isNT = (System.osName.indexOf('NT')!=-1)"]
[eval exp="tf.isXpOrLater = !((System.osName.indexOf('NT 4.0')!=-1)||(System.osName.indexOf('NT 5.0')!=-1))&&(tf.isNT)"]

;���O�t�@�C���o�̓t�H���_�̐ݒ�
[eval exp="Debug.logLocation = kag.saveDataLocation"]


;�g���������
[call storage="ExtHistoryLayer.ks"]

;�Z�[�u�E���[�h��ʗp�����̓ǂݍ���
[call storage="save_load.ks"]

;�V�X�e���{�^���p�����̓ǂݍ���
[call storage="sysbtn.ks"]

;�}�N����`�ǂݍ���
[call storage="macrodefine.ks"]


;���j���[���ڂ̖�����
[eval exp="kag.menuEnabled=false"]


;����������������������������������������������������������������������������������������������������
;�V�X�e���ϐ���ݒ�

;���C�h���
[eval exp="sf.wideScreen=1" 		cond="sf.wideScreen===void"]

;���b�Z�[�W�E�B���h�E���݈ʒu
[eval exp="sf.windowTop=0" 		cond="sf.windowTop===void"]

;�\��\���̃��[�h�ݒ� 0:��ɕ\�� 1:�ʏ�V�[���̂� 2:�g�V�[���̂� 3:��ɕ\��
[eval exp="sf.faceMode=0" 		cond="sf.faceMode===void"]

;�\��\�����[�h�̐ݒ�Q 0:�S�ĕ\������ 1:�j�L�����͕\�����Ȃ�
[eval exp="sf.faceModeChar=0" 		cond="sf.faceModeChar===void"]

;�{�C�X�Đ����ɃN���b�N�����Ƃ��̓��� 0:�{�C�X���~�߂Ȃ��܂܎��̃��b�Z�[�W�� 1:�{�C�X���~�߂�
[eval exp="sf.voiceStopAtClick=0" 	cond="sf.voiceStopAtClick===void"]

;���b�Z�[�W�E�B���h�E�̎����ړ�
[eval exp="sf.windowAutoMove=1" 	cond="sf.windowAutoMove===void"]

;�I�[�g�v���C���̋��� 0:�{�C�X�Đ��I����҂��Ȃ� 1:�{�C�X�Đ��I����҂�
[eval exp="sf.waitVoiceEndInAutoMode=1" cond="sf.waitVoiceEndInAutoMode===void"]

;���̃��b�Z�[�W�̓{�C�X�t������\�����邩
[eval exp="sf.showVoiceIndicator=1" 	cond="sf.showVoiceIndicator===void"]

;�J�b�g�C����\�����邩
[eval exp="sf.showCutin=1" 		cond="sf.showCutin===void"]

;�Ďq�̊ዾ�\��
[eval exp="sf.�Ďq�ዾ����=0" 		cond="sf.�Ďq�ዾ����===void"]

;�т̕\��
[eval exp="sf.�A�ѕ\������=0" 		cond="sf.�A�ѕ\������===void"]

;�A�w��̕\��
[eval exp="sf.�A�w��\������=0" 	cond="sf.�A�w��\������===void"]

;�G�t�F�N�g�֌W
[eval exp="sf.effectFade=1" 		cond="sf.effectFade===void"]
[eval exp="sf.effectQuake=1" 		cond="sf.effectQuake===void"]
[eval exp="sf.effectAnime=1" 		cond="sf.effectAnime===void"]
[eval exp="sf.effectFlash=1" 		cond="sf.effectFlash===void"]

;���[�r�[�̃��[�h
;	0:����	1:wmv	2:mpg
[eval exp="sf.effectMovieMode=1" 	cond="sf.effectMovieMode===void"]

;���b�Z�[�W�X�L�b�v���[�h 0:�S�ăX�L�b�v 1:���ǂ̂�
[eval exp="sf.skipOnlyAlreadyRead=1" 	cond="sf.skipOnlyAlreadyRead===void"]

;���b�Z�[�W�E�B���h�E�Z�x
[eval exp="sf.messageWindowOpacity=177" cond="sf.messageWindowOpacity===void"]

;���ʐݒ�
[eval exp="sf.bgmMute=0" 		cond="sf.bgmMute===void"]
[eval exp="sf.voiceMute=0" 		cond="sf.voiceMute===void"]
[eval exp="sf.bgVoiceMute=0" 		cond="sf.bgVoiceMute===void"]
[eval exp="sf.seMute=0" 		cond="sf.seMute===void"]
[eval exp="sf.bgSeMute=0" 		cond="sf.bgSeMute===void"]

[eval exp="f.volumeMatrix=[]"]
[eval exp="f.volumeMatrix=[ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]"]

;�X�L�b�v���͂r�d���Đ����Ȃ�
[eval exp="sf.noSeInSkip=1" 		cond="sf.noSeInSkip===void"]

;�g�V�[���ɓ�������J�E���g��\������
[eval exp="sf.showExtasyCount=1"	cond="sf.showExtasyCount===void"]

;�z�C�[�����t��]�������Ƃ��̓���(0:�������, 1:�����߂��j
[eval exp="sf.whenWheelUp=0"		cond="sf.whenWheelUp===void"]

[eval exp="sf.bgmVolume=6" 		cond="sf.bgmVolume===void"]
[eval exp="sf.voiceVolume=8" 		cond="sf.voiceVolume===void"]
[eval exp="sf.bgVoiceVolume=7"	 	cond="sf.bgVoiceVolume===void"]
[eval exp="sf.seVolume=6" 		cond="sf.seVolume===void"]
[eval exp="sf.BgSeVolume=6"		cond="sf.BgSeVolume===void"]

;�I�����ʉߋL�^�p�����z��
[eval exp="sf.�I����=%[]" 		cond="sf.�I����===void"]

;�b�f�\���t���O�p�����z��
[eval exp="sf.cgOpenFlag=%[]" 		cond="sf.cgOpenFlag===void"]

;��z���[�h�p�����z��
[eval exp="sf.kaisouOpenFlag=%[]" 	cond="sf.kaisouOpenFlag===void"]

;�{�C�X�ʗL��
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

;���܂����[�h�֘A
[eval exp="sf.extraModeOpenFlag=0" 	cond="sf.extraModeOpenFlag===void"]

[eval exp="sf.cgModeContinuous = 0"	cond="sf.cgModeContinuous===void"]
[eval exp="sf.cgModeVoicePlay = 0"	cond="sf.cgModeVoicePlay===void"]

;�g�D���[�G���h�ʉ�
[eval exp="sf.throughTrueEnd=0"		cond="sf.throughTrueEnd===void"]

;����������������������������������������������������������������������������������������������������


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

;����������������������������������������������������������������������������������������������������

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

;�^�C�g���R�[���p�L��������
[eval exp="tf.rand = intrandom(0,2)"]
[BgSet storage="_white"]
[trans method=crossfade time=0][wt]
[jump storage="0-01.ks" target="*title"]