
*scene6-06|
[eval exp="f.chaptertitle='Time to Strike Back'"]

;èÍèäÅFÉRÉìÉrÉjëqå…
;éûä‘ÅFï˙â€å„
;ïûëïÅFóáÉjÅ[É\


[Face storage="f_a026"]
[Voice storage="a1605" buf=2]
ÅyHarukaÅz[CR]
Åu[v]Haaaaaaaaaaaaaah![/v]Åv[KeyWait]
[FaceOff]

[ChrReset0]
[UpDate]
[Sound storage="se208" buf=0]

[Face storage="f_r001"]
ÅyOni AÅz[CR]
Åu[i]Gwaaaaah![/i]Åv[KeyWait]
[FaceOff]

[Face storage="f_r002"]
ÅyOni BÅz[CR]
Åu[i]Gyahyiiiiiii![/i]Åv[KeyWait]
[FaceOff]

[Face storage="f_r003"]
ÅyOni CÅz[CR]
Åu[i]Guhyeaaah![/i]Åv[KeyWait]
[FaceOff]

[text]Though I was shuddering, I still managed to take out all the gaki rushing me in one slash.[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1606" buf=2]
ÅyHarukaÅz[CR]
Åu[v]Get out of my way! Hiyaaaaaaaaah![/v]Åv[KeyWait]
[FaceOff]

[Face storage="f_a007"]
[Voice storage="a1607" buf=2]
ÅyHarukaÅz[CR]
Åi[v]Even though I've never trained for this... The knowledge flowing into me from Zanshou is telling me how to fight against oni![/v]Åj[KeyWait]
[FaceOff]

[text]I moved with superhuman speed, swinging Zanshou's large, heavy blade like it was light as a feather, delivering precise attacks upon the oni.[KeyWait]

[Face storage="f_r004"]
ÅyOni DÅz[CR]
Åu[i]Guhaah![/i]Åv[KeyWait]
[FaceOff]

[Face storage="f_r001"]
ÅyOni EÅz[CR]
Åu[i]Gyauuh![/i]Åv[KeyWait]
[FaceOff]

[Face storage="f_r002"]
ÅyOni FÅz[CR]
Åu[i]Gwaaaaah![/i]Åv[KeyWait]
[FaceOff]

[text]With every spin of my body and dance of my sword, I sliced a gaki in two, causing black blood everywhere as their lives ended.[KeyWait]

[ChrSet0 storage="b_c901"]
[ChrSet1 storage="b_b121" pos=c]
[UpDate]

[Face storage="f_a007"]
[Voice storage="a1608" buf=2]
ÅyHarukaÅz[CR]
Åu[v]Oniiiii! Don't you lay another finger on Yume![/v]Åv[KeyWait]
[FaceOff]

[text]I leapt off the couch, quickly closing the gap between Rasetsu and I.[KeyWait]

[Face storage="f_a026"]
[Voice storage="a1609" buf=2]
ÅyHarukaÅz[CR]
Åu[v]Hiyaaaaaaaaaaaaaah![/v]Åv[KeyWait]
[FaceOff]

[Sound storage="se218" buf=0]

[text]I quickly lowered my blade upon her from above, hoping to cut one of the arms holding my sleeping cousin.[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0200" buf=2]
ÅyRasetsu DoujiÅz[CR]
Åu[v]Ahah! ÅÙ[/v]Åv[KeyWait]
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

[text]But she swiftly jumped away with Yume still in her arms, avoiding my blade.[KeyWait]

;ÇaÇfÇlÅFÉsÉìÉ`
[playbgm storage="bgm007"]

[Sound storage="se302" buf=1]
[ChrSet0 storage="b_c901" left=-100 top=0]
[ChrSet1 storage="b_b121" left=-100 top=0]
[UpDate time=0]

[Face storage="f_a027"]
[Voice storage="a1610" buf=2]
ÅyHarukaÅz[CR]
Åu[v]What!? D-Damnit...! Uuh!?[/v]Åv[KeyWait]
[FaceOff]

[text]I went to follow Rasetsu, but she flashed a murdeous look at me.[KeyWait]
[text]I reflexively stopped and put some distance between us, assuming a defensive posture.[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0201" buf=2]
ÅyRasetsu DoujiÅz[CR]
Åu[v]Aah, what a failure this was... Humiliating you to swell up Yume's Renki was a good idea, too...[/v]Åv[KeyWait]
[FaceOff]

[Face storage="f_c911"]
[Voice storage="c0202" buf=2]
ÅyRasetsu DoujiÅz[CR]
Åu[v]But when I went to actually devour her, your Renki restored itself right away.[/v]Åv[KeyWait]
[FaceOff]

[text]Rasetsu may have been talking casually, but I knew that if I stepped forward carelessly, I'd get hit with a terrifying attack.[KeyWait]
[text]But I stayed firm and stared the kijin straight in the eye.[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0203" buf=2]
ÅyRasetsu DoujiÅz[CR]
Åu[v]Your power's grown to the level where I might not be able to match you any longer, even...[/v]Åv[KeyWait]
[FaceOff]

[Face storage="f_a007"]
[Voice storage="a1611" buf=2]
ÅyHarukaÅz[CR]
Åu[v]Give Yume back... [ita]right now[endita]![/v]Åv[KeyWait]
[FaceOff]

[text]I held my sword at my hip. Rasetsu held Yume in front of her as if to use her as a shield.[KeyWait]

[Face storage="f_c908"]
[Voice storage="c0204" buf=2]
ÅyRasetsu DoujiÅz[CR]
Åu[v]If I'm going to lose her, maybe I'll just kill her... You'll try to kill me even if I return her, after all, won't you?[/v]Åv[KeyWait]
[FaceOff]

[text]The kijin pointed her sharp claws at Yume.[KeyWait]
[text]Her cold, cruel eyes showed that despite her smile, she didn't have an ounce of pity within her.[KeyWait]

[Face storage="f_a027"]
[Voice storage="a1612" buf=2]
ÅyHarukaÅz[CR]
Åi[v]Unbelievable...! She should still have Kimino's memories... But, despite that... She's willing to take Yume's life so casually...?[/v]Åj[KeyWait]
[FaceOff]

[text]I hesitated, sensing just how heartless she really was.[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0205" buf=2]
ÅyRasetsu DoujiÅz[CR]
Åu[v]The Oni-Cutting Princess exists to protect the Oni-Pleasing Princess, so if I kill Yume, you'll lose your power and return to being a boy...[/v]Åv[KeyWait]
[FaceOff]

[Face storage="f_c910"]
[Voice storage="c0206" buf=2]
ÅyRasetsu DoujiÅz[CR]
Åu[v]It's a shame that I won't be able to come back as a full kijin, but I'll just wait until the next Oni-Pleasing Princess is born. I guess I could always just dote over poor, heartbroken Ryou after he loses his beloved, too.[/v]Åv[KeyWait]
[FaceOff]

[Face storage="f_a029"]
[Voice storage="a1613" buf=2]
ÅyHarukaÅz[CR]
Åi[v]Oni...[/v]Åj[KeyWait]
[FaceOff]

[text]The merciless smile on Rasetsu's beautiful face sent shivers down my spine.[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0207" buf=2]
ÅyRasetsu DoujiÅz[CR]
Åu[v]So, with that settled... I'm sorry, Yume. Kimino rreally loved you.[/v]Åv[KeyWait]
[FaceOff]

[Face storage="f_a035"]
[Voice storage="a1614" buf=2]
ÅyHarukaÅz[CR]
Åu[v]Huh...?[/v]Åv[KeyWait]
[FaceOff]

[text]Rasetsu spoke to thee sleeping Yume, making sure I heard her.[KeyWait]

[Face storage="f_c908"]
[Voice storage="c0208" buf=2]
ÅyRasetsu DoujiÅz[CR]
Åu[v]But it made it really annoyed that you always monopolized Ryou's heart, yet never realized his feelings.[/v]Åv[KeyWait]
[FaceOff]

[Face storage="f_a035"]
[Voice storage="a1615" buf=2]
ÅyHarukaÅz[CR]
Åu[v]W-What are you talking about...?[/v]Åv[KeyWait]
[FaceOff]

[Face storage="f_c908"]
[Voice storage="c0209" buf=2]
ÅyRasetsu DoujiÅz[CR]
Åu[v]That's why... I can bring myself to kill you as a kijin... Farewell.[/v]Åv[KeyWait]
[FaceOff]

[Face storage="f_a026"]
[Voice storage="a1616" buf=2]
ÅyHarukaÅz[CR]
Åu[v]...! W-Wait![/v]Åv[KeyWait]
[FaceOff]

[text]As Rasetsu finished speaking, she began digging her sharp claws into Yume's neck.[KeyWait]
[text]A drop of blood trickled down her smooth skin.[KeyWait]

[Face storage="f_a038"]
[Voice storage="a1617" buf=2]
ÅyHarukaÅz[CR]
Åu[v]S-Stop! I surrender! Don't hurt Yume any further![/v]Åv[KeyWait]
[FaceOff]

[text]Rasetsu wasn't joking around. I hurriedly threw Zanshou onto the floor.[KeyWait]
[text]I didn't know how long it'd take for the next Oni-Pleasing Princess to be born, but the kijin Rasetsu Douji intended to give up on devouring Yume and kill her in stead.[KeyWait]
[text]If she killed Yume, I'd revert to being a guy and would lose the power of the Oni-Cutting Princess.[KeyWait]
[text]Rasetsu could easily escape if she wanted, but me being powerless in this situation meant she had another option - to toy with me like she was now.[KeyWait]
[text]I had no choice but to give in. I'd do whatever she said and wait for a chance to strike back![KeyWait]
[text]However...[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0210" buf=2]
ÅyRasetsu DoujiÅz[CR]
Åu[v]Upupu. Juuust kidding. I was obviously lying. Yume looks so delicious... There's no way I'd kill her without devouring her first.[/v]Åv[KeyWait]
[FaceOff]

[text]Rasetsu Douji broke out into a giggle as she took her claws away from Yume's neck.[KeyWait]

[Face storage="f_c902"]
[Voice storage="c0211" buf=2]
ÅyRasetsu DoujiÅz[CR]
Åu[v]I didn't think you'd throw away the Oni-Cutting Blade [ita]that[endita] easily. Geez, you really do love Yume, huh, Ryou? I'm gonna get jealous, and that's not even Kimino talking...[/v]Åv[KeyWait]
[FaceOff]

[text]She licked up the tiny bit of blood on Yume's neck then readjusted her into a princess carry and dmiled.[KeyWait]

[Face storage="f_a011"]
[Voice storage="a1618" buf=2]
ÅyHarukaÅz[CR]
Åu[v]Kuh! You were just teasing me![/v]Åv[KeyWait]
[FaceOff]

[Face storage="f_a011"]
[Voice storage="a1619" buf=2]
ÅyHarukaÅz[CR]
Åi[v]She's just like Kimino when it comes to this! Damnit! This goes way beyond the level of a bad joke![/v]Åj[KeyWait]
[FaceOff]

[Face storage="f_c902"]
[Voice storage="c0212" buf=2]
ÅyRasetsu DoujiÅz[CR]
Åu[v]Ahaha. But if you'd been stubborn, I would have had to go a little further, so it's good that you surrendered quickly. I don't want to hurt my childhood friend reason for no reason, you know.[/v]Åv[KeyWait]
[FaceOff]

[text]She sure seemed rather casual about hurting Yume despite her claims.[KeyWait]
[text]I scowled in anger and quickly picked Zanshou up again.[KeyWait]
[text]As I did, Rasetsu Douji moved to the storage room's window, Yume still in her arms.[KeyWait]
[text]However, right then...[KeyWait]

[ChrReset0]
[ChrReset1]
[UpDate]

[Face storage="f_s012"]
ÅyOfficer AÅz[CR]
Åu[i]This is the police! We received a report regarding three girls being forcefully taken inside this store![/i]Åv[KeyWait]
[FaceOff]

[Face storage="f_s022"]
ÅyOfficer BÅz[CR]
Åu[i]We're going into the back to investigate![/i]Åv[KeyWait]
[FaceOff]

[text]I heard a racket coming from out front.[KeyWait]
[text]Not many people pass by here, but it seemed that someone had still seen the oni disguised as delinquents and called in what they'd done.[KeyWait]

[Face storage="f_o012"]
ÅyAttendantÅz[CR]
Åu[i]Stay the hell ouuuuuuuuut! Gwooaaah! Gwooooh![/i]Åv[KeyWait]
[FaceOff]

[text]Naturally, the store attendant was in league with the oni.[KeyWait]
[text]He'd revealed his true form and tried to stop the police from getting back here.[KeyWait]

[Face storage="f_s012"]
ÅyOfficer AÅz[CR]
Åu[i]W-What the hell!? Uwah, a-aaaaah![/i]Åv[KeyWait]
[FaceOff]

[Face storage="f_s022"]
ÅyOfficer BÅz[CR]
Åu[i]I-It's a monster! S-Stay away! I-I'll shoot, I'll shooooot![/i]Åv[KeyWait]
[FaceOff]

;SEÅFèeê∫êîî≠
[Sound storage="se237" buf=0]

[Face storage="f_r003"]
ÅyAttendant OniÅz[CR]
Åu[i]Get outta heeeeeeeere![/i]Åv[KeyWait]
[FaceOff]

[ChrSet0 storage="b_c901"]
[ChrSet1 storage="b_b121" pos=c]
[UpDate]

[Face storage="f_c902"]
[Voice storage="c0213" buf=2]
ÅyRasetsu DoujiÅz[CR]
Åu[v]Oh my, it seems like we've been interrupted. Let's take this somewhere else. I'll see you later, Oni-Cutting Princess. Haah![/v]Åv[KeyWait]
[FaceOff]

[Sound storage="se203" buf=1]
[ChrReset0]
[ChrReset1]
[UpDate]

[text]Craaaaash![KeyWait]

[text]Rasetsu took advantage of the chaos, blasting the window away with a single punch. She then leapt out of it as if defying gravity, disappearing within a moment's notice.[KeyWait]

[ChrSet0 storage="b_a102"]
[UpDate]

[Face storage="f_a042"]
[Voice storage="a1620" buf=2]
ÅyHarukaÅz[CR]
Åu[v]W-Wait! O-Oh, crap, hold on... I'm still naked![/v]Åv[KeyWait]
[FaceOff]

[text]I went to chase after her, but then remembered.[KeyWait]
[text]I'd been fighting in the nude this whole time since I'd been forced to strip earlier.[KeyWait]

[Face storage="f_a045"]
[Voice storage="a1621" buf=2]
ÅyHarukaÅz[CR]
Åu[v]Uuuuuuuh... My boobs and crotch are totally out in the open...[/v]Åv[KeyWait]
[FaceOff]

[text]I'd already defeated the oni, so it was fine... But I still felt kind of embarrassed.[KeyWait]

[Face storage="f_a047"]
[Voice storage="a1622" buf=2]
ÅyHarukaÅz[CR]
Åu[v]I-I have to hurry up and get my uniform on! W-Wait...[/v]Åv[KeyWait]
[FaceOff]

[text]I picked my uniform up off the floor and found it to be covered in semen stains from the gaki.[KeyWait]

[Face storage="f_a069"]
[Voice storage="a1623" buf=2]
ÅyHarukaÅz[CR]
Åu[v]Uuuh, this I don't have time to worry about this! D-Damnit... This is so groooss![/v]Åv[KeyWait]
[FaceOff]

[ChrReset0]
[UpDate]

[text]I could hear a struggle taking place up front.[KeyWait]
[text]Policemen or oni, it'd be a hassle if anyone came through that door.[KeyWait]
[text]I hurriedly put on my damp, uncomfortable uniform and went out the window to follow Rasetsu Douji.[KeyWait]

[BgmFadeOut time=1000]
[SoundAllOut time=1000]

;çïâÊñ 
[BgSet storage="_black"]
[UpDate]

[WindowOff]

[wait time=500]

[jump storage="7-01.ks"]

