
*scene6-03|
[eval exp="f.chaptertitle='Should I Attack the Gaki or Rasetsu?'"]

;�ꏊ�F�R���r�j�q��
;���ԁF���ی�
;�����F���j�[�\

[Face storage="f_a007"]
[Voice storage="a1549" buf=2]
�y�͂邩�z[CR]
�u[v]�͂��������������I�I[/v]�v[KeyWait]
[FaceOff]

[text]�g�̂ɖ������c��ȘB�C���A�{�N�͏��ւƏW���������B[KeyWait]

[Sound storage="se009" buf=0]

[ChrSet0 storage="b_a241"]
[UpDate]

[Face storage="f_a026"]
[Voice storage="a1550" buf=2]
�y�͂邩�z[CR]
�u[v]�����������������I[/v]�v[KeyWait]
[FaceOff]

[text]�ډf�䂢�B�C�̋P�����{�N�̎�̒��ŁA���̐F�������n���̍L���呾���ƂȂ�B[KeyWait]

[Sound storage="se219" buf=1]

[text]���̕���������߂�ƁA�{�N�̓��̒��ɋS�Ɛ키�p�����ꍞ��ł����B[KeyWait]

[Face storage="f_c904"]
[Voice storage="c0177" buf=2]
�y�������q�z[CR]
�u[v]�S�a��̑����c�c�A�a���c�c[/v]�v[KeyWait]
[FaceOff]

[text]�������̋S�_���A�d����ᏋC��Y�킹��ЁX���������ɋْ������߂��B[KeyWait]

[Face storage="f_r001"]
�y�S�`�z[CR]
�u[i]���A�������c�c�A�����A���A�S�a��̑��������I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�y�S�a�z[CR]
�u[i]����Ȃ��́A�����˂����I�@�Ƃ��ƂƉ��̃`���|����Ԃ�₪��I�I[/i]�v[KeyWait]
[FaceOff]

[text]��u���݂Ȃ�����A��S�ǂ��͑吺�𒣂�グ�Ȃ���P���������Ă���B[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1551" buf=2]
�y�͂邩�z[CR]
�u[v]������_���S�ǂ��߁I�@���̎a���̐n�����O�������a��łڂ����I�I�@�o��b�I[/v]�v[KeyWait]
[FaceOff]

;���y����4�z�i�����֍U���H�@�G���S���U���H�j

;�`�������q���U���B�y6-4 �ːJ���[�g�ցz[CR]

;�a��S���U���B�y6-6 ���K���[�g�ցz[CR]

[SelectStart option=2]
[SelectOption target=*�I�����P�� num=1 text="�w�������q���U������x"]
[SelectOption target=*�I�����P�� num=2 text="�w��S���U������x"]
[SelectEnd]

*�I�����P��
[OptionTarget num=1]
[jump storage="6-04.ks"]

*�I�����P��
[OptionTarget num=2]
[jump storage="6-06.ks"]


