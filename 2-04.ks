
*scene2-04|
[eval exp="f.chaptertitle='In the Infirmary'"]

;背景：保健室　昼
[BgSet storage="bg070"]
[UpDate]

;ＢＧＭ：日常
[playbgm storage="bgm002"]

;場所：保健室
;時間：朝
;服装：男子体操着

[text]消毒薬の匂いが微かに鼻をつく。[KeyWait]
[text]保健室のベッドに身体を休めて息を整えていると、感度を増した肌の感覚もかなり収まってきた[KeyWait]

[Face storage="f_a912"]
[Voice storage="a0257" buf=2]
【遼】[CR]
（[v]なんだか、昨晩の、女の身体になっている時みたいな感じだったな……身体は、変わってないみたいだけど……[/v]）[KeyWait]
[FaceOff]

[text]まさかまた女体化したのかと思って確かめてみたけど、ちゃんと付いてる。[KeyWait]

[Face storage="f_a903"]
[Voice storage="a0258" buf=2]
【遼】[CR]
「[v]でも、寝不足なのは本当だしな……[/v]」[KeyWait]
[FaceOff]

[text]女になった身体で夜が明けるまで一人エッチしまくっていたから眠くてたまらない。[KeyWait]

[Face storage="f_a909"]
[Voice storage="a0259" buf=2]
【遼】[CR]
（[v]気持ち……よかったよなぁ……。男の身体とは比べものにならないほど……。何もかも、違ってたし……[/v]）[KeyWait]
[FaceOff]

[text]いまでも鮮明にその感覚が思い出せる。反芻していると、あっという間に勃起してしまった。[KeyWait]

[Face storage="f_a912"]
[Voice storage="a0260" buf=2]
【遼】[CR]
（[v]それにしても、やっぱり女になったことの影響が、男の時にも現れてるのかな？　さっきの感覚って、女の身体になってる時に似てたし……[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a921"]
[Voice storage="a0261" buf=2]
【遼】[CR]
（[v]まいったな……。これからもこんなことになるんじゃ、プロレスごっことかも、おちおち……できなく、なっ……ちゃう……[/v]）[KeyWait]
[FaceOff]

;黒画面
[BgSet storage="_black"]
[UpDate]

[text]不安に思いつつも、ベッドの上で目を閉じていると眠気が押し寄せてきた。[KeyWait]
[text]校庭からのみんなの声を遠くに聞きながら、うとうとする。[KeyWait]

[Sound storage="se518" buf=0]
;背景：保健室　昼
[BgSet storage="bg070"]
[UpDate]

[text]まどろみの中で意識がゆっくりと沈んで行く最中、保健室の戸が勢いよく開けられる音にハッと目を覚ました。[KeyWait]

[Face storage="f_c004"]
[Voice storage="c0008" buf=2]
【希美乃】[CR]
「[v]大丈夫？　足下気をつけて[/v]」[KeyWait]
[FaceOff]

[Face storage="f_b004"]
[Voice storage="b0027" buf=2]
【結女】[CR]
「[v]うん、ありがと、希美乃ちゃん……[/v]」[KeyWait]
[FaceOff]

[text]結女が希美乃に付き添われて入ってきた。[KeyWait]

[Face storage="f_a914"]
[Voice storage="a0262" buf=2]
【遼】[CR]
「[v]結女ッ！　どうしたんだ、転んだのか！？[/v]」[KeyWait]
[FaceOff]

[Sound storage="se651" buf=1]
[ChrSet1 storage="b_c023"]
[ChrSet2 storage="b_b024"]
[UpDate]

[text]驚いてベッドのカーテンを開けると、隣のベッドの上に結女が寝かされている最中だった。[KeyWait]

[Face storage="f_b004"]
[Voice storage="b0028" buf=2]
【結女】[CR]
「[v]あれ？　遼ちゃん。どうしたの？　病気？　寝てなくちゃだめだよ～[/v]」[KeyWait]
[FaceOff]

[text]心なしか声に元気がない。それなのにボクを心配しながら、せっかく横になった身体で起き上がろうとする。[KeyWait]

[Face storage="f_c004"]
[Voice storage="c0009" buf=2]
【希美乃】[CR]
「[v]寝てなくちゃダメなのは、あんたの方！　ほらっ[/v]」[KeyWait]
[FaceOff]

[text]だがすぐに希美乃に押し戻されてしまった。[KeyWait]

[Face storage="f_c004"]
[Voice storage="c0010" buf=2]
【希美乃】[CR]
「[v]この子ったら、走り始めてすぐにへたり込んじゃったのよ[/v]」[KeyWait]
[FaceOff]

[ChrSet2 storage="b_b026"]
[UpDate]

[Face storage="f_b025"]
[Voice storage="b0029" buf=2]
【結女】[CR]
「[v]なんか、急に力が入らなくなっちゃって。……あ、でも、痛いとかそういうのじゃないから、全然平気だから～[/v]」[KeyWait]
[FaceOff]

[ChrReset2]
[UpDate]

[Face storage="f_c004"]
[Voice storage="c0011" buf=2]
【希美乃】[CR]
「[v]ちゃんと寝てるの？　って、あんたが寝不足ってありえないか。夜の九時に電話したのに、もう熟睡しちゃってて出ないくらいだから……って、うわ、もう寝てる……[/v]」[KeyWait]
[FaceOff]

[text]いま元気ないなりに、普通に話してたというのに、希美乃が喋っているわずかな間に結女はもう、すやすやと寝息を立てていた。[KeyWait]

;[if exp="kag.skipMode!=4 && sf.effectAnime==1"]
;	[move layer=1 path=(0,0,255) time=2000]
;[else]
;	[ChrSet1 storage="b_c023" pos=c]
;	[UpDate]
;[endif]

[Face storage="f_a913"]
[Voice storage="a0263" buf=2]
【遼】[CR]
「[v]一度熟睡しちゃうと、ちょっとやそっとじゃ起きないからなあ[/v]」[KeyWait]
[FaceOff]

[text]恐らく昨晩のことが関係しているのではと思うが、それを希美乃に話すわけにはいかない。[KeyWait]

[ChrSet1 storage="b_c021"]
[UpDate]

[Face storage="f_c005"]
[Voice storage="c0012" buf=2]
【希美乃】[CR]
「[v]そのくせ、授業中とかに居眠りしたことは一度もないんだから。ほんと変な子よね～[/v]」[KeyWait]
[FaceOff]

[text]そういう希美乃の表情は、そんな結女が可愛らしくてたまらないといった様子だ。[KeyWait]

[Face storage="f_c005"]
[Voice storage="c0013" buf=2]
【希美乃】[CR]
「[v]あ～あ。朝っぱらから延々走らされるなんて、さすがにまっぴらだし、付き添いついでにあたしもちょっとサボっちゃおっと[/v]」[KeyWait]
[FaceOff]

[Sound storage="se567" buf=0]

[ChrReset1]
;[UpDate]
[ChrSet0 storage="b_c021l" pos=c]
[UpDate]

[text]そんなことをいいながら、ボクのベッドへ軽やかに腰を下ろしてくる。[KeyWait]

[Face storage="f_a922"]
[Voice storage="a0264" buf=2]
【遼】[CR]
「[v]ねえ……、ボクも少し眠りたいんだけど……[/v]」[KeyWait]
[FaceOff]

[Face storage="f_c001"]
[Voice storage="c0014" buf=2]
【希美乃】[CR]
「[v]どうぞ～、遠慮なく～。あたしに構わずいくらでも寝ればいいじゃない？[/v]」[KeyWait]
[FaceOff]

[text]行儀悪く脚を崩して、こっちが押し出されそうなくらい深々と腰掛ける。[KeyWait]

[Face storage="f_a923"]
[Voice storage="a0265" buf=2]
【遼】[CR]
（[v]こいつ……、ボクのこと全然男として意識してないだろ……[/v]）[KeyWait]
[FaceOff]

[text]健康的に引き締まったその生脚とブルマのお尻が、目のやりどころに困る。[KeyWait]

[Face storage="f_a917"]
[Voice storage="a0266" buf=2]
【遼】[CR]
（[v]小さい頃はよく「遼子ちゃ～ん」って、女顔をからかわれたっけ……。一度本気で怒ったら、やらなくなったけど……[/v]）[KeyWait]
[FaceOff]

[text]なんだかその頃を思い出させる悪戯めいた表情を浮かべ、こっちを振り返る。[KeyWait]
[text]希美乃がこんな顔をする時は、要注意だ。[KeyWait]

[Face storage="f_c003"]
[Voice storage="c0015" buf=2]
【希美乃】[CR]
「[v]なんなら膝枕でもしてあげようか？　それよりも結女の乳枕の方が安らかに眠れるとか♪[/v]」[KeyWait]
[FaceOff]

[text]完全にベッドに乗っかって、スカートが捲れそうになりながら、どうぞとばかりに揃えた膝を向けてきた。[KeyWait]

[Face storage="f_a922"]
[Voice storage="a0267" buf=2]
【遼】[CR]
「[v]なっ！？[/v]」[KeyWait]
[FaceOff]

[text]こんなことをすればこっちが動揺すると思ったんだろう。[KeyWait]

[Face storage="f_a922"]
[Voice storage="a0268" buf=2]
【遼】[CR]
「[v]まあ……実際そうだけどさ……。でも……[/v]」[KeyWait]
[FaceOff]

[text]いつもやられっぱなしじゃ癪に障る。[KeyWait]

[Face storage="f_a925"]
[Voice storage="a0269" buf=2]
【遼】[CR]
「[v]そうだね。じゃあ、たまには希美乃に甘えちゃおうかな。休み時間になったら起こしてね[/v]」[KeyWait]
[FaceOff]

[text]内心ドキドキしながら、思い切って彼女の生膝に頭を乗せて寝転がる。[KeyWait]

;ＢＧＭ：Ｈ２
;[playbgm storage="bgm012"]
[BgmExChange storage="bgm012" loop=true time="2000" overlap="2000"]

[ChrSet0 storage="b_c023l" pos=c]
[UpDate]

[Face storage="f_c006"]
[Voice storage="c0016" buf=2]
【希美乃】[CR]
「[v]ひゃっ！！　りょ、遼――ッ！[/v]」[KeyWait]
[FaceOff]

[text]水泳で鍛えた希美乃の脚は、もっと筋肉質で硬い気がしていたけれどそんなことはなく、十分に柔らかくて寝心地がよかった。[KeyWait]
[text]案の定、予想外の反撃に希美乃のやつ、焦ってる。[KeyWait]
[text]けれど…………。[KeyWait]

[Face storage="f_a915"]
[Voice storage="a0270" buf=2]
【遼】[CR]
（[v]ま、まずい……。転がる方向、間違えた……。こ、これじゃ……ヤバい……よ[/v]）[KeyWait]
[FaceOff]

[text]後頭部を彼女の方に向けるように転がれば良かったのだけど、反対になってしまった。[KeyWait]
[text]目の前に、体操着が微かにめくれかけた幼なじみのお腹が迫る。[KeyWait]
[text]しかも、彼女の温かな体温と共に、女の子特有の甘く爽やかな香りが、体育の授業でかいた微かな汗の匂いと混ざって、すぐそこから漂ってきていた。[KeyWait]

[Face storage="f_a915"]
[Voice storage="a0271" buf=2]
【遼】[CR]
（[v]あ、脚の間……。股間、すぐ、そこだし……。ま、まずいよ、これ……。まずい、ってば[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a915"]
[Voice storage="a0272" buf=2]
【遼】[CR]
（[v]希美乃は、気付いてないのか？　股に、顔がこんな近づいちゃってるの……[/v]）[KeyWait]
[FaceOff]

[text]だとすると慌てて向きを変えたら、かえって気付かれちゃう。[KeyWait]
[text]慌てさせるつもりが、むしろこっちが大慌てになっているんだから、慣れないことはするもんじゃない。[KeyWait]
[text]どうしようかと固まっていると、[KeyWait]

[Face storage="f_c004"]
[Voice storage="c0017" buf=2]
【希美乃】[CR]
「[v]う、うん……。チャイム、なったら……。お、起こす……から……[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a910"]
[Voice storage="a0273" buf=2]
【遼】[CR]
「[v]へっ？　き、希美……乃……？[/v]」[KeyWait]
[FaceOff]

[text]予想外の反応に面食らった。[KeyWait]

[Face storage="f_c004"]
[Voice storage="c0018" buf=2]
【希美乃】[CR]
「[v]ね……ねえ、遼。き……気持ちいい、かな……？　あたしの、ひ、膝枕……って。結女と比べて、どっちが、寝心地……イイ……？[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a916"]
[Voice storage="a0274" buf=2]
【遼】[CR]
（[v]なんだよ、妙に可愛い声、出しちゃって……。なんか、いつもと雰囲気、違っちゃったし……[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a910"]
[Voice storage="a0275" buf=2]
【遼】[CR]
（[v]でもこれってまた、希美乃の罠、だよな……？　まともに答えると、きっとすぐに元に戻って、罵り始めるんだろ……？[/v]）[KeyWait]
[FaceOff]

[text]結女の方が気持ちいいっていえば、「あたしの膝枕が気に食わないっていうの！？」ってキレるんだろうし、こっちの膝枕が気持ちいいって答えれば「へ～、結女にいいつけてやろ～っと」って意地悪してくるに決まっている。[KeyWait]

[Face storage="f_a915"]
[Voice storage="a0276" buf=2]
【遼】[CR]
（[v]―――っていうか、それ以前にっ、結女に膝枕なんかしてもらったことないってば！[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a910"]
[Voice storage="a0277" buf=2]
【遼】[CR]
（[v]なんて返事しようかな……。う～ん。とにかく、このままじゃ色々とマズいし……[/v]）[KeyWait]
[FaceOff]

[Face storage="f_c004"]
[Voice storage="c0019" buf=2]
【希美乃】[CR]
「[v]ねえ……どうなのよ……。感想くらい、聞かせなさいよ……。せ、せっかく膝枕……、してあげてるんだから……[/v]」[KeyWait]
[FaceOff]

[text]言葉に詰まっていたら、希美乃が急かしてくる。[KeyWait]

[Face storage="f_a910"]
[Voice storage="a0278" buf=2]
【遼】[CR]
「[v]う、うん、希美乃の、膝枕……き、気持ち……いいよっ！[/v]」[KeyWait]
[FaceOff]

[text]結女の方はどんな感じか知らないんだから、それ以外に言い様がない。[KeyWait]

[Face storage="f_a911"]
[Voice storage="a0279" buf=2]
【遼】[CR]
（[v]さあ来いっ、希美乃っ！　結女をダシにボクをからかってみろ！！[/v]）[KeyWait]
[FaceOff]

[text]そうしたら、キレたふりして飛び起きて、目の前に股間が迫る、この気まずい状態から逃れてみせるから。[KeyWait]
[text]だが……、[KeyWait]

[BgmFadeOut time=1000]

;黒画面
[BgSet storage="_black"]
[UpDate]

[Face storage="f_c011"]
[Voice storage="c0020" buf=2]
【希美乃】[CR]
「[v]そう……、じゃあ、その首捻り切って―――[/v]」[KeyWait]
[FaceOff]

;ＢＧＭ：ピンチ
[playbgm storage="bgm007"]

;希美乃が鬼に変化します。音声を加工して使用。
[Voice storage="c0021" buf=2]
【鬼】[CR]
「[v]ずっと膝の上に置いといてあげる！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a904"]
[Voice storage="a0280" buf=2]
【遼】[CR]
「[v]えっ！？　希美乃っ？　ぐぁああッ！　は、放せ……、痛いッ！！[/v]」[KeyWait]
[FaceOff]

[text]すごい力で頭を掴まれた。割れそうに痛い。[KeyWait]
[text]どうにか目だけを動かして希美乃を見上げた。[KeyWait]

;背景：保健室　昼
[BgSet storage="bg070"]
[ChrSet0 storage="b_r201l"]
[UpDate]

[eval exp="f.chaptertitle='K-Kimino Turned Into an Oni!?'"]

[Face storage="f_a904"]
[Voice storage="a0281" buf=2]
【遼】[CR]
「[v]ひあぁっ！！　お、鬼ッ！[/v]」[KeyWait]
[FaceOff]

[text]だが体操着姿の彼女の身体は、みるみるうちに筋骨隆々の巨体へと肥大して、顔つきもおぞましい怪物に変わっていた。[KeyWait]
[text]その頭部には、二本の太いツノ。[KeyWait]

[Face storage="f_a904"]
[Voice storage="a0282" buf=2]
【遼】[CR]
「[v]お、鬼っ！？　そんな、き、希美乃がっ！　希美乃が、鬼にっ！！[/v]」[KeyWait]
[FaceOff]

[text]宗家の人に聞いた話だと、鬼は本来実体を持たぬ存在で、人間の身体に憑依して、その身体をおぞましく強靱な怪物へ変えてしまうという。[KeyWait]

[Face storage="f_a904"]
[Voice storage="a0283" buf=2]
【遼】[CR]
（[v]希美乃が……っ。希美乃が、鬼にッ！　どうして、こんな……ッ！？　ああ……っ[/v]）[KeyWait]
[FaceOff]

[text]結女を狙ってやってきた鬼が、たまたま近くにいた彼女に乗り移ったのだろう。[KeyWait]

[Face storage="f_a924"]
[Voice storage="a0284" buf=2]
【遼】[CR]
「[v]ボクじゃなく……、希美乃……に。だって、ボ、ボク……は……[/v]」[KeyWait]
[FaceOff]

[text]鬼の禍々しい気配が濃度を増すに連れ、ボクの下腹の奥から熱い塊が急激に膨れあがってきた。[KeyWait]
[text]細胞のすべてがざわめき、新たな存在へと変わっていく感触が全身に広がる。[KeyWait]

[Sound storage="se009" buf=0]

;白画面
[BgSet storage="_white"]
[UpDate]

[text]梵字に似た文字列が、目映ゆい輝きを放って絡み合い、ボクを包むように魔法陣を織りなす。[KeyWait]

;背景：保健室　昼
[BgSet storage="bg070"]
[ChrSet0 storage="b_r201l"]
[UpDate]

[eval exp="f.status_a='はるか'"]

[Face storage="f_a007"]
[Voice storage="a0285" buf=2]
【遼】[CR]
「[v]ボクは、結女を護る、[eruby str="鬼斬姫" text="オニキリヒメ"]だからっ！[/v]」[KeyWait]
[FaceOff]

[text]またしてもボクの身体が、プロポーション抜群の美少女に変わっていた。[KeyWait]

[Face storage="f_a029"]
[Voice storage="a0286" buf=2]
【遼】[CR]
「[v]くぅうっ！　放せッ！！[/v]」[KeyWait]
[FaceOff]

[text]もはや幼なじみの面影は全くない。男か女か性別もわからぬ、筋骨隆々とした巨体の鬼。[KeyWait]
[text]それでも、その醜い身体の元になっているのは、紛れもなく希美乃の身体だ。[KeyWait]

[Face storage="f_a029"]
[Voice storage="a0287" buf=2]
【遼】[CR]
（[v]戦ったら……っ、希美乃がッ！！[/v]）[KeyWait]
[FaceOff]

[Sound storage="se211" buf=0]
[QuakeScreen time=500 vmax=10 hmax=0]

[text]攻撃をためらってしまい、もつれ合いながらベッドから転げ落ちる。[KeyWait]

;希美乃が変化した鬼ですが、ここからは声なしです。
[Face storage="f_r002"]
【鬼】[CR]
「[i]きさま……、一条の、鬼斬姫かぁああっ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_a029"]
[Voice storage="a0288" buf=2]
【遼】[CR]
「[v]うぐぅううっ！[/v]」[KeyWait]
[FaceOff]

[Sound storage="se204" buf=1]
[QuakeScreen time=500 vmax=10 hmax=0]

[eval exp="f.chaptertitle='Assaulted by the Transformed Kimino'"]
[HSceneStart]

;イベント絵表示
[CgSet storage="EV201a"]
[UpDate]

[text]鬼に上になられ、背中から床に叩き付けられた。[KeyWait]
[text]息が詰まる。[KeyWait]
[text]呻く間に、馬乗りで押さえ込まれた。[KeyWait]

[Face storage="f_a032"]
[Voice storage="a0289" buf=2]
【遼】[CR]
「[v]は、放……せっ！　希美乃から、く……っ、出て行けっ、鬼めっ！！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【鬼】[CR]
「[i]男の身体からわざわざその姿になったというのに、ずいぶんと手応えのない護り役だな！　一条の鬼斬姫め。鬼慰姫を喰らう前に、前菜代わりに味わってやろう！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_a032"]
[Voice storage="a0290" buf=2]
【遼】[CR]
「[v]く……喰う、だと？　ボ、ボクを……ッ[/v]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【鬼】[CR]
「[i]弱いくせに錬気だけはタップリと溢れてきているな。これだけで腹一杯になりそうだ。くっくっくっくっく[/i]」[KeyWait]
[FaceOff]

[text]舌なめずりしながら覆い被さってくる恐ろしい姿に、思わず背筋が震えた、[KeyWait]
[text]並外れて長く肉厚な舌から、大粒のよだれをボトッ、ボトッと滴らせて、鬼がボクの胸にむしゃぶりついてきた。[KeyWait]


;ＢＧＭ：陵辱２
[playbgm storage="bgm010"]

[Sound storage="se143" buf=0]

;イベント絵表示
[CgSet storage="EV201b"]
[UpDate]

[Face storage="f_a030"]
[Voice storage="a0291" buf=2]
【遼】[CR]
「[v]ふひゃあっ！[/v]」[KeyWait]
[FaceOff]

[text]男子用の体操着を窮屈に押し上げた、ボリューム過剰な膨らみに、その布地の上からねっとりぬめった長舌がへばり付く。[KeyWait]

[Face storage="f_a030"]
[Voice storage="a0292" buf=2]
【遼】[CR]
「[v]こ……の……ぉ、気色……悪……っ[/v]」[KeyWait]
[FaceOff]

[Sound storage="se102" buf=1]
;イベント絵表示
[CgSet storage="EV201c"]
[UpDate]

[text]じゅるんっ！！[KeyWait]

[Face storage="f_a018"]
[Voice storage="a0293" buf=2]
【遼】[CR]
「[v]ひゃぁあぅっ！　ダ、ダメっ！！　そんな、舐め……るなッ、はうっ、ふぁああっ、くぅ、ぁあああああぅッ！[/v]」[KeyWait]
[FaceOff]

[text]体操着に唾液をタップリと染みこませながら、舌が何度も往復して舐め回してくる。[KeyWait]

[Face storage="f_a018"]
[Voice storage="a0294" buf=2]
【遼】[CR]
「[v]くぅふぅうううぅ、ああっ！　やめ……あ、はぁああ、ううぅ、そんなッ、あふぅううっ！！[/v]」[KeyWait]
[FaceOff]

[text]拉げた房が弾力に応じて震え弾んでしまう。[KeyWait]

[Face storage="f_a032"]
[Voice storage="a0295" buf=2]
【遼】[CR]
（[v]もう……っ、なん、だよ……。胸ぇえ、気持ち、悪い、の、に……こんな、あっ、はあああっ、こんな、感じぃいいっ！！[/v]）[KeyWait]
[FaceOff]

[text]戦うための女体化だというのに、女の身体の敏感さが足を引っ張りまくっている。[KeyWait]
[text]乳房を弄ばれると、熱いうねりが膨らみの中から身体中に広がって、あられもなく悶えてしまう。[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]早速こんなところを硬くしおって。布にくっきり形が浮き出てるぞ！[/i]」[KeyWait]
[FaceOff]

[Sound storage="se141" buf=0]

[text]ちゅぱぁあっ！　ちゅる、ずじゅ、ぢゅぅうううぅッ！！」[KeyWait]

[text]強張った充血乳首を嘲りながら、強く吸い付いてくる。[KeyWait]

[ExVoice1 storage="aex12"]
[Face storage="f_a017"]
[Voice storage="a0296" buf=2]
【遼】[CR]
「[v]はひぃいいッ！[/v]」[KeyWait]
[FaceOff]

[text]感電したような衝撃に、背筋が痙攣に見舞われた。[KeyWait]
[text]それでも許さず、鬼の窄めた唇は、粒乳首を勢いよく吸い上げてきた。[KeyWait]

[Sound storage="se179" buf=0]

[text]じゅるるっ、つじゅぅうううっ！！　じゅるっ、ちゅっぱーっ！！　[KeyWait]

[ExVoice1 storage="aex52"]
[Face storage="f_a018"]
[Voice storage="a0297" buf=2]
【遼】[CR]
「[v]んぉぉお、ほぉ、うふぅうううっ、は、ふひぃああっ！　だ、ダメッ！！　やめ、はわぅああぁっ、吸ッちゃぁあっ！　くふぅ、お、男っ、だぞぉ……っ……ボクっ……んくっ、なんで、こんな……ッッッはぁああ――――――っ！！[/v]」[KeyWait]
[FaceOff]

;a0298
;[ExVoice1 storage="aex12"]
;「はひゃあっ！　んひっ、ひぅんっ、くっ、ふぅんっ！　はあっ！　はひゃ、は、はぁんっ！　はっ、はあぁっ！　ああっ、んふっ、くぅん……はひっ、ひゃぅっ、ん……んはあぁっ！　はあっ！　ああっ！　くはああんっ！」

[text]乳首から意識が強引に吸い出されるかと思うような、熱い激感が強張った粒肉で炸裂した。[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]グフフゥ、ここの先っぽから霊気が溢れ出しおるわ……！[/i]」[KeyWait]
[FaceOff]

[Sound storage="se140" buf=0]
;イベント絵表示
[CgSet storage="EV201d"]
[UpDate]

[text]ずぼぼぼっ、ずじゅるっ！　つぢゅ～～～～、ちゅぱっ、ちゅるぱっ！！　ずちゅぅううぅ～～！[KeyWait]

[text]体操着を捲り上げられ、剥き出しになった乳首が直接ザラザラした舌にねぶられる。[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]もっと、出せ……えッ！！　スケベな乳首から！　練気を！　もっとだ……っ！！[/i]」[KeyWait]
[FaceOff]

;吸うな、もう、そんなとこ。
[ExVoice1 storage="aex13"]
[Face storage="f_a017"]
[Voice storage="a0299" buf=2]
【遼】[CR]
「[v]かっ、はぁあああっ！　んくぅう、ひ、ぃいいっ！　吸う……んなぁあっ。も、もぉお、そん、な……よこ、……ひっ！！　んはぁああっ！　ふぁっ、あ、あ、ああああぁっ、はぁああ～～～～っ！！[/v]」[KeyWait]
[FaceOff]

;a0300
;「んひゃうっ！　はひゃ、んっ、くぅんっ！　あはぁ！　はんっ！　んんぅ！　んはっ、はあああぁんっ！　はぁああっ！　んひぃっ！　ひぐっ、ふっ、んふうっ！　あはぁっ、んくっ、ふっ、んぐううっ！」

[text]身体中がガクガク震えてどうにもならない。[KeyWait]
[text]乳首から錬気を掘り出すように、舌先でグリグリされる。[KeyWait]

[ExVoice1 storage="aex12"]
[Face storage="f_a018"]
[Voice storage="a0301" buf=2]
【遼】[CR]
「[v]おぉおおンンッ！　はぁうううっ！！　くぅッ、う……ッ、ああああぁ――――っ！[/v]」[KeyWait]
[FaceOff]

[text]強烈な官能の[eruby str="疼痛" text="とうつう"]が房肉全体に押し寄せ、たまらず白目を剥いて[eruby str="仰" text="の"]け反り震えた。[KeyWait]

[Face storage="f_a018"]
[Voice storage="a0302" buf=3]
【遼】[CR]
（[v]お……っ、ぱい、だけで……、こんな、にぃっ！　敏感ッすぎる……。敏感すぎっ、るうっ、んはぁああっ！！[/v]）[KeyWait]
[FaceOff]

[text]けれど唐突に鬼の舌が、快感に弾む胸から離れた。[KeyWait]

[ExVoice1 storage="aex05"]
[Face storage="f_a015"]
[Voice storage="a0303" buf=2]
【遼】[CR]
「[v]ふぇえ……！？[/v]」[KeyWait]
[FaceOff]

[text]つい不満を訴えるような喘ぎが漏れた。遠ざかる唇を追いかけるように、胸を[eruby str="迫" text="せ"]り上げてしまう。[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]どうした？　まだ乳をしゃぶって欲しいのか？　物欲しそうなツラしやがって、淫乱鬼斬姫め！[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex04"]
[Face storage="f_a017"]
[Voice storage="a0304" buf=2]
【遼】[CR]
「[v]はうっ！？　ち、違うッ！　そんなのっ！！　そんな顔、してないっ。ボ、ボクは……っ[/v]」[KeyWait]
[FaceOff]

[text]恥ずかしい。こんなの、無理矢理やられてることなのに、もっと続けて欲しいと思っちゃうなんて。[KeyWait]
[text]意識にまで影響を及ぼす身体の敏感さに愕然としていると、鬼の顔が今度は股間目掛けて迫ってきた。[KeyWait]

[ExVoice1 storage="aex12"]
[Face storage="f_a030"]
[Voice storage="a0305" buf=2]
【遼】[CR]
「[v]ふえっ！？　ちょっ！　やっ！！　そんなとこだめっ！　は[CR2]ひっ！！！！[/v]」[KeyWait]
[FaceOff]

[text]もがく余裕も与えてもらえない。あっという間に、顔が股ぐらに埋まり込んできた。[KeyWait]

[ExVoice1 storage="aex13"]
[Face storage="f_a018"]
[Voice storage="a0306" buf=2]
【遼】[CR]
「[v]ふぇぁああああぁはぁああぁ～～～～ッ！！　んはぁああっ！　んぉッ、あ、はぁあああぅううんっ！！[/v]」[KeyWait]
[FaceOff]

[text]熱い息が男子用の短パンの布地を超えて吹きかけられ、女になった股ぐらを蒸し上げられた。[KeyWait]
[text]しかももう早速、鬼の舌が、乳首にしたように女陰の溝を穿るようにして強く舐めてきた。[KeyWait]

[ExVoice1 storage="aex12"]
[Face storage="f_a018"]
[Voice storage="a0307" buf=2]
【遼】[CR]
「[v]かはぁああっ！　いひぃいっ！！　んおっ、ふああっ、はんっ、あ、あはぁあああぁ～～～～っ！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a0308" buf=3]
【遼】[CR]
（[v]んぅ～～～ッッ！　押し込む……からあっ！！　ぱんつ、挟まっちゃってるッ。ワレメの、中ッにっ！！　ああぁっ、布ッ、中ッ、当たって、擦れ……っ、ふあっ！　ふぇああああっ！[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a0309" buf=3]
【遼】[CR]
（[v]な、舐めてるぅっ……！　そんな……とこ、舐められた、ら……、ボク……ッ、だ、だめぇっ！[/v]）[KeyWait]
[FaceOff]

[text]トランクスに布地が敏感な粘膜に触れていて、その感触が信じられないくらい強い。[KeyWait]

[Face storage="f_a018"]
[Voice storage="a0310" buf=3]
【遼】[CR]
（[v]お……おんなのこ、の、下着……だったら、もっと、柔らかく……優しい、感触、なのかなっ！？[/v]）[KeyWait]
[FaceOff]

[text]穿いたことない。もちろん穿くつもりなんか絶対にないのに、未知の感触を想像して鼓動が高まる。[KeyWait]

[Sound storage="se179" buf=0]

[text]くちゅ、ぴちゅ、ぬちゅ、じゅるる……。ねちゃ、ちゅる、じゅるじゅる、ずじゅじゅ……。[KeyWait]

[ExVoice1 storage="aex14"]
[Face storage="f_a017"]
[Voice storage="a0311" buf=2]
【遼】[CR]
「[v]ふぁああああっ！　はぁあっ、ひうっ！！　ん、あ、はッ！　す、吸う、なあっ！！　やめ……、ほぉおあああぁあああぁ――――っ！[/v]」[KeyWait]
[FaceOff]

[text]会陰から恥丘まで、何度もしつこく舐め上げながら強く吸い付かれると、ぬかるんだイヤらしい音が鳴り響いた。[KeyWait]

;a0312
;[ExVoice1 storage="aex14"]
;「いひぃっ！　あはあっ！　はっ、はひゃあ、んくぅっ！　んひっ、ひぅ、んんぅっ！　はぁっ、ああっ、はああぁんっ！　ひゃは、はぁんっ、んふぅぅんっ！　はぅっ、んっ、んくうぅぅっ！！」

[Face storage="f_a017"]
[Voice storage="a0313" buf=3]
【遼】[CR]
（[v]ひっ！？　うそ……ぉ！　こ、この……音ッ。ボク……ぬ、濡れ……？　こんな、とこ、舐められて……濡れちゃって、いる……？　あ、あああああぁッ！！[/v]）[KeyWait]
[FaceOff]

[text]気色悪いのに、ジンジンと熱い疼きはどこまでも濃さを増している。[KeyWait]
[text]変わってしまったこの身体が、女の……、しかも、悦んでいる反応を示してしまっていた。[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]くふふふ……、少し舐めただけですけべな汁をこんなに漏らして……。どうしようもなく淫乱な鬼斬姫だな、お前は。女の身体はそんなにいいか？[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex06"]
[Face storage="f_a018"]
[Voice storage="a0314" buf=2]
【遼】[CR]
「[v]ひぁあああ……！？[/v]」[KeyWait]
[FaceOff]

[text]自覚しただけでも恥ずかしくてたまらないのに、さらに言葉ではっきりと嘲られて情けなさが胸を締め付ける。[KeyWait]

[Face storage="f_a017"]
[Voice storage="a0315" buf=3]
【遼】[CR]
（[v]ああ……こい、つ……この、鬼ぃ……。身体は、希美乃……なんだ……。希美乃に、こんな……こと……[/v]）[KeyWait]
[FaceOff]

[text]いま、希美乃の意識はどうなっているのだろうか？　完全になくなってしまったのか？　眠っているような状態なのか？　それとも、目覚めたままの状態で、いまこの光景を鬼の意識の裏からすべて見ているのだろうか？[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]次から次へと、だらしない蜜がたっぷり溢れてきやがる。レロ……、くちゅちゅ、ちゅぱ、チュ～～～～～～～～ッ、ジュチュルっ！　ツチュパァ――――――ッ！！[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex07"]
[Face storage="f_a017"]
[Voice storage="a0316" buf=2]
【遼】[CR]
「[v]あああぁ～んんッ、ち、違……ぅ、ふあっ、は、あああぁっ！！　ボクは、こんなの、イぃいいぃ、ヤぁ、あ、あああぁ、ふぇえええええぁ～～～～～～ッ！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【鬼】[CR]
「[i]イヤなわりには、ずいぶんとほぐれてるじゃないか。開いたオマンコがくっきり浮かび上がってるぜ。男のくせに女の身体で犯されたくてたまらねえんだろ？　この変態が！[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex05"]
[Face storage="f_a017"]
[Voice storage="a0317" buf=2]
【遼】[CR]
「[v]ふぇええっ！？[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a0318" buf=3]
【遼】[CR]
（[v]ち、違う……。そんな気なんて、あるわけ、ないじゃないかっ！！　ど、どうなっちゃってるんだよ……。ボクの……あ、あそこ……[/v]）[KeyWait]
[FaceOff]

[text]いったいどんなふうになっているのだろう？[KeyWait]
[text]ペニスと違って、股の下の方に付いている女性器は、鏡を使うとかしなくちゃ自分で覗くことが出来ない。[KeyWait]

[Face storage="f_a017"]
[Voice storage="a0319" buf=3]
【遼】[CR]
（[v]ああ……きっと、すごく、エロく、なって……。おとこ、なのに……。おんなの、身体で……お、おまん、こ……。はああぁううううぅッ！[/v]）[KeyWait]
[FaceOff]

[ExVoice1 storage="aex06"]
[Face storage="f_a017"]
[Voice storage="a0320" buf=2]
【遼】[CR]
「[v]で、でも……っ！　こ……こんな、こと……。んぁああっ、さ、されればっ、だれ、だって……ぇ、ふぁあっ、あはぁっ！！[/v]」[KeyWait]
[FaceOff]

[text]女の身体になったばかりで詳しいわけではないが、こんなことをされれば、本物の女の子だってひとたまりもないはずだ。[KeyWait]
[text]それともこの身体だけが特別に敏感で、刺激されるとすぐ感じちゃうのだろうか？[KeyWait]
[text]女になった自分だけが、どうしようもない淫乱なんだろうか？[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]だとしても、締まりがなさすぎなんだよ！　ドスケベ鬼斬姫がっ！！　おまんここんなにトロトロにしやがって！[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex07"]
[Face storage="f_a018"]
[Voice storage="a0321" buf=2]
【遼】[CR]
「[v]ひゃうッ！　ああっ、やっ！！　だめっ！　やめろっ、あああああぁぅ、ああぁ――――ッ！！[/v]」[KeyWait]
[FaceOff]

[text]短パンを脱がされそうになって慌ててもがいた。[KeyWait]
[text]どうにか身体を俯せに返して這って逃げようとする。[KeyWait]

[Sound storage="se506" buf=0]
;黒画面
[BgSet storage="_black"]
[UpDate]

[text]けれど鬼の手は、下着ごと短パンを掴むと勢いよく引き下ろしてしまった。[KeyWait]

;イベント絵表示
[CgSet storage="EV202a"]
[UpDate]

[ExVoice1 storage="aex08"]
[Face storage="f_a017"]
[Voice storage="a0322" buf=2]
【遼】[CR]
「[v]はぁああぁうぅうううっ！　み、見るなっ！！　あああぁっ、戻せ、ってばあっ！[/v]」[KeyWait]
[FaceOff]

[text]尻がさらけ出され、股の狭間で濡れて[eruby str="綻" text="ほころ"]んだ女陰が丸見えにされた。[KeyWait]
[text]仰向けで股間を開帳させられるのと、俯せで尻ごと陰部を露出させられるのと、どっちが恥ずかしいのか分からない。[KeyWait]
[text]けれども、犬みたいに這いつくばって後ろから股ぐらを覗かれている姿勢は、妙に屈辱的な気分にさせられる。なのに、[KeyWait]

[Face storage="f_a018"]
[Voice storage="a0323" buf=3]
【遼】[CR]
（[v]んくぅ～～～、ああっ、汁が……溢れて、垂れてきてるッ。脚に、ツーッって、ボクの、汁……。おまんこの、汁……ぅッ[/v]）[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【鬼】[CR]
「[i]くっふっふ、なんて量だよ。まるで小便漏らしてるみたいだぜ[/i]」[KeyWait]
[FaceOff]

[text]当然鬼が見逃すわけがない。[KeyWait]

[Face storage="f_a017"]
[Voice storage="a0324" buf=3]
【遼】[CR]
（[v]だって、勝手に、溢れてきちゃう……からっ。も、もう。中の方、さっきから、キュンッ、キュンって、なんか窄まった感じ、してるし……。もっと奥ッ、心臓みたいに、脈がッ。あああぁ……ッ[/v]）[KeyWait]
[FaceOff]

[text]反論したいけど、自分から淫らなことを証明しちゃいそうで、心の中だけに押し止める。[KeyWait]
[text]子宮に蠢かれると頭がエッチに染められて、きちんとものが考えられない。[KeyWait]

[Face storage="f_a017"]
[Voice storage="a0325" buf=3]
【遼】[CR]
（[v]くぅ……、エッチな、匂い……漂って……。こ、これ、ボクの、おまんこの、匂いっ！　甘酸っぱくて、いやらしい……匂い、ああっ！[/v]）[KeyWait]
[FaceOff]

[text]さらけ出されたことで、綻んだ肉襞の奥の香りがムンムンと溢れかえって鼻腔に届いてきた。[KeyWait]
[text]自分の股間の匂いに朦朧となって、だらしなく表情が蕩ける。[KeyWait]
[text]生臭く饐えた男根の汚臭とは大違いな、大量の愛液が放つ甘く芳醇な牝臭に、情欲がどうしようもなく膨れあがってしまう。[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]本当は男のくせに、オマンコ丸出しでますます発情したか。牝犬並の性欲だな、鬼斬姫め[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex07"]
[Face storage="f_a018"]
[Voice storage="a0326" buf=2]
【遼】[CR]
「[v]く……うぅううぅ、ちが……う！　ああっ、ちがう、ふぁあああっ！！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a0327" buf=3]
【遼】[CR]
（[v]あああっ、疼き、止まらない。襞が、さっきから、ビクビクッ、止まらない！　奥からっ、汁ッ、溢れてきちゃう、の、止まらないッ！！　だめっ、ああ、なん、でっ！　これじゃ、あああぁっ！！！[/v]）[KeyWait]
[FaceOff]

[text]鬼がいちいち指摘するから、ますます意識して反応が激しさを増す。[KeyWait]
[text]収縮を繰り返す膣穴から、粘度を増して愛液が湧きこぼれ、下腹部の熱と疼きがもう限界だ。[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]ここも、開きっぱなしで、早く入れて欲しくてたまらないんだろ？　ほら！[/i]」[KeyWait]
[FaceOff]

;[Flash]
;イベント絵表示
[CgSet storage="EV202b"]
[UpDate]

[ExVoice1 storage="aex12"]
[Face storage="f_a018"]
[Voice storage="a0328" buf=2]
【遼】[CR]
「[v]はひゃぁっ！！　んんんぁああああっ、やっ、ふぁあああああぁ――――ッ！　さわ、る、んぬぁああぁッ！！[/v]」[KeyWait]
[FaceOff]

[text]大陰唇の花弁片を直に触られ、電流が走った。[KeyWait]
[text]爪の尖った指先の硬さに息が詰まり、痙攣が収まらなくなる。[KeyWait]

[ExVoice1 storage="aex15"]
[Face storage="f_a018"]
[Voice storage="a0329" buf=2]
【遼】[CR]
「[v]んぉおおおおぉ、あああああぁっ！　ひゃめっ、ふあああっ！！　弄りゅにゃぁあっ！　あふっ、ふぁああっ、んぁあああっ！！　らめっ、ふぇああああっ！[/v]」[KeyWait]
[FaceOff]

;a0330
;[ExVoice1 storage="aex15"]
;「ひゃああっ！　んはあっ！　んひぃっ！　ひぐっ、く、ぅうんっ！　んはっ、んっ、んんぅっ！　あはぁっ、ひゃはっ、ひゅく、くひ、んひいぃんっ！」

[text]薄い小陰唇のひらひらごと、粘膜をぐちゃぐちゃ掻き乱されて、甘美一色に脳が染まった。[KeyWait]
[text]続けざまに激しい炸裂が起こって、目眩に似た衝撃に脳が見舞われる。[KeyWait]

[Face storage="f_a018"]
[Voice storage="a0331" buf=3]
【遼】[CR]
（[v]ああああぁ、ぬるぬる！　中から出た、ヌルヌルがあぁ！！　こんなの、おかしくなっちゃうっ！！　ああぁつ、だめっ！　こんなっ、他人に、触られると、こんなぁあっ！！　自分で、するより、もっと……あ、ふぁ……ッ[/v]）[KeyWait]
[FaceOff]

[ExVoice1 storage="aex14"]
[Face storage="f_a018"]
[Voice storage="a0332" buf=2]
【遼】[CR]
「[v]はぁああああああぁ――――――ッ！　ふぇうっ！！　んぉおお、はぁあああぁ～～～～～ンンッ！　んうっ！！　ひゃぁあああぅううっ！[/v]」[KeyWait]
[FaceOff]

[text]鬼へと差し出すように尻が迫り上がった。[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]そんなに我慢出来ないか。ずいぶんと堪え性のない鬼斬姫だな！[/i]」[KeyWait]
[FaceOff]

[text]尿口も膣穴も丸見えになったその部分へ、呆れ果てたように嘲りながら鬼の唇が押し当てられる。[KeyWait]

[Sound storage="se179" buf=0]

[text]じゅる！　ちゅぱあ、むじゅじゅる、ちゅるるる――ッ！[KeyWait]

[ExVoice1 storage="aex13"]
[Face storage="f_a018"]
[Voice storage="a0333" buf=2]
【遼】[CR]
「[v]ふうぇええ、え、えええぇ、はわぅっ、ほはわぁああっ！　んふああぁ――――ッ！！[/v]」[KeyWait]
[FaceOff]

[text]膣穴の奥の方から滲み出たばかりの愛液まで、容赦ない勢いで吸い上げられた。[KeyWait]
[text]舌が膣口をぐりんぐりんと舐め回して、窄まろうとする穴口がこじ開けられる。[KeyWait]

[ExVoice1 storage="aex14"]
[Face storage="f_a017"]
[Voice storage="a0334" buf=2]
【遼】[CR]
「[v]う、うそ……ぉおっ！？　しゅ、しゅってりゅっ！　ボクのなか、からっ、おつゆぅ、しゅって、りゅううぅっ！！　あ、あああぁう、ぐぅううっ、んふぅうう、あああああぁッ！[/v]」[KeyWait]
[FaceOff]

[text]さらに、膣口をほぐした舌が、そのままワレメを押し広げて舐め上がり、すごく敏感な陰核粒を乱暴に転がしてきた。[KeyWait]

[ExVoice1 storage="aex15"]
[Face storage="f_a018"]
[Voice storage="a0335" buf=2]
【遼】[CR]
「[v]ひうっ！！　あひっ！　そこッ、だめぇッ、ああっ、強いぃッ！！　くひっ、狂っちゃうっ、頭ぁ～～、跳んッ、じゃうっ！　ふぇ……ええぇ～～～～、やだぁ、ふぁぅ、ああああぁ――――――――ッ！！[/v]」[KeyWait]
[FaceOff]

[text]包皮を捲られたダイレクトな鋭敏部を、押し潰すようにねぶられた。[KeyWait]
[text]殴打の様な快感が続けざまに炸裂し、脳が揺さぶられた。[KeyWait]

;a0336
[ExVoice1 storage="aex14"]
[Face storage="f_a018"]
[Voice storage="a0335" buf=2]
【遼】[CR]
「[v]はひぃっ！　ひぎっ！　くっ、うんんぅっ！　はひゃあっ！　ひゃふっ、くんっ、んっ、んはああっ！　ひぎっ！　んくっ！　はあんっ！　ふあ、はっ、はふぅぅんっ！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a0337" buf=3]
【遼】[CR]
（[v]ふぎぃ、いいいぃッ！　気持ち良さっ、どんどん、重なってッ、ふぁああっ！！　飛ぶッ、飛ぶぅうっ！　あ、あたまぁあああっ！！　こんなのっ、きもひよしゅぎぃイッ、あたま、飛んじゃふ、かりゃあっ！[/v]）[KeyWait]
[FaceOff]

[text]心臓が割れるように鳴り響いて、息が苦しい。[KeyWait]
[text]あられもない嬌声がもう止められない。[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]ぐびっ！　じゅるるっ、んぐっ、んぐはぁっ！　お前の[eruby str="錬気" text="れんき"]もなかなかの物だな。マン汁と一緒にたっぷり溢れてきやがる！！　男のくせにそんな姿になっただけのことはあるぜ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【鬼】[CR]
「[i]どうせだから一滴残らずほじくり出して、俺様がすべて飲み尽くしてやろう！！[/i]」[KeyWait]
[FaceOff]

[Sound storage="se106" buf=1]
;イベント絵表示
[CgSet storage="EV202c"]
[UpDate]

[text]ぬちゅちゅっ！　ずぷっ！！　ぬぶぶっ！[KeyWait]

[ExVoice1 storage="aex15"]
[Face storage="f_a018"]
[Voice storage="a0338" buf=2]
【遼】[CR]
「[v]ひぁあああぁっ！　だめ……っ、あぁあああぁっ！　や、だっ、い……入れる、なぁああああっ！！[/v]」[KeyWait]
[FaceOff]

;[Sound storage="se111" buf=0]

[text]弛みきった濡れ穴に鬼が指を押し込んできた。[KeyWait]

[Face storage="f_a017"]
[Voice storage="a0339" buf=3]
【遼】[CR]
（[v]簡単、にっ、は、入っちゃうっ！　ああっ、ゆびっ、ボクのなかに……っ、入って……きちゃうっ！！　お、おとこ、なのに、なかに、指ぃ……ッ！[/v]）[KeyWait]
[FaceOff]

[text]股にも尻にも力が入らない。押し込まれるままに、ずぶずぶと指が膣に埋まってくる。[KeyWait]

[ExVoice1 storage="aex17"]
[Face storage="f_a018"]
[Voice storage="a0340" buf=2]
【遼】[CR]
「[v]ひぐっ……はひゃあああああぁあっ！！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a0341" buf=3]
【遼】[CR]
（[v]くぅうぅ……ううっ、なんで、こんな……変な、感じ……なのに、ふぁああっ！　ち、違う……ッ、気持ち、よくなんか……んぁああっ！　あふっ、イ……イィ……[/v]）[KeyWait]
[FaceOff]

[text]異物が敏感な穴の中に入ってくる感覚が、いやで仕方がない。[KeyWait]
[text]なのに、身体は快感に悶えくねり、膣は刺激を味わい尽くそうと窮屈に窄まる。[KeyWait]

;a0342
;[ExVoice1 storage="aex17"]
;「ひゃぐっ！　んひっ！　ひぃんっ！　くはっ、はぅ……んんぅっ！　はあっ！　ああっ！　はひゃあんっ！　くひっ！　ふっ、んっ、んあっ！　はぅっ、んくううぅっ！！」

[Face storage="f_a017"]
[Voice storage="a0343" buf=3]
【遼】[CR]
（[v]なんだよ……この、からだぁっ。感じすぎる、ってば。これじゃ……淫乱、女……。ち、恥女……だよ、ボク……ッ。男、なのに、ボク……淫乱な、恥女……ッ！[/v]）[KeyWait]
[FaceOff]

[text]腰がクイッ、クイッと迫り上がって、自分から太い指を奥へと迎えてしまう。[KeyWait]
[text]全身が小刻みに痙攣し続けて、おっぱいが絶え間なく弾んでいる。[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]元々男とは思えないくらい、膣内もすっかり欲情してるな。濡れ濡れの襞が指にしっかり絡みついてくるぜ。このままもっとほぐせば、いつでも俺様の逸物をくわえ込めるな[/i]」[KeyWait]
[FaceOff]

[Sound storage="se138" buf=7 loop=true]

[text]ぬちゅっ、ぐちゅぐちゅ、ぐじゅぬじゅぐじゅじゅっ！！[KeyWait]

[ExVoice1 storage="aex23"]
[Face storage="f_a017"]
[Voice storage="a0344" buf=2]
【遼】[CR]
「[v]ひうっ！？　い、いち……もつ、って……。や、やだ、そんなのっ！　ボクはっ、ボクは、おと……ほぉおぁあああああぁつ！！　やっ、ふぁああっ、掻き……回す、な……はぁああぁ～～～～ン！[/v]」[KeyWait]
[FaceOff]

[text]身体は女に変わってしまったけれど、心は正真正銘男だ。[KeyWait]
[text]いくらこんな身体でも、男の……ペニスを入れられるなんて……！！　それだけは絶対にいやだ。[KeyWait]
[text]なのに鬼の指は、より太いものを迎え込めるようにと、弛んだ膣をさらにくじってくる。[KeyWait]

[Face storage="f_a017"]
[Voice storage="a0345" buf=3]
【遼】[CR]
（[v]ふぁあっ、広げられる！！　ボクのおまんこ穴ぁ、広げられちゃう！　ちんこ、入るようにされちゃうっ！！[/v]）[KeyWait]
[FaceOff]

[text]危機感が高まる。なのに、内壁を穿られる快感に、膣は一段と勢いを増して窄まり、指を締め付ける。[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]どこまでドスケベなまんこなんだよ！　こんな狭くなったら、入りにくくなっちまうだろが！！　てめえは元々男なんだから、それくらい気を遣え！　締め付けるのはちんこ入れてからにしろっ！！[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex17"]
[Face storage="f_a018"]
[Voice storage="a0346" buf=2]
【遼】[CR]
「[v]ひうっ！　だ、だ……ってぇ……。んあっ！！　そんな、中ッ、されたらぁ、キュンキュン、来るの、止まらない、からっ！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a0347" buf=3]
【遼】[CR]
（[v]って、なんでボク、こんなヤツに言い訳してるんだよ！　ああ、でも、おまんこ、キュンってなるの、止まらないッ！！　ひぅうっ、膣のなかっ、穿られるの、感じちゃう、よっ！[/v]）[KeyWait]
[FaceOff]

[text]身体が女の快感に目覚め行く。[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]ふん、発情しすぎだ。元は男のくせに、まるで生まれながらの淫乱女だなっ！　一度イかせないとこの膣いつまでも、ちんぽ代わりに指、締め付けてきやがるっ！！[/i]」[KeyWait]
[FaceOff]

[text]いままで満遍なく膣壁を穿っていた鬼の指が、一点を集中して刺激してきた。[KeyWait]

[ExVoice1 storage="aex12"]
[Face storage="f_a017"]
[Voice storage="a0348" buf=2]
【遼】[CR]
「[v]ひはっ！？　あっ、あ、あ、あああ、ああっ！？[/v]」[KeyWait]
[FaceOff]

[text]恥骨裏の少し窪んだ箇所。そこを圧迫された途端、いままでと違う、おしっこが漏れそうな感じに近い強い切迫感が膨れあがった。[KeyWait]

[ExVoice1 storage="aex18"]
[Face storage="f_a017"]
[Voice storage="a0349" buf=2]
【遼】[CR]
「[v]そ、そ……こぉ、なにっ？　ふあ、や、だめ……、はひぃいっ！！[/v]」[KeyWait]
[FaceOff]

;a0350
;[ExVoice1 storage="aex18"]
;「ひゃうっ！　はんっ！　んくっ！　ふっ！　んあああっ！　はぁんっ！　んひっ！　ひゃはっ！　はっ、んぐっ！　んひぃっ！　んくっ、はっ！　んんっ、いひいいぃっ！　ひゃうっ！　あはあっ！　あっ！　はあんっ！」

[text]強めにぐりんと抉ってくる。続けざまに何度も何度も。[KeyWait]
[text]その度に下腹の奥で熱く疼く壺器官が、これまでと質の違う濃密なうねりをわき立たせる。[KeyWait]

[Sound storage="se106" buf=0]

[text]ぬずんっ、くじゅっ！　ヌリッ、ヌズッ！[KeyWait]

[ExVoice1 storage="aex13"]
[Face storage="f_a018"]
[Voice storage="a0351" buf=2]
【遼】[CR]
「[v]あひっ！！　ふわっ、らめっ、そこっ！　はぁああ、やめへっ、や、あぁああっ！！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a0352" buf=3]
【遼】[CR]
（[v]ひううっ！　なに、ここっ、すご、いっ、突き上がって……クルッ！！　ふぁあああぁ、ク、クルぅッ！[/v]）[KeyWait]
[FaceOff]

[text]一定のリズムと強さで、その一点だけを単調に刺激される。なのに、緩急強弱織り交ぜて満遍なく掻き乱された膣壁全体の快感より、何倍も濃厚な悦楽が膨れあがってくる。[KeyWait]

[ExVoice1 storage="aex18"]
[Face storage="f_a017"]
[Voice storage="a0353" buf=2]
【遼】[CR]
「[v]んふぅううぁっ！　これ……ぇッ、こんな、の、ふぁぅ、あああぁ、どう、なって、くふぉぉおあッ！！[/v]」[KeyWait]
[FaceOff]

[text]異様な昂りが込み上げて危険を予兆させる。[KeyWait]

[ExVoice1 storage="aex19"]
[Face storage="f_a017"]
[Voice storage="a0354" buf=2]
【遼】[CR]
「[v]あ、あ……ああっ！　いや、うそっ、ん……ふぁあ、なんで？　はわぁっ、な、なにか……なにか、来ッ、ふぁああ、助け……て……ッ、あ、やあ……ッ[/v]」[KeyWait]
[FaceOff]

;a0355
;[ExVoice1 storage="aex19"]
;「ひゃぐっ！　イヒィッ！　はひゃっ！　んくうっ！　あはあっ！　はぅんっ！　んくっ！　はひゃああんっ！　はっ、はひぃっ！　んひっ、んんっ、んはああっ！　んひゃっ、はくっ、はああぁん！！」

[Face storage="f_a017"]
[Voice storage="a0356" buf=3]
【遼】[CR]
（[v]奥……の、壺ぉ、疼くの……、普通、じゃ、ない！　これ……ぇ、ボ、ク、どう……なるのっ！？[/v]）[KeyWait]
[FaceOff]

[text]恐ろしさと共に狂おしい期待が肌粟立たせ、ゾクゾクと背筋を震わせる。[KeyWait]

[ExVoice1 storage="aex17"]
[Face storage="f_a018"]
[Voice storage="a0357" buf=2]
【遼】[CR]
「[v]はぁ、ひぃ……え……えっ、も……もう、ら……めぇえっ！　んはぁああっ！！[/v]」[KeyWait]
[FaceOff]

[text]顔の表情もだらしなく緩んでヨダレが垂れっぱなしだ。[KeyWait]
[text]迫り上がった尻は、肛門も膣も窄まりっぱなしで震え続ける。[KeyWait]
[text]いつしか意識が限界まで迫り上げられ、朦朧と霞む。尿意に似た切迫は決壊寸前。[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]ふんっ！！　イケッ、鬼斬姫っ！[/i]」[KeyWait]
[FaceOff]

[text]快楽のスポットを穿るタイミングに合わせて、鬼は充血しきったクリトリスを軽やかに弾くように舐めた。[KeyWait]

[ExVoice1 storage="aex18"]
[Face storage="f_a018"]
[Voice storage="a0358" buf=2]
【遼】[CR]
「[v]はああぁひぃいいっ！？　やっ、あ……っ、あッ、はあぁああっ、ん……だめぇ、来るッ、き、きぃ……き、来ちゃうっ、イ……クぅ…………ッ！！[/v]」[KeyWait]
[FaceOff]

[text]脳裏に閃光が弾けて意識が点滅した。[KeyWait]
[text]陰核と膣内から激しい快感が全身へと走り抜ける。[KeyWait]
[text]子宮が捩れるように切なさを覚え、激しい痙攣に見舞われた。[KeyWait]

[ExtasyF]
[SoundStop buf=7]
;イベント絵表示
[CgSet storage="EV202d"]
[UpDate]

[ExVoice1Stop]

[Face storage="f_a018"]
[Voice storage="a0359" buf=2]
【遼】[CR]
「[v]イ…………ッ、ク、ふぁあああああ――――――――っ！　ああっひぃンン！！　ひぁッ！　あうっ、はぁあううっ！！　おぁああああぁ～～～ッ、はあああぁ――――っ、ふぇぁああぁ～～～っ！[/v]」[KeyWait]
[FaceOff]

[Sound storage="se175" buf=0]

[text]ぷじゅううっ！！　びゅるっ、ぷしゃぁ！　ぷじゅぷじゅぷじゅ――ッ！！[KeyWait]

[text]強烈な絶頂に意識が束の間弾け飛んだ。[KeyWait]
[text]全身が震えている。尻がさらに高々と突き上がり、高まった尿意に乗せて絶頂の飛沫を、鬼の顔面目掛けて勢いよくぶちまけた。[KeyWait]

[Face storage="f_a018"]
[Voice storage="a0360" buf=3 fade=true]
【遼】[CR]
（[v]はぁああああぁぅううううぅ、イッ、イッたぁああぁ……。ボク……イッたあッ。は……あ、あぅ、これ……が、膣内の、絶頂……。ボク……の、膣……っ、イッ、たぁ……[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a0361" buf=3 fade=true]
【遼】[CR]
（[v]こ……こんな、の……ふぁああぁ……、よ……よす、ぎ……るぅ……。んはあっ、ダ……ダメ、ぇ……[/v]）[KeyWait]
[FaceOff]

[ExVoice1 storage="aex32"]
[Face storage="f_a018"]
[Voice storage="a0362" buf=2]
【遼】[CR]
「[v]んくぅううっ！　ふぇえええぇ、ぁあああぁ～～～～ッ！！[/v]」[KeyWait]
[FaceOff]

[text]朦朧とした意識が絶頂した後も収まることなく、何度も点滅して、ボクを歓喜の虜にしていた。[KeyWait]

;a0363
;[ExVoice1 storage="aex20"]
;「はふうぅぅん……んはっ、はっ、あはああん……はぁ、はぁ、はぁ……あはぁ、んはっ、んっ、くぅん……はひっ、ひぅ……ん、く……はぁ……はぁ……はぁ……」

[Face storage="f_a017"]
[Voice storage="a0364" buf=3 fade=true]
【遼】[CR]
（[v]こんな……あぁ……気持ち、イイ……ッ、んぅ、な、なら……、ふぁあぁ……。昨日も……、オ、オナニー、あふっ、じ、自分……で指ぃ、い……入れればよかったぁ……。はうっッ！[/v]）[KeyWait]
[FaceOff]

[text]膣穴から子宮から、女体の何もかもがジンジンと心地よく痺れている。[KeyWait]
[text]俯せに尻を突き上げた恥ずかしい姿勢で、ぐったりと絶頂の余韻に虚脱して、甘く爛れた蜜汁を膣穴から止めどなく垂れこぼし、小刻みに痙攣し続ける。[KeyWait]
[text]そんなボクの痴態を見下ろしながら、鬼が歓喜に猛っていた。[KeyWait]

[Face storage="f_r002"]
【鬼】[CR]
「[i]はっはぁっ！　すごい錬気だっ！！　濃密で大量……っ！　こんなもの喰らった後に、鬼慰姫まで喰えるとはなっ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a0365" buf=3 fade=true]
【遼】[CR]
（[v]く、ううぅ～～～、イ、イかされ、たぁ……。お、鬼、に、指で……絶頂、させられ、たぁ……[/v]）[KeyWait]
[FaceOff]

[text]余韻というには鮮明すぎる絶頂感はまだ収まらず続いている。[KeyWait]
[text]その快感に蕩けた身体は、指一本動かせない。[KeyWait]

[Face storage="f_a017"]
[Voice storage="a0366" buf=3 fade=true]
【遼】[CR]
（[v]ふぁ……ぁ、この、まま、イキっぱなしで、おかしく、なっちゃう……。は、あぁ……、おんなの、からだ、あ、ああぁ……きもち、よすぎぃ……。あぁ……。だめ……死ん……じゃう……[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a0367" buf=3 fade=true]
【遼】[CR]
（[v]でも、このまま……ボク、死んじゃっ、たら……。結女……が……っ。結女が、鬼、に……。あ、ああぁ……。護らなく、ちゃ……。ボク、は、結女を護る、鬼斬……姫。く……ぅ、鬼から、結女を……ま、護らなくちゃ！[/v]）[KeyWait]
[FaceOff]

[text]絶頂したボクから、錬気とかいう力をたっぷり喰らったのだろう。鬼の身体から、どす黒い瘴気が溢れ出て、眠り続ける結女を取り巻いていた。[KeyWait]

[ExVoice1Stop]
[HSceneEnd]
[eval exp="sf.kaisouOpenFlag['02']=1"]

;ＢＧＭ：ピンチ
[playbgm storage="bgm007"]

[Face storage="f_b008"]
[Voice storage="b0034" buf=2]
【結女】[CR]
「[v]……………………[/v]」[KeyWait]
[FaceOff]

;背景：保健室　昼
[BgSet storage="bg070"]
[ChrSet0 storage="b_r201l"]
[UpDate]

[Face storage="f_r002"]
【鬼】[CR]
「[i]くっくっく。不甲斐ない鬼斬姫の守護が及ばず、眠りから覚めぬか、鬼慰姫！　しかしさすがにこいつはモノが違うな……。恐るべき量の上等な錬気を身に宿してやがる！　これを喰らえば、俺は、最強の鬼神にッ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_a011"]
[Voice storage="a0368" buf=2]
【遼】[CR]
「[v]くぅ……ッ、そぉおっ！　ゆ、結女ぇえっ！！　おぞましい、鬼めっ！　ゆ、結女に、触るな！！[/v]」[KeyWait]
[FaceOff]

[text]大好きな結女の危機に、気力を奮い立たせ、必死に立ち上がる。[KeyWait]

[Face storage="f_a007"]
[Voice storage="a0369" buf=2]
【遼】[CR]
「[v]来てくれっ、斬鐘！　ボクに結女を護る、鬼斬姫の力をッ！！[/v]」[KeyWait]
[FaceOff]

[text]渾身の力を振り絞り、鬼斬りの太刀を呼んだ。[KeyWait]


[jump storage="2-05.ks" cond="f.２章バッド==0"]
[jump storage="2-06.ks"]

