
*scene6-03|
[eval exp="f.chaptertitle='Should I Attack the Gaki or Rasetsu?'"]

;場所：コンビニ倉庫
;時間：放課後
;服装：裸ニーソ

[Face storage="f_a007"]
[Voice storage="a1549" buf=2]
【はるか】[CR]
「[v]はぁあああああっ！！[/v]」[KeyWait]
[FaceOff]

[text]身体に満ちた膨大な錬気を、ボクは掌へと集中させた。[KeyWait]

[Sound storage="se009" buf=0]

[ChrSet0 storage="b_a241"]
[UpDate]

[Face storage="f_a026"]
[Voice storage="a1550" buf=2]
【はるか】[CR]
「[v]おぉおおおおおっ！[/v]」[KeyWait]
[FaceOff]

[text]目映ゆい錬気の輝きがボクの手の中で、血の色をした刃幅の広い大太刀となる。[KeyWait]

[Sound storage="se219" buf=1]

[text]その柄を握り締めると、ボクの頭の中に鬼と戦う術が流れ込んできた。[KeyWait]

[Face storage="f_c904"]
[Voice storage="c0177" buf=2]
【羅刹童子】[CR]
「[v]鬼斬りの太刀……、斬鐘……[/v]」[KeyWait]
[FaceOff]

[text]さすがの鬼神も、妖しい瘴気を漂わせる禍々しい魔剣に緊張を高めた。[KeyWait]

[Face storage="f_r001"]
【鬼Ａ】[CR]
「[i]く、くそお……、何が、お、鬼斬りの太刀だっ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【鬼Ｂ】[CR]
「[i]そんなもの、恐くねえぜ！　とっとと俺のチンポしゃぶりやがれ！！[/i]」[KeyWait]
[FaceOff]

[text]一瞬怯みながらも、餓鬼どもは大声を張り上げながら襲いかかってくる。[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1551" buf=2]
【はるか】[CR]
「[v]結女を狙う鬼どもめ！　この斬鐘の刃がお前たちを斬り滅ぼすっ！！　覚悟ッ！[/v]」[KeyWait]
[FaceOff]

;★【分岐4】（羅刹へ攻撃？　雑魚鬼を攻撃？）

;Ａ羅刹童子を攻撃。【6-4 陵辱ルートへ】[CR]

;Ｂ餓鬼を攻撃。【6-6 正規ルートへ】[CR]

[SelectStart option=2]
[SelectOption target=*選択肢１ａ num=1 text="『羅刹童子を攻撃する』"]
[SelectOption target=*選択肢１ｂ num=2 text="『餓鬼を攻撃する』"]
[SelectEnd]

*選択肢１ａ
[OptionTarget num=1]
[jump storage="6-04.ks"]

*選択肢１ｂ
[OptionTarget num=2]
[jump storage="6-06.ks"]


