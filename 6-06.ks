
*scene6-06|
[eval exp="f.chaptertitle='Time to Strike Back'"]

;�ꏊ�F�R���r�j�q��
;���ԁF���ی�
;�����F���j�[�\


[Face storage="f_a026"]
[Voice storage="a1605" buf=2]
�y�͂邩�z[CR]
�u[v]�͂��������������\�\�\�\�\�\�b�I[/v]�v[KeyWait]
[FaceOff]

[ChrReset0]
[UpDate]
[Sound storage="se208" buf=0]

[Face storage="f_r001"]
�y�S�`�z[CR]
�u[i]���͂������������I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�y�S�a�z[CR]
�u[i]����Ђ��������������I�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�y�S�b�z[CR]
�u[i]���ւ����������I[/i]�v[KeyWait]
[FaceOff]

[text]�����Ȃ������т������Ă����S�ǂ����A���ׂĈꌂ�Ő؂�̂Ă�B[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1606" buf=2]
�y�͂邩�z[CR]
�u[v]�ז������A�ǂ������I�@�Ƃ����������\�\�\�\���I�I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a007"]
[Voice storage="a1607" buf=2]
�y�͂邩�z[CR]
�i[v]�P�������킯����Ȃ��̂Ɂc�c�b�I�@�a�����痬�ꍞ��ł����m�����A�S����ɂǂ��킦�΂����̂��A�����Ă�����[/v]�j[KeyWait]
[FaceOff]

[text]�g�̂��l�𒴂������x�œ����A�d������Ȑn���y�X�ƐU��񂵐����ȍU�����J��o���B[KeyWait]

[Face storage="f_r004"]
�y�S�c�z[CR]
�u[i]���͂����I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�y�S�d�z[CR]
�u[i]���Ⴄ�����I�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�y�S�e�z[CR]
�u[i]���������������I[/i]�v[KeyWait]
[FaceOff]

[text]�g��|���A�n���点��x�ɁA��S�ǂ����^����ɒ@���a���A�ǂ��������𕬂��グ�Đ▽����B[KeyWait]

[ChrSet0 storage="b_c901"]
[ChrSet1 storage="b_b121" pos=c]
[UpDate]

[Face storage="f_a007"]
[Voice storage="a1608" buf=2]
�y�͂邩�z[CR]
�u[v]�S�߂����������I�@�{�N�̌����ɁA����ȏ�G��Ȃ��I�I[/v]�v[KeyWait]
[FaceOff]

[text]�\�t�@�̏ォ���э~��A�ЂƂ���тŗ������q�Ƃ̊ԍ������l�߂��B[KeyWait]

[Face storage="f_a026"]
[Voice storage="a1609" buf=2]
�y�͂邩�z[CR]
�u[v]�₟�������������\�\�\�\�\�\���I[/v]�v[KeyWait]
[FaceOff]

[Sound storage="se218" buf=0]

[text]�����]��������񂹂�r��f���؂낤�ƁA��i����v���؂葾����U�艺���B[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0200" buf=2]
�y�������q�z[CR]
�u[v]���͂���[/v]�v[KeyWait]
[FaceOff]

[Sound storage="se312" buf=0]

[if exp="kag.skipMode!=4 && sf.effectAnime==1"]
	[move page=fore layer=0 time=200 path=(-100,0,255) accel=0]
	[move page=back layer=0 time=200 path=(-100,0,255) accel=0]
	[move page=fore layer=1 time=200 path=(-100,0,255) accel=0]
	[move page=back layer=1 time=200 path=(-100,0,255) accel=0]
	[wm]
[else]
	[ChrSet0 storage="b_c901" left=-100 top=0]
	[ChrSet1 storage="b_b121" left=-100 top=0]
	[UpDate]
[endif]

;[ChrReset0]
;[ChrReset1]
;[UpDate]

[text]����Ǘ����͌�����������܂܁A�f������ёނ��Đn��������B[KeyWait]

;�a�f�l�F�s���`
[playbgm storage="bgm007"]

[Sound storage="se302" buf=1]
[ChrSet0 storage="b_c901" left=-100 top=0]
[ChrSet1 storage="b_b121" left=-100 top=0]
[UpDate time=0]

[Face storage="f_a027"]
[Voice storage="a1610" buf=2]
�y�͂邩�z[CR]
�u[v]�Ȃ��I�H�@���A���́c�c�b�I�@�\�\�����I�H[/v]�v[KeyWait]
[FaceOff]

[text]�ǌ����悤�Ƃ���{�N�ɁA�����͎E�ӂ��Ă����������𓊂����Ă����B[KeyWait]
[text]���˓I�Ƀ{�N�͑����~�߁A�ԍ���������Đg�\����B[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0201" buf=2]
�y�������q�z[CR]
�u[v]�����A���s�������Ȃ��B�͂邩��J�߂Č����̘B�C�𑝑傳����̂͗ǂ���������ǁc�c[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_c911"]
[Voice storage="c0202" buf=2]
�y�������q�z[CR]
�u[v]��������炨���Ƃ���ƁA�͂邩�̘B�C�A����Ȃ����ɕ��������Ⴄ�񂾂�[/v]�v[KeyWait]
[FaceOff]

[text]�y������������ǁA����ɓ��ݍ��߂΋��낵���ꌂ���󂯂�B[KeyWait]
[text]����ł��{�N�͕������ƋC����点�A�^�������ƋS�_���ɂݕԂ����B[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0203" buf=2]
�y�������q�z[CR]
�u[v]����ǂ��납�A������Ɛ���Ă��G��Ȃ��������Ă��炢�A�͂𑝂��Ă邵�c�c[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a007"]
[Voice storage="a1611" buf=2]
�y�͂邩�z[CR]
�u[v]���܂����c�c�������A�Ԃ����I�I[/v]�v[KeyWait]
[FaceOff]

[text]�匕�������߂ɍ\����ƁA�����͌��������ɂ��邩�̂悤�ɁA�g�̂̐��ʂɕ����������B[KeyWait]

[Face storage="f_c908"]
[Voice storage="c0204" buf=2]
�y�������q�z[CR]
�u[v]��������炢��������A�E�����Ⴈ�����ȁ`�B�ǂ���������Ԃ��Ă��A�͂邩�͂킽���̂��ƁA���ł����ł���H[/v]�v[KeyWait]
[FaceOff]

[text]�����̎�؂ɁA�s���܂�˂��t���Đq�˂Ă���B[KeyWait]
[text]�₦�؂������́A�΂��Ă��Ă������ɏ�̌��Ђ����h���Ȃ��B[KeyWait]

[Face storage="f_a027"]
[Voice storage="a1612" buf=2]
�y�͂邩�z[CR]
�i[v]�����c�c�I�@����T�Ƃ��Ă̋L���������Ă�͂��Ȃ̂Ɂc�c�B���߂炢�Ȃ������̖����c�c�D����I�H[/v]�j[KeyWait]
[FaceOff]

[text]���̍��������������A�{�N�͂����낢���B[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0205" buf=2]
�y�������q�z[CR]
�u[v]�g�S�a�P�h�́g�S�ԕP�h����삷�邽�ߑ��݂��邩��A�������E���΂͂邩���͂������Ēj�̎q�ɖ߂�c�c[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_c910"]
[Voice storage="c0206" buf=2]
�y�������q�z[CR]
�u[v]���S�ȋS�_�ɕ����o���Ȃ��͎̂c�O�����ǁA���̋S�ԕP�����܂��܂ő҂Ƃ��āB�ň��̐l�������ĔߒQ�ɕ���ɂ�[eruby str="��" text="��"]�ł�̂�������ˁ`[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a029"]
[Voice storage="a1613" buf=2]
�y�͂邩�z[CR]
�i[v]�S�߁c�c�c�c[/v]�j[KeyWait]
[FaceOff]

[text]���e�������ׂ閳���߂ȏ΂݂ɁA�w�������C���������B[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0207" buf=2]
�y�������q�z[CR]
�u[v]���������킯�ŁA���߂�ˁc�c�A�����B����T�͂��Ȃ��̂��Ƒ�D����������[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a035"]
[Voice storage="a1614" buf=2]
�y�͂邩�z[CR]
�u[v]���c�c�H[/v]�v[KeyWait]
[FaceOff]

[text]�{�N�ɕ�������悤�ɁA�����͖������܂܂̌����ւƌ�肩�����B[KeyWait]

[Face storage="f_c908"]
[Voice storage="c0208" buf=2]
�y�������q�z[CR]
�u[v]�ł������ɂ̐S��Ƃ��߂��ĂāA����őS�R�ނ̋C�����ɋC�t���ĂȂ��Ƃ���ɂ́A�Ƃ��Ă����J���Ă�[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a035"]
[Voice storage="a1615" buf=2]
�y�͂邩�z[CR]
�u[v]�ȁA�Ȃɂ��c�c[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_c908"]
[Voice storage="c0209" buf=2]
�y�������q�z[CR]
�u[v]������c�c�A�S�_�̂킽���͂��Ȃ��𕽋C�ŎE����c�c�B����Ȃ�[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a026"]
[Voice storage="a1616" buf=2]
�y�͂邩�z[CR]
�u[v]�\�\�I�I�@�܁A�܂Ă��I[/v]�v[KeyWait]
[FaceOff]

[text]�����I���Ɠ����ɁA�����͌����̎�؂ɉs���܂��߂荞�܂����B[KeyWait]
[text]���ߍׂ��Ȕ����j��ď����Ȍ��̋ʂ������ԁB[KeyWait]

[Face storage="f_a038"]
[Voice storage="a1617" buf=2]
�y�͂邩�z[CR]
�u[v]��A��߂���I�I�@�~�Q�����I�@����������ȏ�A������ȃb�I�I[/v]�v[KeyWait]
[FaceOff]

[text]�����͖{�C�������B�Q�ĂċS�a��̑����g�a�߁h�𓊂��̂Ă�B[KeyWait]
[text]���̋S�ԕP�����܂��܂łǂ�قǂ�����̂��͒m��Ȃ����A�S�_�������q�͌�������炤���Ƃ���߁A�S���҂ɂ�����肾�B[KeyWait]
[text]�������E���΁A�{�N���j�̐g�̂ɖ߂�A�S�a�P�̗͂������B[KeyWait]
[text]�����͗I�X�Ƃ��̏�𓦂����B���������܂������Ƃ���A���͂ȃ{�N���Ԃݕ��ɂ��邱�Ƃ����ĉ\���B[KeyWait]
[text]�]�������Ȃ������B�]���āA�����̃`�����X�����������I[KeyWait]
[text]�����c�c�B[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0210" buf=2]
�y�������q�z[CR]
�u[v]���ՂՂ��B�ȁ[��ĂˁA�R�Ɍ��܂��Ă邶��Ȃ��B�킽��������Ȕ����������ȘB�C������Ȃ��܂܌������E���킯�Ȃ��ł���`[/v]�v[KeyWait]
[FaceOff]

[text]�����o���΂�������ɁA�������q�������̎�؂���܂𗣂����B[KeyWait]

[Face storage="f_c902"]
[Voice storage="c0211" buf=2]
�y�������q�z[CR]
�u[v]�܂�������ȊȒP�ɋS�a��̑�������������Ⴄ�Ȃ�Ďv��Ȃ������킠�B�ق�Ɨɂ�����A�����̂��ƈ���������Ă�̂ˁ`�B�g����T�h����Ȃ��Ă��i�����Ⴄ����[/v]�v[KeyWait]
[FaceOff]

[text]�����̎�؂ɂ킸���ɟ��ݏo�������؂����r�ߎ��ƁA�ޏ��̐g�̂����P�l�������ɕ��������������΂��B[KeyWait]

[Face storage="f_a011"]
[Voice storage="a1618" buf=2]
�y�͂邩�z[CR]
�u[v]�����I�@���炩�����Ȃ��I�I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a011"]
[Voice storage="a1619" buf=2]
�y�͂邩�z[CR]
�i[v]���������Ƃ���́A����T�ƈꏏ������I�@�������[�I�I�@������́A���̔䂶��Ȃ����ǂ��I[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_c902"]
[Voice storage="c0212" buf=2]
�y�������q�z[CR]
�u[v]���͂́B�ł��A�ɂ��Ӓn�𒣂�����A����������ƌ����̂��Ƃ����Ԃ�Ȃ�����Ȃ�Ȃ���������A�����ɍ~�Q���Ă���ď������������`�B�킽�����A�c�Ȃ��ݖ��ʂɏ��������Ȃ������[/v]�v[KeyWait]
[FaceOff]

[text]���������Ȃ���A���ƌ��߂��炠������ƌ�����ɂ߂��邾�낤�B[KeyWait]
[text]�{��Ɋ�������߁A�{�N�͓����̂Ă��a�߂��}���ŏE���グ��B[KeyWait]
[text]���̊ԂɁA������������������q�͑q�ɂ̑��ۂ܂ňړ����Ă����B[KeyWait]
[text]���������̓r�[�\�\�\[KeyWait]

[ChrReset0]
[ChrReset1]
[UpDate]

[Face storage="f_s012"]
�y�x���`�z[CR]
�u[i]�x�@���I�@�����O�l���X���ɖ�����A�ꍞ�܂ꂽ�Ƃ̒ʕ񂪂������I�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_s022"]
�y�x���a�z[CR]
�u[i]���𒲂ׂ����Ă��炤���I[/i]�v[KeyWait]
[FaceOff]

[text]�X�̕����}�ɑ��������Ȃ����B[KeyWait]
[text]�l�ʂ�̏��Ȃ��ꏊ�����A�s�ǂɕ�������S�ǂ��Ƃ̂��Ƃ��N�������Ă��Ēʕ񂵂Ă��ꂽ�炵���B[KeyWait]

[Face storage="f_o012"]
�y�X���z[CR]
�u[i]�����Ă��Ă񂶂�A�˂��������������������b�I�@�S�H�I�A�A�A�b�A�I�I�@�O�H�I�I�I�b�I[/i]�v[KeyWait]
[FaceOff]

[text]��������ɂȂ��Ă����X�������R�Ȃ���S�̈ꖡ�������B[KeyWait]
[text]���̂������Čx���̓˓���H���~�߂悤�Ƃ���B[KeyWait]

[Face storage="f_s012"]
�y�x���`�z[CR]
�u[i]�ȁA�Ȃ񂾋M�l�b�I�@������A���A�������������I�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_s022"]
�y�x���a�z[CR]
�u[i]�΁A���������I�@���A����Ȃ��I�I�@���A���A�����������I[/i]�v[KeyWait]
[FaceOff]

;SE�F�e������
[Sound storage="se237" buf=0]

[Face storage="f_r003"]
�y�X���S�z[CR]
�u[i]�Ă����߂����������I�@�����������������I�I[/i]�v[KeyWait]
[FaceOff]

[ChrSet0 storage="b_c901"]
[ChrSet1 storage="b_b121" pos=c]
[UpDate]

[Face storage="f_c902"]
[Voice storage="c0213" buf=2]
�y�������q�z[CR]
�u[v]���炠��A�ז����������悤�����A�ꏊ��ς���Ƃ��܂���B���Ⴀ�ˁg�S�a�P�h����B�͂����I[/v]�v[KeyWait]
[FaceOff]

[Sound storage="se203" buf=1]
[ChrReset0]
[ChrReset1]
[UpDate]

[text]�h�S�H�I�I�I�I�I���I[KeyWait]

[text]�����ɋC������Ă���ƁA���������̈ꌂ�ő��𐁂���΂��A�d�͂𖳎������悤�Ȑ��܂�������ł����Ƃ����Ԃɔ�ы����Ă������B[KeyWait]

[ChrSet0 storage="b_a102"]
[UpDate]

[Face storage="f_a042"]
[Voice storage="a1620" buf=2]
�y�͂邩�z[CR]
�u[v]�܁A�҂ăb�I�@���āA����A�܂����c�c�B�{�N�A�����������I�I[/v]�v[KeyWait]
[FaceOff]

[text]�ǂ������悤�Ƃ��āA�����̎p�Ƀn�b�ƂȂ����B[KeyWait]
[text]�X�g���b�v�������đS���̂܂܂ŁA���܂܂Ő���Ă����̂��B[KeyWait]

[Face storage="f_a045"]
[Voice storage="a1621" buf=2]
�y�͂邩�z[CR]
�u[v]�����`�`�`�`�`�B�����ς����A�ҊԂ��ۏo���Łc�c[/v]�v[KeyWait]
[FaceOff]

[text]�������łɋS�ǂ��͓|������������炢���񂾂��ǁc�c�A�Ȃ񂾂�����ς�p���������B[KeyWait]

[Face storage="f_a047"]
[Voice storage="a1622" buf=2]
�y�͂邩�z[CR]
�u[v]�́A�����A�������Ȃ�����I�@���āA����c�c[/v]�v[KeyWait]
[FaceOff]

[text]���ɗ����Ă��������E���グ��ƁA���X�ɉ�S�̐��t�Ƃ������݂Ăׂ�����Ƃ��Ă���B[KeyWait]

[Face storage="f_a069"]
[Voice storage="a1623" buf=2]
�y�͂邩�z[CR]
�u[v]�����A�����������Ă�ꍇ����Ȃ����I�@���A�������c�c�A�C�������������b[/v]�v[KeyWait]
[FaceOff]

[ChrReset0]
[UpDate]

[text]�܂��X�̕�����͑����C�z���������Ă���B[KeyWait]
[text]�x���ɂ���S�ɂ���A�������ɗ���ꂽ����B[KeyWait]
[text]�{�N�͒��S�n�ň��ȉt���ݐ������}���Őg�ɂ���ƁA�������q��ǂ��đ������яo�����B[KeyWait]

[BgmFadeOut time=1000]
[SoundAllOut time=1000]

;�����
[BgSet storage="_black"]
[UpDate]

[WindowOff]

[wait time=500]

[jump storage="7-01.ks"]

