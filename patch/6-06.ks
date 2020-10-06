
*scene6-06|
[eval exp="f.chaptertitle='Time to Strike Back'"]

;場所：コンビニ倉庫
;時間：放課後
;服装：裸ニーソ


[Face storage="f_a026"]
[Voice storage="a1605" buf=2]
【はるか】[CR]
「[v]はぁあああああぁ――――――ッ！[/v]」[KeyWait]
[FaceOff]

[ChrReset0]
[UpDate]
[Sound storage="se208" buf=0]

[Face storage="f_r001"]
【鬼Ａ】[CR]
「[i]ごはぁああああっ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【鬼Ｂ】[CR]
「[i]ぎゃひぃいいいいぃっ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r003"]
【鬼Ｃ】[CR]
「[i]ぐへぇあああっ！[/i]」[KeyWait]
[FaceOff]

[text]怯えながらも飛びかかってくる餓鬼どもを、すべて一撃で切り捨てる。[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1606" buf=2]
【はるか】[CR]
「[v]邪魔だっ、どけえっ！　とぁあああぁ――――っ！！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a007"]
[Voice storage="a1607" buf=2]
【はるか】[CR]
（[v]訓練したわけじゃないのに……ッ！　斬鐘から流れ込んできた知識が、鬼相手にどう戦えばいいのか、教えてくれるっ[/v]）[KeyWait]
[FaceOff]

[text]身体が人を超えた速度で動き、重く巨大な刃を軽々と振り回し精密な攻撃を繰り出す。[KeyWait]

[Face storage="f_r004"]
【鬼Ｄ】[CR]
「[i]ぐはあっ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r001"]
【鬼Ｅ】[CR]
「[i]ぎゃううっ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【鬼Ｆ】[CR]
「[i]ごああああぁっ！[/i]」[KeyWait]
[FaceOff]

[text]身を翻し、刃を躍らせる度に、餓鬼どもが真っ二つに叩き斬られ、どす黒い血を噴き上げて絶命する。[KeyWait]

[ChrSet0 storage="b_c901"]
[ChrSet1 storage="b_b121" pos=c]
[UpDate]

[Face storage="f_a007"]
[Voice storage="a1608" buf=2]
【はるか】[CR]
「[v]鬼めぇえええっ！　ボクの結女に、それ以上触るなっ！！[/v]」[KeyWait]
[FaceOff]

[text]ソファの上から飛び降り、ひとっ飛びで羅刹童子との間合いを詰めた。[KeyWait]

[Face storage="f_a026"]
[Voice storage="a1609" buf=2]
【はるか】[CR]
「[v]やぁあああああぁ――――――っ！[/v]」[KeyWait]
[FaceOff]

[Sound storage="se218" buf=0]

[text]眠れる従妹を抱き寄せる腕を断ち切ろうと、上段から思い切り太刀を振り下す。[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0200" buf=2]
【羅刹童子】[CR]
「[v]あはっ♪[/v]」[KeyWait]
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

[text]けれど羅刹は結女を抱えたまま、素早く飛び退いて刃を避けた。[KeyWait]

;ＢＧＭ：ピンチ
[playbgm storage="bgm007"]

[Sound storage="se302" buf=1]
[ChrSet0 storage="b_c901" left=-100 top=0]
[ChrSet1 storage="b_b121" left=-100 top=0]
[UpDate time=0]

[Face storage="f_a027"]
[Voice storage="a1610" buf=2]
【はるか】[CR]
「[v]なっ！？　こ、この……ッ！　――うっ！？[/v]」[KeyWait]
[FaceOff]

[text]追撃しようとするボクに、羅刹は殺意の籠もった視線を投げつけてきた。[KeyWait]
[text]反射的にボクは足を止め、間合いを取って身構える。[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0201" buf=2]
【羅刹童子】[CR]
「[v]ああ、失敗だったなあ。はるかを辱めて結女の錬気を増大させるのは良かったけれど……[/v]」[KeyWait]
[FaceOff]

[Face storage="f_c911"]
[Voice storage="c0202" buf=2]
【羅刹童子】[CR]
「[v]結女を喰らおうとすると、はるかの錬気、こんなすぐに復活しちゃうんだぁ[/v]」[KeyWait]
[FaceOff]

[text]軽い口調だけれど、下手に踏み込めば恐ろしい一撃を受ける。[KeyWait]
[text]それでもボクは負けじと気を漲らせ、真っ直ぐと鬼神を睨み返した。[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0203" buf=2]
【羅刹童子】[CR]
「[v]それどころか、ちょっと戦っても敵わないかもってくらい、力を増してるし……[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a007"]
[Voice storage="a1611" buf=2]
【はるか】[CR]
「[v]いますぐ……結女を、返せっ！！[/v]」[KeyWait]
[FaceOff]

[text]大剣を腰だめに構えると、羅刹は結女を盾にするかのように、身体の正面に抱き直した。[KeyWait]

[Face storage="f_c908"]
[Voice storage="c0204" buf=2]
【羅刹童子】[CR]
「[v]手放すくらいだったら、殺しちゃおうかな～。どうせ結女を返しても、はるかはわたしのこと、討滅するんでしょ？[/v]」[KeyWait]
[FaceOff]

[text]結女の首筋に、鋭い爪を突き付けて尋ねてくる。[KeyWait]
[text]冷え切った瞳は、笑っていてもそこに情の欠片さえ宿さない。[KeyWait]

[Face storage="f_a027"]
[Voice storage="a1612" buf=2]
【はるか】[CR]
（[v]こいつ……！　希美乃としての記憶も持ってるはずなのに……。ためらいなく結女の命を……奪える！？[/v]）[KeyWait]
[FaceOff]

[text]その酷薄さを感じ取り、ボクはたじろいだ。[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0205" buf=2]
【羅刹童子】[CR]
「[v]“鬼斬姫”は“鬼慰姫”を守護するため存在するから、結女を殺せばはるかも力を失って男の子に戻る……[/v]」[KeyWait]
[FaceOff]

[Face storage="f_c910"]
[Voice storage="c0206" buf=2]
【羅刹童子】[CR]
「[v]完全な鬼神に復活出来ないのは残念だけど、次の鬼慰姫が生まれるまで待つとして。最愛の人を失って悲嘆に暮れる遼を[eruby str="愛" text="め"]でるのもいいわね～[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a029"]
[Voice storage="a1613" buf=2]
【はるか】[CR]
（[v]鬼め…………[/v]）[KeyWait]
[FaceOff]

[text]美貌が浮かべる無慈悲な笑みに、背中を寒気が走った。[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0207" buf=2]
【羅刹童子】[CR]
「[v]そういうわけで、ごめんね……、結女。希美乃はあなたのこと大好きだったわ[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a035"]
[Voice storage="a1614" buf=2]
【はるか】[CR]
「[v]え……？[/v]」[KeyWait]
[FaceOff]

[text]ボクに聞かせるように、羅刹は眠ったままの結女へと語りかけた。[KeyWait]

[Face storage="f_c908"]
[Voice storage="c0208" buf=2]
【羅刹童子】[CR]
「[v]でもいつも遼の心を独り占めしてて、それで全然彼の気持ちに気付いてないところには、とってもムカついてた[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a035"]
[Voice storage="a1615" buf=2]
【はるか】[CR]
「[v]な、なにを……[/v]」[KeyWait]
[FaceOff]

[Face storage="f_c908"]
[Voice storage="c0209" buf=2]
【羅刹童子】[CR]
「[v]だから……、鬼神のわたしはあなたを平気で殺せる……。さよなら[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a026"]
[Voice storage="a1616" buf=2]
【はるか】[CR]
「[v]――！！　ま、まてっ！[/v]」[KeyWait]
[FaceOff]

[text]いい終わると同時に、羅刹は結女の首筋に鋭い爪をめり込ませた。[KeyWait]
[text]きめ細かな肌が破れて小さな血の玉が浮かぶ。[KeyWait]

[Face storage="f_a038"]
[Voice storage="a1617" buf=2]
【はるか】[CR]
「[v]や、やめろっ！！　降参だっ！　結女をこれ以上、傷つけるなッ！！[/v]」[KeyWait]
[FaceOff]

[text]羅刹は本気だった。慌てて鬼斬りの太刀“斬鍾”を投げ捨てる。[KeyWait]
[text]次の鬼慰姫が生まれるまでどれほどかかるのかは知らないが、鬼神羅刹童子は結女を喰らうことを諦め、亡き者にするつもりだ。[KeyWait]
[text]結女を殺せば、ボクも男の身体に戻り、鬼斬姫の力を失う。[KeyWait]
[text]羅刹は悠々とこの場を逃れられる。しかもいまいったとおり、無力なボクを慰み物にすることだって可能だ。[KeyWait]
[text]従うしかなかった。従って、反撃のチャンスをうかがう！[KeyWait]
[text]だが……。[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0210" buf=2]
【羅刹童子】[CR]
「[v]うぷぷっ。なーんてね、嘘に決まってるじゃない。わたしがこんな美味しそうな錬気を喰らわないまま結女を殺すわけないでしょ～[/v]」[KeyWait]
[FaceOff]

[text]吹き出し笑い混じりに、羅刹童子が結女の首筋から爪を離した。[KeyWait]

[Face storage="f_c902"]
[Voice storage="c0211" buf=2]
【羅刹童子】[CR]
「[v]まさかこんな簡単に鬼斬りの太刀を手放しちゃうなんて思わなかったわあ。ほんと遼ったら、結女のこと愛しちゃってるのね～。“希美乃”じゃなくても妬けちゃうかも[/v]」[KeyWait]
[FaceOff]

[text]結女の首筋にわずかに滲み出た血をぺろりと舐め取ると、彼女の身体をお姫様抱っこに抱え直し羅刹が笑う。[KeyWait]

[Face storage="f_a011"]
[Voice storage="a1618" buf=2]
【はるか】[CR]
「[v]くっ！　からかったなっ！！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a011"]
[Voice storage="a1619" buf=2]
【はるか】[CR]
（[v]こういうところは、希美乃と一緒かよっ！　くっそー！！　悪趣味さは、その比じゃないけどさ！[/v]）[KeyWait]
[FaceOff]

[Face storage="f_c902"]
[Voice storage="c0212" buf=2]
【羅刹童子】[CR]
「[v]あはは。でも、遼が意地を張ったら、もうちょっと結女のこといたぶらなくちゃならなかったから、すぐに降参してくれて助かったかも～。わたしも、幼なじみ無駄に傷つけたくないもんね[/v]」[KeyWait]
[FaceOff]

[text]そういいながら、やると決めたらあっさりと結女を痛めつけるだろう。[KeyWait]
[text]怒りに顔をしかめ、ボクは投げ捨てた斬鍾を急いで拾い上げる。[KeyWait]
[text]その間に、結女を抱いた羅刹童子は倉庫の窓際まで移動していた。[KeyWait]
[text]しかもその途端―――[KeyWait]

[ChrReset0]
[ChrReset1]
[UpDate]

[Face storage="f_s012"]
【警官Ａ】[CR]
「[i]警察だ！　少女三人が店内に無理矢理連れ込まれたとの通報があった！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_s022"]
【警官Ｂ】[CR]
「[i]奥を調べさせてもらうぞ！[/i]」[KeyWait]
[FaceOff]

[text]店の方が急に騒がしくなった。[KeyWait]
[text]人通りの少ない場所だが、不良に扮した餓鬼どもとのやりとりを誰かが見ていて通報してくれたらしい。[KeyWait]

[Face storage="f_o012"]
【店員】[CR]
「[i]入ってきてんじゃ、ねぇええええええええぅッ！　ゴォオアアアッ、！！　グォオオオッ！[/i]」[KeyWait]
[FaceOff]

[text]見張り役になっていた店員も当然ながら鬼の一味だった。[KeyWait]
[text]正体を現して警官の突入を食い止めようとする。[KeyWait]

[Face storage="f_s012"]
【警官Ａ】[CR]
「[i]な、なんだ貴様ッ！　うわっ、あ、あああああっ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_s022"]
【警官Ｂ】[CR]
「[i]ば、化け物っ！　く、くるなっ！！　う、撃つ、撃つぞおおっ！[/i]」[KeyWait]
[FaceOff]

;SE：銃声数発
[Sound storage="se237" buf=0]

[Face storage="f_r003"]
【店員鬼】[CR]
「[i]てええめええええっ！　がぁあああああっ！！[/i]」[KeyWait]
[FaceOff]

[ChrSet0 storage="b_c901"]
[ChrSet1 storage="b_b121" pos=c]
[UpDate]

[Face storage="f_c902"]
[Voice storage="c0213" buf=2]
【羅刹童子】[CR]
「[v]あらあら、邪魔も入ったようだし、場所を変えるとしましょ。じゃあね“鬼斬姫”さん。はあっ！[/v]」[KeyWait]
[FaceOff]

[Sound storage="se203" buf=1]
[ChrReset0]
[ChrReset1]
[UpDate]

[text]ドゴォオオオオオン！[KeyWait]

[text]騒ぎに気を取られていると、羅刹が拳の一撃で窓を吹っ飛ばし、重力を無視したような凄まじい跳躍であっという間に飛び去っていった。[KeyWait]

[ChrSet0 storage="b_a102"]
[UpDate]

[Face storage="f_a042"]
[Voice storage="a1620" buf=2]
【はるか】[CR]
「[v]ま、待てッ！　って、うわ、まずい……。ボク、裸だったっ！！[/v]」[KeyWait]
[FaceOff]

[text]追いかけようとして、自分の姿にハッとなった。[KeyWait]
[text]ストリップさせられて全裸のままで、いままで戦っていたのだ。[KeyWait]

[Face storage="f_a045"]
[Voice storage="a1621" buf=2]
【はるか】[CR]
「[v]うう～～～～～。おっぱいも、股間も丸出しで……[/v]」[KeyWait]
[FaceOff]

[text]もうすでに鬼どもは倒しちゃったからいいんだけど……、なんだかやっぱり恥ずかしい。[KeyWait]

[Face storage="f_a047"]
[Voice storage="a1622" buf=2]
【はるか】[CR]
「[v]は、早く、制服着なくちゃ！　って、これ……[/v]」[KeyWait]
[FaceOff]

[text]床に落ちていた服を拾い上げると、所々に餓鬼の精液とかが染みてべちょっとしている。[KeyWait]

[Face storage="f_a069"]
[Voice storage="a1623" buf=2]
【はるか】[CR]
「[v]うう、もたもたしてる場合じゃないし！　く、くそぉ……、気持ち悪いぃいッ[/v]」[KeyWait]
[FaceOff]

[ChrReset0]
[UpDate]

[text]まだ店の方からは争う気配が聞こえてくる。[KeyWait]
[text]警官にしろ鬼にしろ、こっちに来られたら厄介だ。[KeyWait]
[text]ボクは着心地最悪な液染み制服を大急ぎで身につけると、羅刹童子を追って窓から飛び出した。[KeyWait]

[BgmFadeOut time=1000]
[SoundAllOut time=1000]

;黒画面
[BgSet storage="_black"]
[UpDate]

[WindowOff]

[wait time=500]

[jump storage="7-01.ks"]

