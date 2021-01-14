
*scene6-01|Chapter 6: Rasetsu the Kijin
[eval exp="f.chaptertitle='Lawless Ruler Rasetsu'"]

[BgSet storage="chapter06"]
[UpDate]
[wait time=3000]
[BgSet storage="_black"]
[UpDate]
[wait time=1000]


;場所：コンビニ倉庫
;時間：放課後
;服装：女子制服

;背景：コンビニ倉庫
[BgSet storage="bg091"]
[ChrSet0 storage="b_c014"]
[UpDate]

;ＢＧＭ：不安
[playbgm storage="bgm006"]

[WindowOn]

[Face storage="f_a026"]
[Voice storage="a1250" buf=2]
【Haruka】[CR]
「[v]Kimino...? No, wait, w-who are you...!?[/v]」[KeyWait]
[FaceOff]

[text]My brain couldn't understand the reality sitting before my eyes.[KeyWait]
[text]There was no mistaking my childhood friend, standing in front of me with her arms crossed and blocking my way.[KeyWait]
[text]But...[KeyWait]

[Face storage="f_a003"]
[Voice storage="a1251" buf=2]
【Haruka】[CR]
（[v]The way she's standing there... It's almost like she's their leader...[/v]）[KeyWait]
[FaceOff]

[text]The curse-slinging abusive delinquents had politely fallen to their knees behind Kimino.[KeyWait]

[Face storage="f_a003"]
[Voice storage="a1252" buf=2]
【Haruka】[CR]
（[v]But... The three of us have been together since were kids... We were like siblings...[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a003"]
[Voice storage="a1253" buf=2]
【Haruka】[CR]
（[v]She was always so upfront and cheerful, and I never heard any bad rumors or anything...[/v]）[KeyWait]
[FaceOff]

[text]Yet, the bewitching grin on her face emanated an ominous aura...[KeyWait]

[Face storage="f_a003"]
[Voice storage="a1254" buf=2]
【Haruka】[CR]
（[v]How long has she been associating with them...? When they messed with Yume in front of the station... Was that under Kimino's orders...?[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a003"]
[Voice storage="a1255" buf=2]
【Haruka】[CR]
（[v]Why would she expose Yume to danger like this...? And why would she have them do all that to me...?[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a003"]
[Voice storage="a1256" buf=2]
【Haruka】[CR]
（[v]Why... Why does she know that I'm Ryou!?[/v]）[KeyWait]
[FaceOff]

[text]I hadn't even told Yume.[KeyWait]
[text]Only my parents, aunt, uncle, and those associated with the Ichijou main family should have known.[KeyWait]

[Face storage="f_c011"]
[Voice storage="c0105" buf=2]
【Kimino】[CR]
「[v]You're confused, right? I can see it on your face.[/v]」[KeyWait]
[FaceOff]

[text]Kimino smiled as her cold gaze landed upon me. It was almost like she'd read my thoughts.[KeyWait]
[text]The edges of her mouth turned up, but nothing more, forming a cruel grin.[KeyWait]

[Face storage="f_a051"]
[Voice storage="a1257" buf=2]
【Haruka】[CR]
（[v]Kimino doesn't smile like that![/v]）[KeyWait]
[FaceOff]

[text]After she'd prank me, Kimino's charming smile would always prompt me to forgive her.[KeyWait]
[text]But even though she looked exactly the same, I wasn't sensing any part of Kimino from the girl standing before me.[KeyWait]
[text]This... wasn't Kimino.[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1258" buf=2]
【Haruka】[CR]
「[v]Who are you? Where's the real Kimino!? Don't tell me that you...![/v]」[KeyWait]
[FaceOff]

[text]一瞬最悪の事態が脳裏をよぎる。[KeyWait]

[ChrSet0 storage="b_c011"]
[UpDate]

[Face storage="f_c002"]
[Voice storage="c0106" buf=2]
【Kimino】[CR]
「[v]Geez, c'mon, Ryou. I [ita]am[endita] the real Kimino.[/v]」[KeyWait]
[FaceOff]

[text]Her cold gaze instantly morphed into a friendly one.[KeyWait]
[text]Then, her bewitching smile turned into the casual one I knew.[KeyWait]

[Face storage="f_a033"]
[Voice storage="a1259" buf=2]
【Haruka】[CR]
「[v]!?[/v]」[KeyWait]
[FaceOff]

[text]For a moment, I thought maybe this had just been an ill-natured joke. But it would have gone way too far if so. It just wasn't plausible.[KeyWait]
[text]I stared at her, confused...[KeyWait]

[ChrSet0 storage="b_c014"]
[UpDate]

[Face storage="f_c011"]
[Voice storage="c0107" buf=2]
【Kimino】[CR]
「[v]But at the same time, I'm someone else as well.[/v]」[KeyWait]
[FaceOff]

[text]Her face quickly returned to the bewitching, foreboding, and thorny one from before.[KeyWait]

[Face storage="f_c011"]
[Voice storage="c0108" buf=2]
【Kimino】[CR]
「[v]When you exorcised that pathetic, little oni in the nurse's office, I awakened.[/v]」[KeyWait]
[FaceOff]

;ＢＧＭ：ピンチ
[playbgm storage="bgm007"]
[if exp="kag.skipMode!=4 && sf.effectAnime==1"]
	[image page=fore layer=2 storage="bg091b" opacity=0 visible=true left=0 top=0]
	[image page=back layer=2 storage="bg091b" opacity=0 visible=true left=0 top=0]
	[move page=fore layer=2 time=2000 path=(0,0,255) accel=0]
	[move page=back layer=2 time=2000 path=(0,0,255) accel=0]
[else]
	[ChrSet2 storage="bg091b" left=0 top=0]
	[UpDate]
[endif]

[text]She began walking toward me. Her footsteps were slow. Gradually, her form changed.[KeyWait]

[Face storage="f_a072"]
[Voice storage="a1260" buf=2]
【Haruka】[CR]
「[v]...What!?[/v]」[KeyWait]
[FaceOff]

[Face storage="f_b032"]
[Voice storage="b0120" buf=2]
【Yume】[CR]
「[v]Aah... Kimono... chan...![/v]」[KeyWait]
[FaceOff]

[Face storage="f_c011"]
[Voice storage="c0109" buf=2]
【Kimino】[CR]
「[v]A long, long time ago... I was cut down by one of your ancestors, by another Oni-Cutting Princess, and lost my physical body. But after all this time, I've finally reincarnated as Sakatani Kimino.[/v]」[KeyWait]
[FaceOff]

[BgSet storage="bg091b"]
[UpDate time=0]
[if exp="kag.skipMode!=4 && sf.effectAnime==1"]
	[image page=fore layer=2 storage="bg091c" opacity=0 visible=true left=0 top=0]
	[image page=back layer=2 storage="bg091c" opacity=0 visible=true left=0 top=0]
	[move page=fore layer=2 time=2000 path=(0,0,255) accel=0]
	[move page=back layer=2 time=2000 path=(0,0,255) accel=0]
[else]
	[ChrSet2 storage="bg091c" left=0 top=0]
	[UpDate]
[endif]

[text]Her body grew taller than a man's, and her slender but fit body turned rougher.[KeyWait]
[text]A bewitching, adult smile replaced her cheerful grin and she exuded an androgynous yet slightly boyish aura.[KeyWait]
[text]Her eyes were red like blood. Sharp fangs peeked out from behind her pursed lips.[KeyWait]

[Face storage="f_b006"]
[Voice storage="b0121" buf=2]
【Yume】[CR]
「[v]Hyi![/v]」[KeyWait]
[FaceOff]

[Face storage="f_a064"]
[Voice storage="a1261" buf=2]
【Haruka】[CR]
（[v]An oni...? N-No...[/v]）[KeyWait]
[FaceOff]

[eval exp="f.status_c='羅刹'"]
[BgSet storage="bg091"]
[ChrSet0 storage="b_c901"]
[UpDate time=1000]

[Face storage="f_c901"]
[Voice storage="c0110" buf=2]
【Rasetsu Douji】[CR]
「[v]I'm known as the Lawless Ruler, Rasetsu. However, maybe the kijin 'Rasetsu Douji' would sooner ring a bell to your family's Oni Masters.[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a064"]
[Voice storage="a1262" buf=2]
【Haruka】[CR]
「[v]A-A... kijin...[/v]」[KeyWait]
[FaceOff]

[text]Kimino's body changed further. Two horns sprouted from her head as she transformed into a female oni wearing Japanese clothing.[KeyWait]

[Face storage="f_a064"]
[Voice storage="a1263" buf=2]
【Haruka】[CR]
「[v]Rasetsu... Douji...[/v]」[KeyWait]
[FaceOff]

[text]She didn't have a trace of the disgustingness the oni I'd encountered up until now had.[KeyWait]
[text]I let my focus be stolen away by the beauty of her dangerous, alluring eyes, and then...[KeyWait]

[ChrReset0]
[UpDate]

[ChrSet0 storage="b_r301"]
[UpDate]

[Face storage="f_b018"]
[Voice storage="b0122" buf=2]
【Yume】[CR]
「[v]A-Aah! Nooo! H-Help me...![/v]」[KeyWait]
[FaceOff]

[text]The delinquents crowded around Yume began transforming into grotesque oni, one after one.[KeyWait]

[Face storage="f_r001"]
【Oni Grunt A】[CR]
「[i]Gufufuuuuuuuuuh! Gahaaaaah![/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【Oni Grunt B】[CR]
「[i]Bwooooooh![/i]」[KeyWait]
[FaceOff]

[text]They made muffled groans as they drooled and approached Yume with clouded eyes.[KeyWait]

[Face storage="f_b018"]
[Voice storage="b0123" buf=2]
【Yume】[CR]
「[v]Hyiiiiiii! A-Aaah...[/v]」[KeyWait]
[FaceOff]

[Sound storage="se211" buf=0]

[text]Unable to bear looking at their disgusting forms, my adorable cousin passed out.[KeyWait]

[Face storage="f_a026"]
[Voice storage="a1264" buf=2]
【Haruka】[CR]
「[v]Yume![/v]」[KeyWait]
[FaceOff]

[ChrReset0]
[UpDate]

[text]I hurried tried to run to her side, but...[KeyWait]

[ChrSet0 storage="b_c901"]
[UpDate]

[Face storage="f_c902"]
[Voice storage="c0111" buf=2]
【Rasetsu Douji】[CR]
「[v]Ufufu, Ryou... ♪ No, maybe I should call you Haruka in that body?[/v]」[KeyWait]
[FaceOff]

[text]Kimino - rather, Rasetsu Douji - grabbed me from behind.[KeyWait]

[Face storage="f_a026"]
[Voice storage="a1265" buf=2]
【Haruka】[CR]
「[v]Kuh, let me go![/v]」[KeyWait]
[FaceOff]

[text]I tried to shake her off, but her arms wouldn't budge.[KeyWait]

[Face storage="f_a064"]
[Voice storage="a1266" buf=2]
【Haruka】[CR]
（[v]S-She's so strong![/v]）[KeyWait]
[FaceOff]

[text]Right now, I was the Oni-Cutting Princess. Even though was powerful enough to defeat oni and Rasetsu didn't look strong in the slightest, she was managing to hold me still with absolute ease.[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1267" buf=2]
【Haruka】[CR]
「[v]Y-You damn oni! How dare you take over Kimino's body again! Get out of her, damnit![/v]」[KeyWait]
[FaceOff]

[text]Even though I'd defeated the oni that'd possessed her in the nurse's office, now...[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0112" buf=2]
【Rasetsu Douji】[CR]
「[v]Aah, thanks for that. That foolish gaki manifested in my body without any clue as to who I really was. Goodness, he made me into something so disgusting...[/v]」[KeyWait]
[FaceOff]

[Face storage="f_c901"]
[Voice storage="c0113" buf=2]
【Rasetsu Douji】[CR]
「[v]But I awakened as a result of that, so perhaps I should be thankful? Fufufu. ♪[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a035"]
[Voice storage="a1268" buf=2]
【Haruka】[CR]
「[v]...?[/v]」[KeyWait]
[FaceOff]

[text]It wasn't just her appearance. The aura she put out and everything else was totally unlike any other oni.[KeyWait]
[text]It bothered me that from the way this kijin was wording things, it made it sound like she was Kimino herself.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0114" buf=2]
【Rasetsu Douji】[CR]
「[v]Nfu, it seems like you don't get it, so I'll explain. I, Rasetsu Douji, am not possessing the body of Sakatani Kimino. Rather, I was Sakatani Kimino from the very beginning.[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a003"]
[Voice storage="a1269" buf=2]
【Haruka】[CR]
「[v]...? What...? What are you talking about? That's just...[/v]」[KeyWait]
[FaceOff]

[text]I understood even less after her explanation.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0115" buf=2]
【Rasetsu Douji】[CR]
「[v]As I said earlier, I... rather, Kimino, is me - Rasetsu Douji, who borrowed a human form to reincarnate.[/v]」[KeyWait]
[FaceOff]

[Face storage="f_c901"]
[Voice storage="c0116" buf=2]
【Rasetsu Douji】[CR]
「[v]Up until now, my memories and personality as a kijin had been sleeping underneath Kimino's consciousness, but the shock of you defeating the gaki who possessed me earlier with the Oni-Cutting Blade caused me to awaken.[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a072"]
[Voice storage="a1270" buf=2]
【Haruka】[CR]
「[v]Reincarnation...? Kimino... A kijin... I-I... made you awakene...!?[/v]」[KeyWait]
[FaceOff]

[text]I finally understood, but I couldn't believe it. I couldn't believe that the childhood friend I'd been with for so long had really been the reincarnation of an oni.[KeyWait]

[Face storage="f_a003"]
[Voice storage="a1271" buf=2]
【Haruka】[CR]
（[v]But... I mean... I'm the Oni-Cutting Princess... Even though I'm a guy, I have this power that makes me into a girl...[/v]）[KeyWait]
[FaceOff]

[Face storage="f_c901"]
[Voice storage="c0117" buf=2]
【Rasetsu Douji】[CR]
「[v]But, you see... I'm glad that you awakened me and all, but that reckless Oni-Cutting Blade split our personalities, which were supposed to be merged into one, into two instead...[/v]」[KeyWait]
[FaceOff]

[Face storage="f_c908"]
[Voice storage="c0118" buf=2]
【Rasetsu Douji】[CR]
「[v]So as a result, I wasn't able to become complete, meaning I can't wield my full power as a kijin.[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a042"]
[Voice storage="a1272" buf=2]
【Haruka】[CR]
「[v]Hyuh! Wait... What are you doing!? P-Put me down, damnit![/v]」[KeyWait]
[FaceOff]

[text]The kijin, who was about as tall as I'd been back when I was a guy, effortlessly lifted me into her arms, princess style.[KeyWait]

[Face storage="f_a042"]
[Voice storage="a1273" buf=2]
【Haruka】[CR]
「[v]A-And Yume! Let her go![/v]」[KeyWait]
[FaceOff]

[text]More than myself, I was worried about my cousin, who was still unconscious and surrounded by male oni.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0119" buf=2]
【Rasetsu Douji】[CR]
「[v]Yume will be okay. They won't go all the way with her. She's a precious friend to me too, after all. But I've got to give my gaki something of a tasty experience, don't I? ♪[/v]」[KeyWait]
[FaceOff]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]Guhehehee, the Oni-Pleasing Princess...![/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]She smells great! Guuuuuh, if it weren't for Rasetsu-sama's orders, I'd devour her right here on the spot![/i]」[KeyWait]
[FaceOff]

[text]The oni crowded around Yume as she lay on the floor, then lifted up her clothes and laughed unpleasantly as they stared at her bare skin.[KeyWait]
[text]Indeed, it seemed that they weren't going too far, but seeing them drooling and breathing heavily as they stared longingly at Yume with their erect, throbbing dicks out still had me worried.[KeyWait]

[Face storage="f_a043"]
[Voice storage="a1274" buf=2]
【Haruka】[CR]
「[v]That's enough! Get them off of her, damnit!![/v]」[KeyWait]
[FaceOff]

[text]I flailed my legs around in an attempt to get free.[KeyWait]

;ＢＧＭ：陵辱１
[playbgm storage="bgm009"]
[eval exp="f.chaptertitle='Haruka, Unable to Oppose the Oni'"]

[Sound storage="se210" buf=0]

[ChrReset0]
[UpDate]

[text]However, not bothered by my resistance in the least, Rasetsu carried me to a large, old couch in the storehouse's corner then casually tossed me onto it.[KeyWait]

[Face storage="f_a032"]
[Voice storage="a1275" buf=2]
【Haruka】[CR]
「[v]Kuh![/v]」[KeyWait]
[FaceOff]

[ChrSet0 storage="b_c901l"]
[UpDate]

[Face storage="f_c902"]
[Voice storage="c0120" buf=2]
【Rasetsu Douji】[CR]
「[v]Ufu. ♪[/v]」[KeyWait]
[FaceOff]

[text]Immediately, I tried to get back up.[KeyWait]
[text]But before I could, Rasetsu got on top of me and held me down.[KeyWait]
[text]Her pressing her small, soft butt on me was enough to keep me from moving.[KeyWait]

[Face storage="f_c902"]
[Voice storage="c0121" buf=2]
【Rasetsu Douji】[CR]
「[v]Mmh, you're kind of turning me on... I like that frustrated face of yours.[/v]」[KeyWait]
[FaceOff]

[text]My heart throbbed as the alluring kijin licked her lips, but I quickly came to senses and glared daggers up at her.[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1276" buf=2]
【Haruka】[CR]
「[v]You said that I split your personalities apart with the Oni-Cutting Blade, right? ...So right now, that means that the person represented in that body isn't Kimino, but someone else.[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a007"]
[Voice storage="a1277" buf=2]
【Haruka】[CR]
「[v]But if that's the case, what happened to Kimino's personality?[/v]」[KeyWait]
[FaceOff]

[text]I was afraid of the possibility that she'd been erased. However...、[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0122" buf=2]
【Rasetsu Douji】[CR]
「[v]Kimino is sleeping. While I'm using this body, she's inside here.[/v]」[KeyWait]
[FaceOff]

[text]Rasetsu Douji, still smiling coldly, pointed to her modest chest.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0123" buf=2]
【Rasetsu Douji】[CR]
「[v]Furthermore, Kimino doesn't know anything about me. It's pretty unfair considering I have all of her memories inside me, isn't it?[/v]」[KeyWait]
[FaceOff]

[text]A cruel smile formed on the kijin's beautiful face. I surmised that she'd recalled something from Kimino's memories.[KeyWait]

[Face storage="f_c902"]
[Voice storage="c0124" buf=2]
【Rasetsu Douji】[CR]
「[v]Ryou, when we were all really small and Yume and I stayed over at your house, I was the one who wet the bed that night. You were out cold and it didn't seem like you'd wake up, so I just swapped my futon out with yours. ♪[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a042"]
[Voice storage="a1278" buf=2]
【Haruka】[CR]
「[v]What... did you say!?[/v]」[KeyWait]
[FaceOff]

[text]Yume, Kimino, and lastly, me.[KeyWait]
[text]Only the three of us and our parents knew that story, but now, this kijin had told me a new fact, almost sounding like she was reminiscing as she spoke.[KeyWait]

[Face storage="f_c902"]
[Voice storage="c0125" buf=2]
【Rasetsu Douji】[CR]
「[v]And then there was the time when the three of us played hide and seek with you as the seeker. I got annoyed, so I went home and played house with Yume... And I believe you cried as you kept looking for us.[/v]」[KeyWait]
[FaceOff]

[text]Rasetsu leaned forward over me.[KeyWait]

[Face storage="f_a046"]
[Voice storage="a1279" buf=2]
【Haruka】[CR]
（[v]...! W-What the heck... Her face looks just like Kimino's... How can she have such a soft, feminine body even though she's an oni!?[/v]）[KeyWait]
[FaceOff]

[text]Even though her face and body's physical appearance didn't actually resemble Kimino at all, they somehow reminded me of my childhood friend.[KeyWait]

[Face storage="f_a046"]
[Voice storage="a1280" buf=2]
【Haruka】[CR]
「[v]H-Hey... If you've still got Kimino's heart inside you, then at least help Yume![/v]」[KeyWait]
[FaceOff]

[text]The swarming oni had ripped off Yume's skirt, exposing her panties.[KeyWait]
[text]Her large breasts spilled forth from her open blouse, and it was only a matter of time before her loose bra would be taken off, leaving them totally bare.[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]Gufuh, gafuh, nghoooooh![/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]Oni... Pleasing... Princeeeess![/i]」[KeyWait]
[FaceOff]

[text]I didn't know how strong of a sense of self-control Rasetsu Douji's gaki possessed, but with how overexcitedly they were groping Yume, there was no telling when they'd cross the line.[KeyWait]

[Face storage="f_a045"]
[Voice storage="a1281" buf=2]
【Haruka】[CR]
「[v]Kimino![/v]」[KeyWait]
[FaceOff]

[text]Desperate, I tried calling out to my childhood friend within the kijin. However...[KeyWait]

[Face storage="f_c902"]
[Voice storage="c0126" buf=2]
【Rasetsu Douji】[CR]
「[v]Oh, goodness... It's always Yume, Yume, Yume with you... Mmh...[/v]」[KeyWait]
[FaceOff]

;黒画面
[BgSet storage="_black"]
[UpDate]
[Sound storage="se182" buf=0]

[text]Kiss![KeyWait]

[Face storage="f_a039"]
[Voice storage="a1282" buf=2]
【Haruka】[CR]
「[v]Huh? Mmh! Hauh...!?[/v]」[KeyWait]
[FaceOff]

[text]Rasetsu mutered something so quiet I could hear it before kissing me passionately out of nowhere.[KeyWait]

[Face storage="f_a039"]
[Voice storage="a1283" buf=2]
【Haruka】[CR]
（[v]W-Why... is she kissing me!? A-Aaaah...[/v]）[KeyWait]
[FaceOff]

[text]She pressed her lips tight over mine and breathed hot breaths into my mouth.[KeyWait]
[text]My mind became frazzled at the soft sensation being pressed upon me.[KeyWait]

[Face storage="f_a049"]
[Voice storage="a1284" buf=2]
【Haruka】[CR]
（[v]U-Uwah... S-She stuck her tongue iiin! I-It's... so hot... Fwaaah...[/v]）[KeyWait]
[FaceOff]

[text]Her saliva-covered tongue licked all over the inside of my mouth, then entangled itself around my own tongue. It felt exhilarating, yet comforting, making me space out.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0127" buf=2]
【Rasetsu Douji】[CR]
「[v]Sorry... That's a request I can't honor. Yume is the Oni-Pleasing Princess, after all.[/v]」[KeyWait]
[FaceOff]

;背景：コンビニ倉庫
[BgSet storage="bg091"]
[ChrSet0 storage="b_c901l"]
[UpDate]

[text]Drip...[KeyWait]

[text]Saliva trickled from my lips as Rasetsu parted ways with them.[KeyWait]
[text]She licked it up with her red tongue before she started speaking with an ecstatic expression on  her face.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0128" buf=2]
【Rasetsu Douji】[CR]
「[v]The ones that you inherited the roles of Oni-Cutting Princess and Oni-Pleasing Princess from were entwined together by an incredibly strong bond.[/v]」[KeyWait]
[FaceOff]

[Face storage="f_c901"]
[Voice storage="c0129" buf=2]
【Rasetsu Douji】[CR]
「[v]Whenever the Oni-Pleasing Princess was in danger from oni, the Oni-Cutting Princes would make use of a spiritual power called Renki to overpower them.[/v]」[KeyWait]
[FaceOff]

[text]The moment the kijin Rasetsu Douji stopped kissing me, every trace of Kimino disappeared from her face.[KeyWait]
[text]She began talking about the Oni-Cutting Princess and Oni-Pleasing Princess of the previous generation, likely the ones she fought against before reincarnating.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0130" buf=2]
【Rasetsu Douji】[CR]
「[v]And when the Oni-Cutting Princess herself was in danger of being raped, the Oni-Pleasing Princess would exude Renki from her body so we'd let our guards down. The Oni-Pleasing Princess's Renki is like a  the ultimate nectar for us oni.[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a062"]
[Voice storage="a1285" buf=2]
【Haruka】[CR]
（[v]Kimino... No, she's... she's a kijin now![/v]）[KeyWait]
[FaceOff]

[text]As Rasetsu looked at Yume, her eyes turned wicked and clouded with lust, just like the male oni surrounding her.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0131" buf=2]
【Rasetsu Douji】[CR]
「[v]When I used  that water oni to mess with you in the pool, Haruka, Yume's Renki swelled up. That's what made me realize you two were just the same as them. But... Thanks to that, it became a little hard to stop my body from throbbing. ♪[/v]」[KeyWait]
[FaceOff]

[text]Rasetsu began grinding her crotch on my lower body.[KeyWait]

[Face storage="f_a045"]
[Voice storage="a1286" buf=2]
【Haruka】[CR]
「[v]S-So that was you...! Hey, s-stop that. D-Don't rub me there...[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a046"]
[Voice storage="a1287" buf=2]
【Haruka】[CR]
（[v]She's the one who humiliated me in front of everyone! I-I... even peed in the same people everyone was swimming in...[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a046"]
[Voice storage="a1288" buf=2]
【Haruka】[CR]
（[v]So back then... Kimino's mind had already been swapped out with Rasetsu Douji's... And not only that, but ever since I beat the  oni possessing her in the nurse's office, all the way until today... This kijin had been pretending to be Kimino...[/v]）[KeyWait]
[FaceOff]

[text]Even though Kimino was my childhood friend - practically my older sister - I hadn't noticed at all.[KeyWait]
[text]Even if it was true that she was apparently supposed to be part of Kimino rather than a completely different person, I was still shocked.[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1289" buf=2]
【Haruka】[CR]
（[v]B-But anyway... H-Having her rub her crotch on me... feels kinda weird... Nnnh... Maybe it's because I'm naked, but... S-She's somehow... Afuh... Hitting me just right... It's like...[/v]）[KeyWait]
[FaceOff]

[text]She was clearly stimulating my sensitive spots on purpose, making me feel stranger and stranger.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0132" buf=2]
【Rasetsu Douji】[CR]
「[v]Look, even now, Yume's Renki is swelling up as I do this to you... And your Renki has swollen to its limits because those gaki are playing with Yume, too![/v]」[KeyWait]
[FaceOff]

[text]She was right - I could feel power welling up in my body, and I felt feverish and excited.[KeyWait]

[Face storage="f_a067"]
[Voice storage="a1290" buf=2]
【Haruka】[CR]
（[v]Looking back, I think I felt like this when I defeated my first oni after turning into a girl, too...[/v]）[KeyWait]
[FaceOff]

[text]It was the same in the nurse's office as well. I'd surpassed the oni with overwhelming power.[KeyWait]
[text]Could it be that as I was now, I might be able to escape from Rasetsu's grasp? As I wondered...[KeyWait]

[ChrReset0]
[UpDate]

[ChrSet0 storage="b_r301"]
[UpDate]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]Gwuuuooooh, this Renkiiii, I-I can't hold baaack![/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]I wanna eat her! I-I wanna eat the Oni-Pleasing Princeeeess![/i]」[KeyWait]
[FaceOff]

[Face storage="f_r003"]
【【Oni C】】[CR]
「[i]I-I can't control myself anymooooore![/i]」[KeyWait]
[FaceOff]

[text]The oni surrounding Yume that Rasetsu referred to as 'gaki' were practically going mad with excitement.[KeyWait]
[text]They clearly wanted to rape and devour the Oni-Pleasing Princess right away, but the kijin calling herself Rasetsu Douji was apparently quite the powerful leader.[KeyWait]
[text]Precum continuusly dripped out of their swollen cocks like water guns as they frustratingly groped Yume's bare breasts and butt.[KeyWait]

[Face storage="f_a058"]
[Voice storage="a1291" buf=2]
【Haruka】[CR]
「[v]N-No! How dare they touch Yume like that![/v]」[KeyWait]
[FaceOff]

[text]Yume, still unconscious, squirmed around and winced like she was having a nightmare.[KeyWait]
[text]As I watched her, I felt the same burning heat as before grow in my body, and my feverish excitement became even stronger.[KeyWait]

[Face storage="f_c904"]
[Voice storage="c0133" buf=2]
【Rasetsu Douji】[CR]
「[v]Haruka...? Kuh! Hey, cut it out already, gaki! If the Oni-Cutting Princess gets any stronger, I won't be able to keep her under control![/v]」[KeyWait]
[FaceOff]

[text]Rasetsu noticed what was happening with me and hurriedly scolded the gaki.[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]Hyuuuh! Kuh... Uuuh... Renkiii...[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]Guuuuh! But, it... would taste so gooood...[/i]」[KeyWait]
[FaceOff]

[text]The gaki swiftly backed away from Yume as if they'd been struck by lightning.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0134" buf=2]
【Rasetsu Douji】[CR]
「[v]Do you have a problem with me saving my delicious Oni-Pleasing Princess for later? You certainly [ita]did[endita] seem rather stubborn when you hit on her when she was with 'Kimino'...[/v]」[KeyWait]
[FaceOff]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]N-No...[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]The Oni-Pleasing Princess is yours, Rasetsu-sama...[/i]」[KeyWait]
[FaceOff]

[text]どれほど欲望に猛り狂っていても主の命令には絶対服従を強いられているらしい。[KeyWait]
[text]ヨダレを止めどなく溢れさせ、結女に熱烈な視線を注ぎながらも、鬼たちはそれ以上手出しすることなく周りを取り巻くだけに留める。[KeyWait]
[text]その忠実なしもべに、羅刹はニンマリと悪戯めいた笑みを浮かべた。[KeyWait]

[Face storage="f_a059"]
[Voice storage="a1292" buf=2]
【Haruka】[CR]
（[v]――！！　い、いまの……笑い方。希美乃そっくりだ……[/v]）[KeyWait]
[FaceOff]

[text]しかもろくなことを考えていない時の、笑顔によく似ている。[KeyWait]
[text]その直後はいつも、シャレにならない目にあわされてきた。[KeyWait]
[text]いやな予感が膨れあがる。[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0135" buf=2]
【Rasetsu Douji】[CR]
「[v]でも、お預けしっぱなしっていうのも可哀想だからぁ。結女の代わりに、はるかを。鬼斬姫をお前たちの好きにしていいわよ[/v]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【餓鬼たち】[CR]
「[i]うぉおおおおおおおぉ――――――――――ッ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_a058"]
[Voice storage="a1293" buf=2]
【Haruka】[CR]
「[v]なっ！？　ボクを、って……こ、こいつらに……なにをさせる気だ……？[/v]」[KeyWait]
[FaceOff]

[ChrReset0]
[UpDate]

[ChrSet0 storage="b_c901l"]
[UpDate]

[Face storage="f_c902"]
[Voice storage="c0136" buf=2]
【Rasetsu Douji】[CR]
「[v]うふふ、な～んでもよ。でも、ほんとだったら……遼のことはずっと前から好きだったから、わたしが相手したいなって思ってたんだけどね～[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a012"]
[Voice storage="a1294" buf=2]
【Haruka】[CR]
「[v]……………………………………はあっ！？[/v]」[KeyWait]
[FaceOff]

[text]唐突な言葉に面食らった。今度はどんなからかい方かと首を傾げる。[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0137" buf=2]
【Rasetsu Douji】[CR]
「[v]あ～～っ、その顔、全く信じてないでしょ？　まあ、でも、そう思われるのも仕方ないかあ。“あたし”ったら、照れくさくて遼のことイジメてばっかりだったし……[/v]」[KeyWait]
[FaceOff]

[Face storage="f_c901"]
[Voice storage="c0138" buf=2]
【Rasetsu Douji】[CR]
「[v]でも、少しは何となく意識しなかった？　『こんなに絡んでくるなんて、こいつボクに気があるんじゃないか？』って[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a059"]
[Voice storage="a1295" buf=2]
【Haruka】[CR]
「[v]そ、そういえば……！！　―――いや、全然ない……ッ！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_c909"]
[Voice storage="c0139" buf=2]
【Rasetsu Douji】[CR]
「[v]うぇ…………[/v]」[KeyWait]
[FaceOff]

[text]ガクーンと、希美……、いや羅刹童子が本気でガックリした。[KeyWait]
[text]でも、記憶を掘り返してみたけれど、彼女が好意を匂わせるような言動はさっぱり思い当たらなかったんだから仕方ない。[KeyWait]

[Face storage="f_a059"]
[Voice storage="a1296" buf=2]
【Haruka】[CR]
（[v]それどころか、希美乃に嫌われているんじゃないかって、何度か本気で悩んだこともあったくらいだし……[/v]）[KeyWait]
[FaceOff]

[Face storage="f_c909"]
[Voice storage="c0140" buf=2]
【Rasetsu Douji】[CR]
「[v]ったく、このっ！！　ほんと鈍感なんだからっ！　いや……、こ～んな鈍い男にあんなやり方で気持ちを伝えようとしてた“あたし”が間抜けなだけだったかぁ……。あ～あ[/v]」[KeyWait]
[FaceOff]

[text]まるで希美乃そのものの様子でうなだれる。思わず慰めの言葉をかけようかと思ってしまったその時、[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0141" buf=2]
【Rasetsu Douji】[CR]
「[v]まあ、それもどうでもいいわ……。いまは穢れなき[eruby str="芳醇" text="ほうじゅん"]な錬気を極限まで高められた『鬼慰姫』を喰らうのが先だから[/v]」[KeyWait]
[FaceOff]

[text]一瞬にして彼女の言葉遣いも表情も、残酷な鬼神のものへと一変した。[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0142" buf=2]
【Rasetsu Douji】[CR]
「[v]そうすればわたしは一つに戻れる。鬼斬りの太刀に切り離された羅刹と希美乃の意識が一つに……。かつて都を魔都へと堕落させた鬼神、[eruby str="涅哩底王" text="ねいりちおう"]ッ、羅刹にっ！！[/v]」[KeyWait]
[FaceOff]

[ChrReset0]
[UpDate]

[text]ボクに覆い被さっていた羅刹童子の長身が、ふわりと宙に舞い上がった。[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1297" buf=2]
【Haruka】[CR]
「[v]待て……っ[/v]」[KeyWait]
[FaceOff]

[text]慌ててボクも飛び起きるけれど―――、[KeyWait]

[ChrSet0 storage="b_r301"]
[UpDate]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]ひゃっはあ、お許しが出たぜ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]噂に名高い鬼斬姫サマを、グッチョグチョに犯してっ、喰らってやるぜイィッ！[/i]」[KeyWait]
[FaceOff]

[text]一斉に襲いかかってくる餓鬼ども。[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1298" buf=2]
【Haruka】[CR]
「[v]このっ！　どけっ！！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_r003"]
【【Oni C】】[CR]
「[i]ごぁあああああっ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_a030"]
[Voice storage="a1299" buf=2]
【Haruka】[CR]
「[v]うわっ！　あううっ！？[/v]」[KeyWait]
[FaceOff]

[text]蹴散らそうとした。なのにボクはあっさりと、ソファの上に再び押し倒されてしまった。[KeyWait]

;ＢＧＭ：陵辱２
[playbgm storage="bgm010"]

[HSceneStart]

;ＣＧ１６(ev601)：愛撫シーン
[Sound storage="se211" buf=0]
;イベント絵表示
[CgSet storage="EV601a"]
[UpDate]

[Face storage="f_r001"]
【Oni A】[CR]
「[i][eruby str="弱" text="よ"]ぇえ！　この鬼斬姫、激弱だっ！！　楽勝で犯せるぜ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_a030"]
[Voice storage="a1300" buf=2]
【Haruka】[CR]
（[v]くう……っ！　力が入らないっ！！　なんでだよっ！？[/v]）[KeyWait]
[FaceOff]

[text]人間の不良の姿をしていた時から、餓鬼どもが大幅に強くなったわけでもないのに。[KeyWait]
[text]それでも力でも速さでも敵わなくなっている。[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0143" buf=2]
【Rasetsu Douji】[CR]
「[v]キス、美味しかったわよ、遼[hearts]　錬気もたっぷりといただいちゃったし[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a011"]
[Voice storage="a1301" buf=2]
【Haruka】[CR]
「[v]あ、あのときにっ！？　く……っ！[/v]」[KeyWait]
[FaceOff]

[text]全身が蕩けて脱力するような感覚は、口づけの心地よさだけが原因ではなかった。[KeyWait]

[Face storage="f_a011"]
[Voice storage="a1302" buf=2]
【Haruka】[CR]
（[v]それも分からないで、呑気にドキドキしていたのか、ボクは……[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a011"]
[Voice storage="a1303" buf=2]
【Haruka】[CR]
「[v]ぐぅうっ！　くそっ、放せ……ってばっ！！　ああぁっ！[/v]」[KeyWait]
[FaceOff]

[text]餓鬼どもに組み伏せられ、もがいてもビクともしない。[KeyWait]
[text]その間に羅刹童子は、気を失ったまま衣服を剥ぎ取られた結女を膝に抱いて、手近な箱の上に腰を下ろした。[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0144" buf=2]
【Rasetsu Douji】[CR]
「[v]さあ、鬼斬姫さん。あなたのその身を以て、鬼慰姫に最上の錬気をもたらしてちょうだい[/v]」[KeyWait]
[FaceOff]

[text]怯えた表情のまま目を閉じる結女のぽっちゃりしたほっぺに頬ずりしながら、羅刹が挑発的な眼差しでボクを見る。舌なめずりをする口元からは、鋭い牙が覗いていた。[KeyWait]

[Face storage="f_a030"]
[Voice storage="a1304" buf=2]
【Haruka】[CR]
「[v]結女ッ！　く、くそ……。ううぅっ！！　あぁ……[/v]」[KeyWait]
[FaceOff]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]おいおい、それで押してるつもりか？[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]なんだよ、そこら辺の女と大して力、変わんねえぜ[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r003"]
【【Oni C】】[CR]
「[i]さっきはずいぶんと手荒な真似してくれたじゃねえか。たっぷりと礼させてもらうぜ[/i]」[KeyWait]
[FaceOff]

[Face storage="f_a045"]
[Voice storage="a1305" buf=2]
【Haruka】[CR]
（[v]力が、全然……出ないっ！　くうぅ、やだっ、こんなのっ！！[/v]）[KeyWait]
[FaceOff]

[text]身体を強化させていた錬気を羅刹に吸われて、肉体本来の力しか出せない。[KeyWait]
[text]非力な女の子の力。[KeyWait]
[text]これならまだ男である分、遼の姿の方が力が強い。[KeyWait]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]散々暴れてくれた鬼斬姫様が、いまにも泣いちまいそうだぜ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r004"]
【鬼Ｄ】[CR]
「[i]俺のツラぁ叩き潰してくれた威勢の良さはどこいっちまったんだぁっ？[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]ぐっへっへぇ、さっきの続きといこうぜぇ。ぐっしょり濡れたオマンコ、俺がたっぷり舐めてやるぜっ！[/i]」[KeyWait]
[FaceOff]

[text]そういいながら、鬼の中の一匹が、いきなり股間に顔を埋めてきた。[KeyWait]

;ＣＧ１６差分(ev601b)
;イベント絵表示
[CgSet storage="EV601b"]
[UpDate]

[Face storage="f_a048"]
[Voice storage="a1306" buf=2]
【Haruka】[CR]
「[v]きゃうっ！　あぁっ、う、ううううぅ……ッ！！[/v]」[KeyWait]
[FaceOff]

[text]つい女の子そのものな甲高い悲鳴を張り上げてしまった。[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1307" buf=3]
【Haruka】[CR]
（[v]く、うううぅ……。さっき、制服拾った時……パンツだけでも、穿いとけばよかった……！[/v]）[KeyWait]
[FaceOff]

[text]そんなことをしても、またあっさりと剥ぎ取られてしまっただろう。[KeyWait]

[Face storage="f_a048"]
[Voice storage="a1308" buf=3]
【Haruka】[CR]
（[v]くぅ、あ、あぁ……。息、あ、当たってる。あそこ……に。生暖かい……。気色悪いッ[/v]）[KeyWait]
[FaceOff]

[text]潤んだ粘膜が直接刺激される感覚は、何度味わっても強烈だ。[KeyWait]
[text]女の股間は興奮しただけでワレメが弛み綻んで、こんな鋭敏な部分が無防備になってしまう。[KeyWait]

[Sound storage="se106" buf=0]

[text]ぬちゃ、ずる……、じゅるりっ。[KeyWait]

[ExVoice1 storage="aex12"]
[Face storage="f_a048"]
[Voice storage="a1309" buf=2]
【Haruka】[CR]
「[v]ひうぅううっ！　ふえっ、ほぁああああぁ――――――ッ！[/v]」[KeyWait]
[FaceOff]

[text]そんな部分の肉花弁を餓鬼の舌が割り開いて、鋭敏な粘膜を舐め穿ってきた。[KeyWait]

[ExVoice1 storage="aex41"]
[Face storage="f_a048"]
[Voice storage="a1310" buf=2]
【Haruka】[CR]
「[v]ひゃわっ！！　あッ、イヤぁっ！　ふぇあぁあああああぁ――――ッ！！[/v]」[KeyWait]
[FaceOff]

[text]激しく熱い刺激が走り抜けて脳裏を灼熱に染めた。[KeyWait]
[text]甘美とおぞましさの入り混じる感覚に、背筋の産毛が逆立ち、二の腕を鳥肌が覆う。[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1311" buf=3]
【Haruka】[CR]
（[v]ボク、の、舐め……られ、あぁ……おま、んこ……男、にぃ……あ、あぁ、あ……[/v]）[KeyWait]
[FaceOff]

[text]屈辱と嫌悪感に胸が張り裂けそうだ。[KeyWait]
[text]なのに、悩ましい刺激をさらに求めるように両脚が勝手に開帳してしまう。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]ますます汁が溢れてきたぜっ。どれだけ淫乱なんだよ、このクソ牝っ！[/i]」[KeyWait]
[FaceOff]

[Sound storage="se179" buf=0]

[text]じゅるる、ずじゅぅ～～、ちゅるちゅるっ。[KeyWait]

[ExVoice1 storage="aex52"]
[Face storage="f_a048"]
[Voice storage="a1312" buf=2]
【Haruka】[CR]
「[v]ふぇっ！！　ンッ！　ふぁあぁあぁ～～～～っ！！[/v]」[KeyWait]
[FaceOff]

[text]秘裂の粘膜を舐め上げながら、膣内に満ちたたっぷりの蜜を啜られると、甘い喘ぎが溢れた。[KeyWait]

[Face storage="f_a048"]
[Voice storage="a1313" buf=3]
【Haruka】[CR]
（[v]く……ぅ、子宮……、喜んで……暴れちゃってるッ。愛液ぃ……、勝手に、垂れちゃうッ。溢れちゃうぅっ！！　ああぁ、ふぁぁあ、んぁああっ！[/v]）[KeyWait]
[FaceOff]

[text]熱くふやけたラビアを捲り返して、舌先が粘膜を荒々しく掻き穿る。[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a048"]
[Voice storage="a1314" buf=2]
【Haruka】[CR]
「[v]ふぁっ！！　や、やあっ！　はああああぁ――ッッ！！　んふぉっ！[/v]」[KeyWait]
[FaceOff]

[text]舐められた部分から、股間が溶け崩れそうな甘美が止めどなく滲み出る。[KeyWait]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]股ぐら舐められるのが好きでたまらねえって様子だな[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex21"]
[Face storage="f_a050"]
[Voice storage="a1315" buf=2]
【Haruka】[CR]
「[v]ひぅううっ、し、知らにゃいっ。―――ひわぁああっ！[/v]」[KeyWait]
[FaceOff]

[text]女になって日が浅いのだから当然だけど、こんなことされるのは初めてだ。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i][eruby str="美味" text="うめ"]えぜ、ここ……。こんな淫乱のくせに、使い込んでねえ綺麗なマンコしてやがる！[/i]」[KeyWait]
[FaceOff]

[Sound storage="se141" buf=0]

[text]じゅるる、ずじゅぅ～～、ちゅるる[KeyWait]

[ExVoice1 storage="aex52"]
[Face storage="f_a048"]
[Voice storage="a1316" buf=2]
【Haruka】[CR]
「[v]くひっ、んあっ、は……うぅッ！　やっ、ぃやああっ！！　やめっ、ろ、おぉおおぉッ！[/v]」[KeyWait]
[FaceOff]

;a1317
;[ExVoice1 storage="aex52"]
;「はひゃぁ……んんっ、くっ、ふぅん……ん、ふあ、はん……ひぃっ！　ひあっ、く、んんぅ……んひゃっ、は、ぁあんっ！　ん……んひっ、くっ、ひぐぅ……んはっ、はぅん、くぅ……んはぁっ！」

[text]吸われると意識までもが遠退き、身体の痙攣が収まらなくなる。[KeyWait]
[text]全身がガクガク震える中、足が時折、ビクンビクンと跳ね上がった。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]おいおい、感じまくりだな。この程度でそんなんじゃ、こことか弄られたらどうなっちまうんだ？[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex41"]
[Face storage="f_a050"]
[Voice storage="a1318" buf=2]
【Haruka】[CR]
「[v]ひう……ッ、だ……って。だってぇ～～～！！[/v]」[KeyWait]
[FaceOff]

[text]自分でも酷いと思うけれど止まらない。[KeyWait]
[text]そんなボクを嘲りながら、牡鬼は窄めて固くした舌先で、包皮にくるまったクリトリスを転がしてきた。[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a018"]
[Voice storage="a1319" buf=2]
【Haruka】[CR]
「[v]んほぉおっ！　ひぃいいっ！！　くっふ～～～～～～～ッ、ああぁはああああぁっ！[/v]」[KeyWait]
[FaceOff]

[text]自分の指で触る刺激など比べものにならない。[KeyWait]

;a1320
;[ExVoice1 storage="aex53"]
;「んあはぁっ！　ひゃぅっ、んっ、くぅうっ！　んひゃっ、はふっ、んんっ、んひぃっ！　ひゃはっ、はんっ、んくっ、んはあぁぁっ！　はひっ、ひんっ、ひぐっ、ふっ、ふうんっ！　ふあっ！　はっ！　ぁああんっ！！」

[Face storage="f_a018"]
[Voice storage="a1321" buf=3]
【Haruka】[CR]
（[v]あたまぁ……飛ぶッ、くぅううぅ……、変……っ、なる……ぅ、ふぇあああっ！！[/v]）[KeyWait]
[FaceOff]

[text]濡れ舌に敏感粒を転がされ、包皮まで剥かれてしまう。[KeyWait]
[text]それだけでも息が詰まって、甘い嬌声を抑えられなくなるのに、他人に触れられる予想のつかなさが理性を狂わせる。[KeyWait]

[ExVoice1 storage="aex22"]
[Face storage="f_a017"]
[Voice storage="a1322" buf=2]
【Haruka】[CR]
「[v]へはっ！？　や、やぁあっ！　なにか、あ、あっ、はぁああっ！！[/v]」[KeyWait]
[FaceOff]

[Sound storage="se119" buf=1]
;イベント絵表示
[CgSet storage="EV601c"]
[UpDate]

[text]ぷじゅじゅうっ！　びゅじゅっ！！　ぶじゃじゃぁ――ッ！[KeyWait]

[ExVoice1 storage="aex41"]
[Face storage="f_a018"]
[Voice storage="a1323" buf=2]
【Haruka】[CR]
「[v]んふあぁ、はひゃっ！　あっ、はぁ、んんんっ！　ああ、あっ、あああああぁ～～～～～っ！！[/v]」[KeyWait]
[FaceOff]

[text]たまらず子宮が激震し、ぷじゅっ！　と膣穴から熱汁が飛び散った。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]もうイッちまったのか？　ずいぶんとぶちまけやがったなあ[/i]」[KeyWait]
[FaceOff]

[text]そうじゃないけど、実際いつイッてもおかしくない。[KeyWait]
[text]急激に収縮した膣穴から弾け出た愛液で、太腿までぐちょぐちょに濡らして白目を剥く。[KeyWait]

[Face storage="f_a017"]
[Voice storage="a1324" buf=3]
【Haruka】[CR]
（[v]く……う……だって、こんなとこ、変にされたら、誰だって……ッ[/v]）[KeyWait]
[FaceOff]

[text]敏感すぎる。[KeyWait]
[text]男のペニスだって気持ちいいけれど、こんなに理性を無くすほどじゃない。[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0145" buf=5]
【Rasetsu Douji】[CR]
「[v]遼ったらついこの前まで男の子だったのに、すっかり女の子の身体に馴染んじゃって[/v]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex52"]
[Face storage="f_a060"]
[Voice storage="a1325" buf=2]
【Haruka】[CR]
「[v]く……うぅ……。ち、違う……。んひゃぅ！[/v]」[KeyWait]
[FaceOff]

[text]この身体の時に男の名で呼ばれると恥ずかしさが倍増する。[KeyWait]
[text]けれども女陰のワレメで舌が[eruby str="翻" text="ひるがえ"]ると、甘く媚びた喘ぎを漏らしてしまう。[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0146" buf=5]
【Rasetsu Douji】[CR]
「[v]でもそのおかげでほら、結女の錬気がもうこんなに膨れあがってる。あぁ、美味しそう！　我慢するのが大変だわ♪[/v]」[KeyWait]
[FaceOff]

;イベント絵表示
[CgSet storage="EV601d"]
[UpDate]

[ExVoice1 storage="aex52"]
[Face storage="f_a060"]
[Voice storage="a1326" buf=2]
【Haruka】[CR]
「[v]―――！！　あ、あぁ……結……女[/v]」[KeyWait]
[FaceOff]

[text]いまだ意識を失ったままの従妹の身体から、目で見えるほどの桜色をした淡い光が溢れ出ていた。[KeyWait]

[Face storage="f_b034"]
[Voice storage="b0124" buf=5]
【Yume】[CR]
「[v]……………………[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a039"]
[Voice storage="a1327" buf=3]
【Haruka】[CR]
（[v]あ、あれが……結女の……、『鬼慰姫』の錬気……[/v]）[KeyWait]
[FaceOff]

[text]心奪われる暖かな輝きを目にしていると、鬼どもが執着する理由が分かった。[KeyWait]

[Face storage="f_a039"]
[Voice storage="a1328" buf=3]
【Haruka】[CR]
（[v]ボ、ボクがこれ以上、エッチに……なっちゃうと……か、感じちゃったりすると……、あれが結女を満たすのか……ッ[/v]）[KeyWait]
[FaceOff]

[text]そうなった時に、羅刹童子は彼女を喰らってしまう。[KeyWait]

;イベント絵表示
[CgSet storage="EV601e"]
[UpDate]

[Face storage="f_a031"]
[Voice storage="a1329" buf=3]
【Haruka】[CR]
（[v]く、う……が、我慢、しなく……ちゃ……。ん、あ、ああああぁ、だめ……ッ[/v]）[KeyWait]
[FaceOff]

[text]せめて喘ぎ声をこぼさないようにと唇を引き結んだ。[KeyWait]

[Sound storage="se140" buf=0]

[text]くちゅ、ぴちゃ、ちゅる、じゅるじゅるじゅるる……。[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1330" buf=3]
【Haruka】[CR]
（[v]ああ、でもっ。声……出さないように、すると……、感覚が、鋭く、なっちゃった……ような……。なんか、余計に……感じちゃうッ！！[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1331" buf=3]
【Haruka】[CR]
（[v]ああ、だめっ、これ……ッ[/v]）[KeyWait]
[FaceOff]

[text]女陰に舌を這わす餓鬼の首に両脚を絡めて、自分からねだるように腰が迫り上がってしまう。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]ぐふっ！　もっと、吸って欲しいか？[/i]」[KeyWait]
[FaceOff]

[Sound storage="se141" buf=1]

[text]ちゅぱんっ、ちゅるっ、じゅる～～～～～～ッ　ぬちゅぅうううっ！[KeyWait]

;イベント絵表示
[CgSet storage="EV601b"]
[UpDate]

[ExVoice1 storage="aex23"]
[Face storage="f_a048"]
[Voice storage="a1332" buf=2]
【Haruka】[CR]
「[v]おおっ！　ああぁああぁっ！！　くうっ、う、ふぅうううううっ！　んひぃっ、あひぃいっ！！[/v]」[KeyWait]
[FaceOff]

[text]密着が高まった分、刺激がダイレクトに響いてくる。[KeyWait]
[text]声を堪えるなんて、数秒程度ももたなかった。[KeyWait]

[Sound storage="se140" buf=0]

[text]れろれろっ、ぬる、くちゅ、ちゅぱちゅぱ、れろん、べろべろべろろぉっ！[KeyWait]

[ExVoice1 storage="aex33"]
[Face storage="f_a048"]
[Voice storage="a1333" buf=2]
【Haruka】[CR]
「[v]く……………………ッッッ、はぁンン！　ああっ、だめっ、そこぉおおおっ、だ……、めぇッッ！！[/v]」[KeyWait]
[FaceOff]

[text]クリトリスを執拗に舐められると、もう快感の歯止めが効かなくなる。[KeyWait]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]元気なおっぱいだな。さっきから跳ね回って誘ってやがるぜ[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r003"]
【【Oni C】】[CR]
「[i]元々は男なんだってな。それなのに、男が触りたくなるほどおっぱい膨らませるなんて、ド変態もいいとこだ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1334" buf=3]
【Haruka】[CR]
（[v]す、好きで、女になったわけじゃ……ない……。おっぱい、だって……そんな、クリ……しつこく、舐める……からあっ！　身体……跳ねちゃうッ。ひぃうううっ！！　や、やぁあああああっ！[/v]）[KeyWait]
[FaceOff]

[text]女になったおかげで涙腺まで緩い。情けなさに涙がどんどんと溢れて来ちゃう。[KeyWait]

[Face storage="f_r004"]
【鬼Ｄ】[CR]
「[i]泣くほど揉んで欲しいってか？[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r001"]
【鬼Ｅ】[CR]
「[i]乳首コチコチに硬くしやがって！　こっちも吸ってもらえるの期待してんのかよ！？[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex34"]
[Face storage="f_a050"]
[Voice storage="a1335" buf=2]
【Haruka】[CR]
「[v]んふぁあっ！　む、胸ぇ、勝手に……な、なめる……な……ッ！！　ふぉあああぁンッ！[/v]」[KeyWait]
[FaceOff]

[text]乳肌にぬめぬめしたナメクジのような唇が一斉に張り付き、おぞましいくすぐったさを生み出した。[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a048"]
[Voice storage="a1336" buf=2]
【Haruka】[CR]
「[v]そんな、と……こ、ふぁ、や、や……ぁ。めぇえっ！！[/v]」[KeyWait]
[FaceOff]

;a1337
;[ExVoice1 storage="aex54"]
;「んああぁっ！　はっ、んくぅっ！　ひゃはあ、ひゃん、んふうぅっ！　あひゃぁ、はふっ、くぅん……んっ、んひっ、あひゃあんっ！　ひゃうっ、んっ、ひゃぐぅっ！　くひっ、んぅ……はぁっ、ひあ、はひゃはぁああっ！」

[text]女陰だけで精一杯なのに、大勢でおっぱいを一斉に舐めてくるから、身体の蠢きが止められなくなる。[KeyWait]
[text]仰向けでも崩れぬ美麗な砲弾房が、大胆に鷲掴みされて蠱惑的に拉げる。[KeyWait]

;イベント絵表示
[CgSet storage="EV601f"]
[UpDate]

[Face storage="f_a050"]
[Voice storage="a1338" buf=3]
【Haruka】[CR]
（[v]くぅ……っ、おっぱいの……ち、乳首の先ぃ……疼くうっ。勃ちすぎて、ジンジン……するぅ……っ！[/v]）[KeyWait]
[FaceOff]

[text]まるで勃起しすぎて充血が酷くなったペニスを、さらに圧迫したような疼痛が、乳首に生じていた。[KeyWait]
[text]なのに……。[KeyWait]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]はむん、くちゅぱっ！　ちゅむっ、ちゅるるー[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r003"]
【【Oni C】】[CR]
「[i]かぷっ、れろ、ころ、れろろろろろろろんっ[/i]」[KeyWait]
[FaceOff]

[text]その充血小粒がかっぷりと咥え込まれ、ちゅぱちゅぱ吸入音を響かせながら吸い上げられた。[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a048"]
[Voice storage="a1339" buf=2]
【Haruka】[CR]
「[v]ひぅううっ！ほ、お、ぁあああああああっ！！　んあっ、はわっ、や、やめ、やめろ……んっ！[/v]」[KeyWait]
[FaceOff]

[text]渦巻く歓喜を噛み殺して顔をしかめる。[KeyWait]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]房ぁ、柔らはいのにぃ、ここっ、カチカチらぜぇっ！[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex52"]
[Face storage="f_a050"]
[Voice storage="a1340" buf=2]
【Haruka】[CR]
「[v]んあっ！！　お、っぱいっ、舌でっ、こ、転がす、なっ！[/v]」[KeyWait]
[FaceOff]

[text]身体が女としての快楽を生み出して、ボクの意識を混乱させる。[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1341" buf=3]
【Haruka】[CR]
（[v]ふぇえあぁっ……おっぱいぃ、指……ッ、めり込んで……、くふぁっ！　細胞、ばらばらになるぅ……。こ、こんな……の、ほぁあっ、はぁあああぁ～～～んんっ！！[/v]）[KeyWait]
[FaceOff]

[ExVoice1 storage="aex41"]
[Face storage="f_a050"]
[Voice storage="a1342" buf=2]
【Haruka】[CR]
「[v]あひっ、んお……んくっ、んんっ、はぁああ～～ッ。んあっ、だめっ、あ……っ、や、ややや、やぁああっ！[/v]」[KeyWait]
[FaceOff]

[text]朦朧となったところで乳首をレロレロしゃぶられると、抗う声が途切れ途切れになる。[KeyWait]
[text]くねくねと肢体がますます悩ましく蠢いて、餓鬼どもを誘惑しちゃう。[KeyWait]

[Face storage="f_r004"]
【鬼Ｄ】[CR]
「[i]本当に男かよ！？　すけべなツラしやがって！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r001"]
【鬼Ｅ】[CR]
「[i]男に犯られることしか考えてないバカ女と変わらねえだろ。媚びやがってっ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1343" buf=3]
【Haruka】[CR]
（[v]ど……どんな、表情、しちゃってるんだ……？　ボク……。ああっ、はぁああぁ……。おっぱいしゃぶられて、おまんこ舐められて……どんな顔、なってんの……ボク！？[/v]）[KeyWait]
[FaceOff]

[text]想像しただけで余計に興奮が高まる。[KeyWait]

[ExVoice1 storage="aex33"]
[Face storage="f_a048"]
[Voice storage="a1344" buf=2]
【Haruka】[CR]
「[v]あふぅっ！　んは、あ、あああぁ……[/v]」[KeyWait]
[FaceOff]

[text]大きな溜め息が弾んで、顎が仰け反る。[KeyWait]

[Face storage="f_r002"]
【鬼Ｆ】[CR]
「[i]くっ、また……媚びやがってッ、たまんねえっ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r003"]
【鬼Ｇ】[CR]
「[i]とんでもない好き者のクソビッチだぜ、この鬼斬姫！！[/i]」[KeyWait]
[FaceOff]

[text]無意識に蠱惑の色香を放ってしまい、餓鬼どもが一斉に群がりきた。[KeyWait]
[text]肌がしっとりと汗ばんで桜色に染まっている。そこにも、鬼たちの舌が這い回った。[KeyWait]

;気持ちいいと言いかけて否定してます。
[ExVoice1 storage="aex52"]
[Face storage="f_a050"]
[Voice storage="a1345" buf=2]
【Haruka】[CR]
「[v]は……ンッ！　ふぇ、あぁ……。気持ち……イ――！！　悪いっ、からあっ……は、あぁ、う……、や、やめ、ひうっ！[/v]」[KeyWait]
[FaceOff]

[text]両乳房と女陰の鮮烈な快感の周りで、無数の舌がぬちゃぬちゃと柔肌を擽り、もどかしい喜悦を塗り込んできた。[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a048"]
[Voice storage="a1346" buf=2]
【Haruka】[CR]
「[v]あひっ……か、身体……ぁ、熱いぃっ！　お……おぉ、お腹ぁ、変ッ！！　んくうぅ……疼……くぅッ……ん……！　感じちゃったらぁ……気持ち良くなったらぁっ！！　あ、あぁ……結女がっ、危にゃいの、にぃ～～～ッ！[/v]」[KeyWait]
[FaceOff]

;a1347
;[ExVoice1 storage="aex55"]
;「んあああっ！　はぅんっ、んっ、くはあぁっ！　はひゃぁ、はんっ、はぁあっ、んくふうっ！　はひっ、ひんっ、ひぐぅっ！　んくっ、ふんっ、んんぅっ！　くはっ、はひゃっ、ひゃうううんっ！」

[text]結女から湧き出す錬気は、一段と鮮やかな桜色に濃度を増し、草花のような爽やかな香りを漂わせていた。[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0147" buf=5]
【Rasetsu Douji】[CR]
「[v]あぁ……素敵……。結女……。わたしが喰らう、鬼慰姫～～[Hearts][/v]」[KeyWait]
[FaceOff]

[text]眠りこけるその髪を[eruby str="梳" text="す"]きながら羅刹童子が満足げに囁く。[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1348" buf=3]
【Haruka】[CR]
（[v]ひい、う、うぅううぅッ！！　結女……ッ。助けなく……ちゃ[/v]）[KeyWait]
[FaceOff]

[text]焦りが胸を締め付ける。[KeyWait]
[text]その最中、乳房が搾乳の要領で根本から圧迫された。[KeyWait]

;イベント絵表示
[CgSet storage="EV601b"]
[UpDate]

[ExVoice1 storage="aex42"]
[Face storage="f_a048"]
[Voice storage="a1349" buf=2]
【Haruka】[CR]
「[v]ひぃはぁあっ！！[/v]」[KeyWait]
[FaceOff]

[text]そこに窄めた舌が押しつけられ、乳首が強く抉られる。[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a048"]
[Voice storage="a1350" buf=2]
【Haruka】[CR]
「[v]かひぃいいっ！？　ひぎゅっ！！　ふおっ！　んはっ、はふぅううンっ！！[/v]」[KeyWait]
[FaceOff]

[Sound storage="se119" buf=0]

[text]ぷじゅっ！！　びゅぷっ、ぷしゃしゃ～～っ！[KeyWait]

[text]ガクガクと痙攣に見舞われ、脳裏で火花が弾けた。[KeyWait]
[text]失禁の様に軽い絶頂の潮が飛沫を散らす。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]くふっ！　またたっぷりと汁漏らしやがったぜッ。この淫乱女っ！！[/i]」[KeyWait]
[FaceOff]

[Sound storage="se179" buf=1]

[text]じゅるじゅるじゅるっ、ぐちゅちゅ、ずりゅずりゅずりゅぅ――ッ！[KeyWait]

[text]その蜜汁を啜り込んで、餓鬼の舌が膣穴の縁を舐め回した。[KeyWait]

[ExVoice1 storage="aex43"]
[Face storage="f_a048"]
[Voice storage="a1351" buf=2]
【Haruka】[CR]
「[v]ほあぁあっ！　んぁ、ら、めぇえっ！！　んふぁあんッッ！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【鬼Ｆ】[CR]
「[i]うおっ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r003"]
【鬼Ｇ】[CR]
「[i]ぐはっ！[/i]」[KeyWait]
[FaceOff]

[text]足を突っぱねて、[eruby str="脹" text="ふく"]ら[eruby str="脛" text="はぎ"]や足指をしゃぶっていた餓鬼どもを蹴り飛ばす。[KeyWait]

[Face storage="f_r004"]
【鬼Ｄ】[CR]
「[i]ぐほっ、鬼斬姫の生足ぃっ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r001"]
【鬼Ｅ】[CR]
「[i]俺にも味わわせろっ！！[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex55"]
[Face storage="f_a048"]
[Voice storage="a1352" buf=2]
【Haruka】[CR]
「[v]ふえっ！　あひゅッ！！　はわぁああぁ……っ！[/v]」[KeyWait]
[FaceOff]

[text]すぐに、待ってましたと他のヤツがむしゃぶりついて、擽ったい舌を這わせてきた。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]すっかり開きっぱなしだな。もういくらでもチンポくわえ込めるんじゃないのか？　このオマンコ穴[/i]」[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1353" buf=3]
【Haruka】[CR]
（[v]そ、そう……。ふぁあ……熱く、ジンジン痺れて……蜜ぅ、垂れ流しになってて……。おまんこ、穴ぁ、弛み……っぱなしぃ。あ、ああぁ、舐め……られてる。また、あたま、飛んじゃう……[/v]）[KeyWait]
[FaceOff]

[ExVoice1 storage="aex54"]
[Face storage="f_a048"]
[Voice storage="a1354" buf=2]
【Haruka】[CR]
「[v]ンヒィン！！[/v]」[KeyWait]
[FaceOff]

[text]その膣穴へと不意打ちに指をめり込まされて、危険な甘美が走り、身が震えた。[KeyWait]
[text]キュンと、穴口が窄まり、その指先をもっと奥へ誘い込もうとする。[KeyWait]

[ExVoice1 storage="aex41"]
[Face storage="f_a048"]
[Voice storage="a1355" buf=2]
【Haruka】[CR]
「[v]おほぁあっ！[/v]」[KeyWait]
[FaceOff]

;イベント絵表示
[CgSet storage="EV601g"]
[UpDate]

[text]けれど、わずかに穴中にめり込んだだけで、指はすぐに抜け出ていってしまった。[KeyWait]

;ＣＧ１６差分(ev601g)

[ExVoice1 storage="aex24"]
[Face storage="f_a050"]
[Voice storage="a1356" buf=2]
【Haruka】[CR]
「[v]んお……？　あ、は……あぁ……？[/v]」[KeyWait]
[FaceOff]

[text]即座に、妙なもどかしさが股穴から湧き起こってきた。[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1357" buf=3]
【Haruka】[CR]
（[v]なに……？　いまの……。ん、あぁ……ふぁああ、お、奥ぅ……。膣の……ふぁああああぁ……お、奥、がぁ……[/v]）[KeyWait]
[FaceOff]

[text]これまでと違った禁断の疼きに当惑する。もう一度いまの感触を、味わってみたい。[KeyWait]
[text]懇願するような表情になってしまい、全身を微震させていると、いまボクの膣穴から溢れ出た濃厚な愛液を指先に絡めてぺちゃぺちゃしゃぶりながら、牡鬼が勝ち誇ったようにいう。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]ちょっと指さし込んだだけで、食いちぎりそうな勢いで締め付けてきたぜ[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]男から女になったばかりで、こいつまだ処女なんだろ？　それなのに、オマンコはどうしようもない好き者女並とはなッ。鬼斬姫が聞いて呆れるぜっ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【鬼たち】[CR]
「[i]ぐぁああっはっはっはっはっは――――ッ！[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex57"]
[Face storage="f_a060"]
[Voice storage="a1358" buf=2]
【Haruka】[CR]
「[v]ふえっ！？　ち、ちが……う、こんな、の……。あ、ああ、あ……[/v]」[KeyWait]
[FaceOff]

[text]言い返そうとするが言葉が出ない。[KeyWait]
[text]それどころか、もう一度指先を入れて欲しくて膣穴がキュンキュンと痙攣し、ますます濃度を増した愛液を垂れこぼす。[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1359" buf=3]
【Haruka】[CR]
（[v]くぅ……うううぅ、穴……ぁ。穴……の、中ぁッ……変……だよ。こ、この……欲しい感じ……ッ[/v]）[KeyWait]
[FaceOff]

;a1360
;[ExVoice1 storage="aex56"]
;「ふああん……ん、く……んはぅ……はあぁ……くふん、んん……はぁ、はぁ……あ、はぁ……んんぅ……んくっ、んんぅ……はぅん……ん、ふああ……はぁん……」

[text]ふと気がつくと、隆々と勃起して先走りを溢れさせる、鬼どものペニスを見詰めてしまっていた。[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1361" buf=3]
【Haruka】[CR]
（[v]はぁ……うぅ、あ、あんな大きく……勃っちゃってるぅ……。あれ、ボクに、勃起してるんだ……おんなの、ボクの、裸見て……。おんなのボクの身体ぁ、弄って……おっぱい、しゃぶって……おまんこ、しゃぶって……勃起したんだ……[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1362" buf=3]
【Haruka】[CR]
（[v]あれ……。ちんこ……変な味、なのに……あんなの、しゃぶらされた……。あんなの、イヤ……なのに……あんな大きく……勃起、して……[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1363" buf=3]
【Haruka】[CR]
（[v]入れるんだ……ボクの、に……ボ、ボクの……お、おまんこっ、に……。い、入れ……。あ、あああぁ……[/v]）[KeyWait]
[FaceOff]

[text]妄想が止まらない。膣が狂おしくキュンキュン窄まって胸が苦しいほど高鳴る。[KeyWait]
[text]愛液トロトロ流れっぱなしだ。[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1364" buf=3]
【Haruka】[CR]
（[v]指で……あんな、ちょっとで……き、気持ち、よかったのに……。あんなの、あんな太いの、入れられ……たら……。いや、あ、あんな、ふ、太いし……む、無理ッ！[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1365" buf=3]
【Haruka】[CR]
（[v]で、でも、あれ、全部、ボクの膣、目一杯入って、ずっと、入ったまま。されたらっ！！！[/v]）[KeyWait]
[FaceOff]

[Sound storage="se119" buf=0]
[text]ぷじゅぅううっ！　びちゅっ、ぶじゅぅうううっ！！[KeyWait]

;イベント絵表示
[CgSet storage="EV601h"]
[UpDate]

;[ExtasyF]

[ExVoice1 storage="aex11"]
[Face storage="f_a048"]
[Voice storage="a1366" buf=2]
【Haruka】[CR]
「[v]ひうぅうううっ！！　ふひぃっ、ふぁ、ふぁぁああああぁ……ッ！[/v]」[KeyWait]
[FaceOff]

;[ExtasyCount]

[text]妄想だけで軽くイッた。怒張を挿入される感触を想像して、あっという間にイッてしまった。[KeyWait]
[text]それでも、脳内の暴走は収まらない。[KeyWait]

;イベント絵表示
[CgSet storage="EV601g"]
[UpDate]

[Face storage="f_a050"]
[Voice storage="a1367" buf=3]
【Haruka】[CR]
（[v]あ、あの、ちんこ……入れさせたら、射精されちゃう……。ボクの……[eruby str="膣内" text="なか"]にっ、ああ、しゃ、射精ッ！[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1368" buf=3]
【Haruka】[CR]
（[v]んく……ぅ、はあ、ああ、あ、はぁ……。膣内にぃ……だ、出されたら……出来ちゃう、のかなぁ……？　あ、赤ちゃん……。ボク、女になっちゃったし……[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a048"]
[Voice storage="a1369" buf=3]
【Haruka】[CR]
（[v]犯されて……孕まされて……、赤ちゃん……産まされ……ちゃうッ！　そんなの……。そ、そんな……の、や、ヤダ……。あああぁ……[/v]）[KeyWait]
[FaceOff]

[text]女ならではの恐怖に身が震える。なのに、[KeyWait]

;イベント絵表示
[CgSet storage="EV601h"]
[UpDate]

[ExVoice1 storage="aex41"]
[Face storage="f_a018"]
[Voice storage="a1370" buf=2]
【Haruka】[CR]
「[v]やっ、やめっ！　ひうっ！！　ふあっ！？　んっ、ンンッ！[/v]」[KeyWait]
[FaceOff]

[text]濡れ女陰をまさぐられる甘美に、裸身はビクビクと痙攣しっぱなしだ。[KeyWait]
[text]指先で肉花弁を捲られながら、膣穴の浅いところをほじほじされると、もっと奥への刺激が欲しくなって腰が迫り上がる。[KeyWait]

[ExVoice1 storage="aex57"]
[Face storage="f_a017"]
[Voice storage="a1371" buf=2]
【Haruka】[CR]
「[v]ふぁああ、ボ、ボクう……。んあっ、お、あ、はぁぅううううううんッ！！[/v]」[KeyWait]
[FaceOff]

;a1372
;[ExVoice1 storage="aex57"]
;「はあぁっ……んっ、くうんっ！　ふあぁああ……はっ、はあぁん……あはあっ、はんっ、くふうぅ……っ……ん、うぅん……はぁ……あっ、んひゃあ、んんぅ……はあぁ、はぁ、あああぁん……」

[text]抑えきれず熱い吐息が漏れ、目は潤み、視線が泳ぐ。[KeyWait]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]たまんねえ……[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r003"]
【【Oni C】】[CR]
「[i]そそるぜ……[/i]」[KeyWait]
[FaceOff]

[text]それが餓鬼どもの劣情を煽るのだろう、勢いを増してのたうついくつもの舌に舐め回され、全身がヨダレまみれでぬらぬらしていた。[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1373" buf=3]
【Haruka】[CR]
（[v]こ、こんな……の、臭い……、気持ち悪い……のに。どう……して？　ああ、どうして……？[/v]）[KeyWait]
[FaceOff]

[ExVoice1 storage="aex52"]
[Face storage="f_a048"]
[Voice storage="a1374" buf=2]
【Haruka】[CR]
「[v]んひっ！　ふあっ！！　あふっ、ふぇはぁあああぁ～～～っ！[/v]」[KeyWait]
[FaceOff]

[text]複数の指に捏ね回される撓わな美房では、乳首にもいくつもの舌が殺到し、奪い合うように充血乳首を転がしまくる。[KeyWait]

;イベント絵表示
[CgSet storage="EV601g"]
[UpDate]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1375" buf=2]
【Haruka】[CR]
「[v]ほあっ！　やら、ああぁっ！！　あ、あ頭ぁっ……変ッッ、ひぇんなっひゃううゅ！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a1376" buf=3]
【Haruka】[CR]
（[v]男が……気持ちいい、の……ほとんど、ちんこばかり、なのに……。おんなのからだぁ……どこも、全部……き、気持ち……いいっ！[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a1377" buf=3]
【Haruka】[CR]
（[v]く、ぅ、あぁ……だめ、だぁ……っ！　このまま、じゃ……い、いれ……入れられちゃうっ！！　入れて、もらえちゃうっ！[/v]）[KeyWait]
[FaceOff]

[text]入れられるのがイヤなのか嬉しいのか、もう自分でもよく分からない。[KeyWait]
[text]餓鬼どもの勃起はもう、入れる気満々で固く猛り狂い、赤黒く充血していた。[KeyWait]
[text]それを目にして、収縮を繰り返す膣口から、せがむような熱蜜がとぷとぷ噴きこぼれる。[KeyWait]

[Face storage="f_a017"]
[Voice storage="a1378" buf=3]
【Haruka】[CR]
（[v]あ……あぁ、男のちんぽ、入っちゃう身体に、なっちゃったんだ……。あれ、押し込まれたら、ボクの膣内……ちんこ、入っちゃうんだ……ッ[/v]）[KeyWait]
[FaceOff]

[text]自分の身体が、男に犯されてしまう女の肉体に変わったことを改めて思い知った。[KeyWait]
[text]意識するとすぐにキュと股間が窄まって、膣口と、道連れとばかりに尻穴の菊皺までをも引き絞る。[KeyWait]
[text]その反応に、餓鬼が興味を示した。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]やれやれ、こっちの穴も物欲しそうに口開き始めやがった。世話が焼けるぜ[/i]」[KeyWait]
[FaceOff]

[text]男の指先が女陰から離れる。[KeyWait]

[ExVoice1 storage="aex24"]
[Face storage="f_a050"]
[Voice storage="a1379" buf=2]
【Haruka】[CR]
「[v]ふぇええっ！？[/v]」[KeyWait]
[FaceOff]

[text]喪失感に、思わず追いすがって腰が浮き上がる。[KeyWait]
[text]その途端、[KeyWait]

[Sound storage="se108" buf=1]

[text]ぬっちゅッ。[KeyWait]

[ExVoice1 storage="aex52"]
[Face storage="f_a042"]
[Voice storage="a1380" buf=2]
【Haruka】[CR]
「[v]ほぉおおッ、あああぁっ！？　な、なぁああぁッ！！？？[/v]」[KeyWait]
[FaceOff]

[text]女陰の下で露わになっている菊穴に、指先が押し当てられた。[KeyWait]

[Sound storage="se111" buf=0]

;ＣＧ１６差分(ev601i)
;イベント絵表示
[CgSet storage="EV601i"]
[UpDate]

[text]ズッブッ！[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a018"]
[Voice storage="a1381" buf=2]
【Haruka】[CR]
「[v]ほぉぐっ！？[/v]」[KeyWait]
[FaceOff]

[text]そのままグイッと肉門を割ってめり込まされ、当惑の衝撃が襲い来る。[KeyWait]
[text]ズンと危うい衝撃を肛門に見舞われ一瞬で蕩けた全身が強張り[eruby str="竦" text="すく"]む。[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a017"]
[Voice storage="a1382" buf=2]
【Haruka】[CR]
「[v]ふえっ！　だ……メ、あぁ、やめ、ろ、はぁあっ！！　そんな、とこ、汚ひ。ンンンっ！[/v]」[KeyWait]
[FaceOff]

[text]膣穴を狙われるのとは異質の危機感に、括約筋を窄めて必死に抗ってみた。[KeyWait]
[text]菊門の外へ、どうにか指を押し返す。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]まだ[eruby str="固" text="かて"]えな[/i]」[KeyWait]
[FaceOff]

[text]途端に、餓鬼が不愉快そうに顔をしかめた。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]こっちはもうとろとろだってのにな[/i]」[KeyWait]
[FaceOff]

[text]しかも、膣から溢れかえる愛液をたっぷりと指先に絡めて、再度の侵入を試みてくる。[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a018"]
[Voice storage="a1383" buf=2]
【Haruka】[CR]
「[v]へうっ、だめっ！　――――ッッッ！！[/v]」[KeyWait]
[FaceOff]

[Sound storage="se130" buf=1]

[text]ずちゅっ！[KeyWait]

;イベント絵表示
[CgSet storage="EV601j"]
[UpDate]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1384" buf=2]
【Haruka】[CR]
「[v]ひあっ！！[/v]」[KeyWait]
[FaceOff]

[text]もう一度括約筋を締めて逆らったけどダメだった。[KeyWait]
[text]狂おしい官能に濃度を増したヌルヌルの液汁が、強烈な潤滑を発揮した。[KeyWait]
[text]固く窄まっている襞蕾が易々と緩んで、綻んだ門口に指先が埋まる。[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1385" buf=3]
【Haruka】[CR]
（[v]くぁ……あ……し、尻ぃ……。そん……な……[/v]）[KeyWait]
[FaceOff]

[text]そうなってしまったらもうどうにもならない。[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a018"]
[Voice storage="a1386" buf=2]
【Haruka】[CR]
「[v]うぬぅううううっ、はっ、うううっ！！　ふぇ……[/v]」[KeyWait]
[FaceOff]

[text]熱い衝撃に慌てて尻穴を全力で絞るが、自分の胎内がこぼした体液に弛まされる。[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a017"]
[Voice storage="a1387" buf=2]
【Haruka】[CR]
「[v]ふあっ、は、ん、ああッ！！　そんなっ、しちゃ……あ、あ、あ……ひ、開くうぅっ！[/v]」[KeyWait]
[FaceOff]

[Sound storage="se158" buf=0]

[text]ぬちゅ、ぐちゅ、ねちょちょ……。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]結構キツい、ケツ穴だぜ。さっきから締め付けっぱなしだ[/i]」[KeyWait]
[FaceOff]

[text]ぐりぐりと襞肉をほぐすように指先で掻き回され、穴が焼けるように熱く疼いて強烈な脱力感が押し寄せた。[KeyWait]
[text]カクカク両脚に震えが走り、少しでも気を抜くと、ふわり、と肛門が弛む。[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a018"]
[Voice storage="a1388" buf=2]
【Haruka】[CR]
「[v]ひうっ！　ああっ！！　なん、で？　尻ぃ、締めてる、のにイィイイィッ！！[/v]」[KeyWait]
[FaceOff]

[Sound storage="se160" buf=1]

[text]ズブッ！！　ヌブヌブヌブッ、ズブブッ！[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]おお、どんどん入っていくぜ。キツいけど、受け入れる気満々だ。さすが淫乱鬼斬姫のケツ穴ッ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]一度めり込んだら、どこまでも埋まっていっちまうぜっ！！　浅ましい肛門だなっ！[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1389" buf=2]
【Haruka】[CR]
「[v]ぅあっ！　ふ……うっぅううっ！！　や、ああっ！　深ッ、あ……ぃっ、[eruby str="挿入" text="い"]れるなぁああっ！！[/v]」[KeyWait]
[FaceOff]

;a1390
;[ExVoice1 storage="aex58"]
;「はぐうっ！　んひっ、はっ、んんうぅっ！　んはっ、はっ、んくっ、んふううっ！　んはっ！　あがっ！　はっ！　んはあああぁぁっ！　んぐっ！　んっ、ふあっ、あひゃああんっ！」

[Face storage="f_a018"]
[Voice storage="a1391" buf=3]
【Haruka】[CR]
（[v]指……の、節……がぁあっ、中ぁッ……[eruby str="刮" text="こそ"]げッるぅッ。くふっ、ああ……い、息……詰まるぅ……。刺激……つ、強すぎぃ。こ、これぇ……尻ン中の……感じィイイッ！[/v]）[KeyWait]
[FaceOff]

[Sound storage="se159" buf=1]

[text]ずぷっ、ずにゅっ、ぐずっ！[KeyWait]

[text]相変わらず菊皺は頑張って閉じようとしているけれど、刺激を受けた直腸からの滲み汁が愛液と混ざり合って、さらに異物の進行を補佐する。[KeyWait]
[text]第一、第二関節を捻り込んで直径を増した牡鬼の指が、ついに根本まで完全に埋め込まれる。[KeyWait]

[Sound storage="se157" buf=1]

[text]ずむんっ！！[KeyWait]

[text]指の股部分が、尻たぶを押しのけて肛門に追突した。[KeyWait]

[ExVoice1 storage="aex58"]
[Face storage="f_a017"]
[Voice storage="a1392" buf=2]
【Haruka】[CR]
「[v]く…………ッ、ふぅうううううっ！　はわああっ！！　ひッ！　ひぃやぁあああぁっ！！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1393" buf=3]
【Haruka】[CR]
（[v]あが、ああぁ、なん……だ、これ……ぇ。く、苦し……い。のにぃ、で、も、あ、あああぁ……[/v]）[KeyWait]
[FaceOff]

[text]焼けた棒を突っ込まれたような衝撃なのに、狂おしい甘美が渦巻いた。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]おいおい、ちょっとマン汁塗り込んだだけで、あっという間に根本まで埋まっちまったぜ！　こいつのケツ穴、実はマンコより締まりがねえんじゃないか！？[/i]」[KeyWait]
[FaceOff]

[Sound storage="se161" buf=7 loop=true]

[text]ぐちょ、ぬちゅ、くちゅ、げちゅ、ぶちゅ[KeyWait]

[text]ズッポリ埋まった指を掻き回して、餓鬼が嘲る。[KeyWait]

[ExVoice1 storage="aex21"]
[Face storage="f_a018"]
[Voice storage="a1394" buf=2]
【Haruka】[CR]
「[v]んっぐ、ひぃんっ！　ほぇはぁあぁっ！！　あぐっ！　んひっ！　くふっ、はっ、ふはっ！　はひゃあっ！　んぎっ、ひっ！　ふあ、あぶふぅうっ！！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a1395" buf=3]
【Haruka】[CR]
（[v]く……あ、お尻……なんかにッ！　ふぅ、あぁ、汚いところ、なのにッ……！？　こんな、ところ……からぁ……。こんな感じぃ……湧き上がる、なんて……ッ[/v]）[KeyWait]
[FaceOff]

[text]強烈な違和感が直腸内で膨れあがり、切迫した甘美を生み出す。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]気に入ったようだな！　まんざらでもないツラしてやがる[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex58"]
[Face storage="f_a017"]
[Voice storage="a1396" buf=2]
【Haruka】[CR]
「[v]ひうっ！　う、うるひゃ……いィ……[/v]」[KeyWait]
[FaceOff]

[text]慌てて赤らむ顔を背けるが、[KeyWait]

[Sound storage="se130" buf=0]

[text]ぎゅりんっ。[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1397" buf=2]
【Haruka】[CR]
「[v]ほぁっ、ああぁンッ[hearts][/v]」[KeyWait]
[FaceOff]

[text]指先に腸壁を抉られて甘い喘ぎが溢れ出た。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]これじゃ、男の時にも、おホモだちに、ケツ掘られまくってよがってたんじゃないか？　いくらなんでも初めてで感じすぎだろ！？[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex58"]
[Face storage="f_a017"]
[Voice storage="a1398" buf=2]
【Haruka】[CR]
「[v]――！！　ち、ちが……う、う、う、うぁああはぁっ！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1399" buf=3]
【Haruka】[CR]
（[v]冗談じゃない―――ッ。身体が男でも女でも、ボクは女にしか興味ない。……ゆ、結女が、好きなんだからっ！　いまだって、こんな連中に、か、身体……好き勝手されて……き、気色悪くて……たまんないのにッ[/v]）[KeyWait]
[FaceOff]

[text]言いがかりに反論したいけれど、肛門の刺激が強すぎて言葉にならない。[KeyWait]

[SoundOut buf=7 time=2000]

[Face storage="f_c906"]
[Voice storage="c0148" buf=5]
【Rasetsu Douji】[CR]
「[v]え、なになに！？　遼ってそういう趣味あったの？[/v]」[KeyWait]
[FaceOff]

[text]早速、希美乃……いや、羅刹が目をキラキラさせて話に食らいついてきた。[KeyWait]
[text]ほんと、女ってこういう話……好きなんだから……。[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0149" buf=5]
【Rasetsu Douji】[CR]
「[v]相手は渡辺？　それとも薄井？　ま、まさか……浦辺……ってことはないわよね。あいつだったらちょっと、あたしも引くわ……[/v]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex55"]
[Face storage="f_a050"]
[Voice storage="a1400" buf=2]
【Haruka】[CR]
「[v]だ、誰でも、ないってばっ！　ボクは、お、男なんかっ、はぁあぁ～～～～んんッ！！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1401" buf=3]
【Haruka】[CR]
（[v]き、希美乃の口調で尋ねてくるから、ついいつものように返しちゃったじゃないか……っ。こいつは幼なじみなんかじゃなくて、結女を喰らおうとしている邪悪な鬼神なのにっ[/v]）[KeyWait]
[FaceOff]

;イベント絵表示
[CgSet storage="EV602a"]
[UpDate]
[ExVoice1Stop time=4000]

[Face storage="f_c902"]
[Voice storage="c0150" buf=5]
【Rasetsu Douji】[CR]
「[v]ふ～ん、わたしは、男の子も女の子も、どちらでもいける口なんだけどなあ……。男の遼も、女のはるかも、好きよ……。でも、いま一番好きなのは、結、女[hearts][/v]」[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1402" buf=2]
【Haruka】[CR]
「[v]ゆ……結女……[/v]」[KeyWait]
[FaceOff]

[text]ヤツの腕の中でいまだ意識を取り戻さずにいる“鬼慰姫”からは、異常な量の錬気が溢れかえって、桜色の輝きが緩やかに渦を巻いていた。[KeyWait]

;ＣＧ１７(ev602)

[Face storage="f_c906"]
[Voice storage="c0151" buf=2]
【Rasetsu Douji】[CR]
「[v]んふぅ……。あ、あぁ……。もう……[/v]」[KeyWait]
[FaceOff]

[text]もう我慢の限界に近いのだろう、羅刹童子は彼女の豊満な乳房を揉み弄ったり、肌に唇を這わせて溜め息を吐いたりして、切なげな眼差しを注いでいた。[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0152" buf=2]
【Rasetsu Douji】[CR]
「[v]ああ、結女……ってばぁ……。このおっぱい、昔から羨ましかったなあ……[/v]」[KeyWait]
[FaceOff]

[text]鬼の姿になっても相変わらず控えめな自分の胸とは対照的な、圧倒的な存在感を示す、結女の撓わな乳房を揉み始めた。[KeyWait]

[Face storage="f_b035"]
[Voice storage="b0125" buf=2]
【Yume】[CR]
「[v]ん……ふぇ……、はぁ……あ、あああぁ……[/v]」[KeyWait]
[FaceOff]

[text]ボリューム満点な房肉を堪能し尽くすような、ゆっくりと満遍なく捏ね回すような揉み方に、眠りに就いている結女の唇から、微かな喘ぎがこぼれた。[KeyWait]
[text]房の中に深々と埋まり込んでいた指を抜き出して乳首を刺激すると、結女のぽっちゃり気味な身体が、ピクンと軽く打ち震えた。[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0153" buf=2]
【Rasetsu Douji】[CR]
「[v]結女……美味しそう……。素敵……[/v]」[KeyWait]
[FaceOff]

;イベント絵表示
[CgSet storage="EV602b"]
[UpDate]

[text]感無量の様子で呟くと、唇を合わせ、こぼれ落ちる錬気の味見をする。[KeyWait]

[text]――くちゅ。むちゅ、ちゅぷ。[KeyWait]

[ExVoice1 storage="cex01"]
[Face storage="f_c906"]
[Voice storage="c0154" buf=2]
【Rasetsu Douji】[CR]
「[v]ん…………、あふ……、はあぁ……[/v]」[KeyWait]
[FaceOff]

[text]絡まる舌の狭間で撹拌される唾液の音色が淫靡に鳴り響いた。[KeyWait]

[ExVoice1 storage="cex02"]
[Face storage="f_c906"]
[Voice storage="c0155" buf=2]
【Rasetsu Douji】[CR]
「[v]ふぁあ、柔らかくて……、甘い、唇……。ん……あふ……、はむ……ん……[/v]」[KeyWait]
[FaceOff]

[text]ぽってりとした彼女の唇を、自分の唇で啄んで感触を確かめる。[KeyWait]

[ExVoice1 storage="cex01"]
[Face storage="f_c906"]
[Voice storage="c0156" buf=2]
【Rasetsu Douji】[CR]
「[v]ああぁ、結女の……ヨダレ……[/v]」[KeyWait]
[FaceOff]

;c0157
;[ExVoice1 storage="cex01"]
;「はぅん……るちゅ、ぬ、れろん……んふぅ、んちゅ、ちゅぱ、ちゅむうぅ……んちゅる、ちゅぱ、ちゅる……れろ、はむ、むちゅう……ちゅる、ちゅぱ、るろん……くちゅ、ちゅぴ、んくちゅう……」

[text]ぬちゅ、くちゅちゅ、ちゅぱ、ちゅぷ、ちゅる……。[KeyWait]

[text]何度も女の子の唇同士がくっついては離れ、甘く湿って音色を奏でる。[KeyWait]
[text]次第に羅刹の口づけは濃厚さを増してゆき、結女の口腔を舌で掻き乱し始めた。[KeyWait]

[ExVoice1 storage="cex07"]
[Face storage="f_c906"]
[Voice storage="c0158" buf=2]
【Rasetsu Douji】[CR]
「[v]あ……あぁ……素……敵……。ンン……、ふぁ……は、あぁ……[/v]」[KeyWait]
[FaceOff]

;c0159
;[ExVoice1 storage="cex02"]
;「んちゅる……ちゅぱ、ちゅぴ……れろ……ちゅぱ、るろん……むちゅる、ちゅぴ、んちゅ、はむちゅぅ……ん……ちゅぱ、くちゅ、れろん……はむ……ん、ちゅる……ちゅぱ、ちゅる、れろ……んぱっ、ふっ、ちゅ、ちゅむふぅ……」

[text]舌と舌が絡み合い、唾液の糸を引いて離れてはまた絡む。[KeyWait]

[text]くちゅちゅ、じゅる、ちゅぱ……、ぬちゃ……、ぴちゅちゅ……。[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1403" buf=3]
【Haruka】[CR]
（[v]あぁ、し、舌……入れて……。結女と……希美乃……、いや、羅刹……[/v]）[KeyWait]
[FaceOff]

[text]不意に羅刹に唇を奪われた感触が脳裏に蘇った。[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1404" buf=3]
【Haruka】[CR]
（[v]まだ……ボクだって、結女とキスしたことなんか……ないのに……[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1405" buf=3]
【Haruka】[CR]
（[v]羅刹の……キス……。ボクの唇を……奪った……[/v]）[KeyWait]
[FaceOff]

[text]舌と舌とが絡む危険な心地よさを思い返し、二人を眺めていると、その中に加われないもどかしさが込み上げて来てしまう。[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1406" buf=3]
【Haruka】[CR]
（[v]ち、違う……、ボクは、別に……一緒に、キス……したいわけじゃ、なくて……[/v]）[KeyWait]
[FaceOff]

[ExVoice1 storage="cex08"]
[Face storage="f_c906"]
[Voice storage="c0160" buf=2]
【Rasetsu Douji】[CR]
「[v]ん……あふ……。ふぁあ……。ん………………ッ。ふぁ……[/v]」[KeyWait]
[FaceOff]

[Face storage="f_b035"]
[Voice storage="b0126" buf=2]
【Yume】[CR]
「[v]あふ……、ふぁ…………、ん………………、ぷは………………[/v]」[KeyWait]
[FaceOff]

[text]もう羅刹は囁きもせず、夢中で結女の唇を貪っていた。[KeyWait]
[text]唇と舌が奏でる悩ましげな音色と、鬼神となった少女と、魔法にでもかかったみたいに眠り続ける少女が時折こぼす喘ぎだけが、二人だけの世界を構築して軽やかに響く。[KeyWait]

[ExVoice1Stop time=2000]

[Face storage="f_a039"]
[Voice storage="a1407" buf=3]
【Haruka】[CR]
（[v]お……女同士で、キス……なんてっ！[/v]）[KeyWait]
[FaceOff]

[text]まるで幼なじみと従妹が口づけを交わしているような錯覚に囚われ、ドキドキと胸が高鳴った。[KeyWait]
[text]だがその耽美な雰囲気をぶち壊すように―――、[KeyWait]

[ExVoice1 storage="aex61"]
[Sound storage="a0000" buf=2]
[seopt buf=4 volume=0]
[fadese buf=4 time=2000 volume=100]

;イベント絵表示
[CgSet storage="EV601j"]
[UpDate]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]女同士の絡み見て興奮してんのかよ？　急に尻が指締め付けてきやがったぞ、とんだド変態だなっ！[/i]」[KeyWait]
[FaceOff]

[text]鬼が呆れながら直腸を掻き乱してくる。[KeyWait]

[ExVoice1 storage="aex61"]
[Face storage="f_a050"]
[Voice storage="a1408" buf=2]
【Haruka】[CR]
「[v]あ、うぅ……そ、んな……あ、ふあっ！！[/v]」[KeyWait]
[FaceOff]

[text]身体が女になったからとはいえ、ボクも男なのに、男たちに群がられ身体を弄られまくっている。[KeyWait]

[Face storage="f_a017"]
[Voice storage="a1409" buf=3]
【Haruka】[CR]
（[v]尻の、穴ぁ……指で……か、掻き回されてっ、気持ち良くて喘いじゃってるッ！[/v]）[KeyWait]
[FaceOff]

[ExVoice1 storage="aex41"]
[Face storage="f_a018"]
[Voice storage="a1410" buf=2]
【Haruka】[CR]
「[v]ふンンンンンンぅううっ！　はぁあっ！！　あひっ！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]こいつの錬気も、結構美味そうだっ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]鬼斬姫なんて、クソみてえな味だろうって思ってたが……ッ。もっと、よがらせて錬気、絞り出してやるぜ！！[/i]」[KeyWait]
[FaceOff]

[text]羅刹の命令で鬼慰姫を喰らえなかった腹いせを、ボクにぶつけてくる。[KeyWait]

;イベント絵表示
[CgSet storage="EV601h"]
[UpDate]

[text]アナルに攻めどころが切り替わってガラ空きになっていた女陰に、いくつもの舌先が殺到してきた。[KeyWait]

[ExVoice1 storage="aex58"]
[Face storage="f_a018"]
[Voice storage="a1411" buf=2]
【Haruka】[CR]
「[v]ひょへっ！？　ら、らめっ！！[/v]」[KeyWait]
[FaceOff]

[text]大陰唇を両側から引っ張られ、くっぱー、と女陰が広がる。[KeyWait]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1412" buf=2]
【Haruka】[CR]
「[v]ひあっ！！　ひ、広げるなあっ！[/v]」[KeyWait]
[FaceOff]

[Sound storage="se135" buf=0]

[text]とぷとぷとぷ、こぽぽ……。[KeyWait]

[text]途端に膣口から、ぬめった蜜が溢れかえった。[KeyWait]

[Face storage="f_r003"]
【【Oni C】】[CR]
「[i]汁ぅ～～～～～～～ッ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r004"]
【鬼Ｄ】[CR]
「[i]ふはぁ――！！　たまんねえ匂いだあっ！[/i]」[KeyWait]
[FaceOff]

[Sound storage="se140" buf=1]

[text]ぴちゅ、じゅるじゅるじゅる、れろろ、ちゅるる、ずじゅるぅ――――っ！！[KeyWait]

[text]たっぷりの雫を舐め啜りながら、餓鬼どもの舌が淫裂に押し入ってくる。[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1413" buf=2]
【Haruka】[CR]
「[v]ンヒィイイイッ！　い、あ、はぁあああぁ――――ッ！！　あう、そんなっ、一度にィっ、ダメッ！　ふあああぁ……いっぱい、すぎる、はぅううううっ！！[/v]」[KeyWait]
[FaceOff]

[text]膣穴へ代わる代わるに舌が埋まり込んで、膣口を弛まそうと舐め穿ってゆく。[KeyWait]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]うへ～、すげえっ！　おまんこトロトロじゃねえか！！　なにか挿入して欲しくて、たまらねえって感じで蠢きまくってやがるっ[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex55"]
[Face storage="f_a017"]
[Voice storage="a1414" buf=2]
【Haruka】[CR]
「[v]あひっ！？　しょんにゃ、違……ふぇああああっ！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1415" buf=3]
【Haruka】[CR]
（[v]陰唇のひらひら……、い、弄られてるっ！　ひうっ、ああああぁ！！[/v]）[KeyWait]
[FaceOff]

[text]その内側の膣前庭粘膜をしゃぶられて、視界に火花が瞬いた。[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1416" buf=3]
【Haruka】[CR]
（[v]くぅ～～、クリ……っ、剥かれちゃったっ！　感じ……すぎちゃうのにっ！！　舌ッ、たくさんで、転がされたら……ッッッ！[/v]）[KeyWait]
[FaceOff]

[ExVoice1 storage="aex35"]
[Face storage="f_a018"]
[Voice storage="a1417" buf=2]
【Haruka】[CR]
「[v]ふぁああっ、あっ、はぁひぃいいっ！　イッ、んぁああっ、だめっ、イッちゃ……ふッ、はぁあああぁ――――っ！！[/v]」[KeyWait]
[FaceOff]

[text]理性が崩れるほどの快感が幾重にも押し寄せ続ける。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]こっちの穴もぐちょぐちょだぜ。うへ、ぽっかり肛門開きっぱなしで、中見えてやがる[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1418" buf=2]
【Haruka】[CR]
「[v]ンンッ！！　や、やぁあっ！[/v]」[KeyWait]
[FaceOff]

[text]恥ずかしい指摘に慌ててアナルを締めようとしたが――。[KeyWait]

[Sound storage="se172" buf=0]

[text]ぶじゅぶじゅびゅぶぶぶぶっ！[KeyWait]

[text]腸液が泡立つ音色が派手に響いてしまった。[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a018"]
[Voice storage="a1419" buf=2]
【Haruka】[CR]
「[v]ひぃいっ！　や……やだっ、ほぉおあぁああっ！！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_r003"]
【【Oni C】】[CR]
「[i]おいおい？　いまの変な音、もしかして屁でもこいたか？[/i]」[KeyWait]
[FaceOff]

[text]鬼たちから嘲笑が浴びせられる。[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a017"]
[Voice storage="a1420" buf=2]
【Haruka】[CR]
「[v]ひうっ！！　ち、違う……ッ！　い、いまの……違うからっ！[/v]」[KeyWait]
[FaceOff]

[text]お尻の中を弄るから、変な音が鳴っちゃっただけなのに……。[KeyWait]
[text]快感で意識が乱れすぎてて、上手く説明が出来ない。[KeyWait]
[text]それでいて心許ない緩み感が収まらず、うずうずと張りのある尻がくねって餓鬼どもの劣情を刺激する。[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]仕方ねえな、俺の指で栓してやるぞっ！[/i]」[KeyWait]
[FaceOff]

[Sound storage="se160" buf=1]
;イベント絵表示
[CgSet storage="EV601k"]
[UpDate]

[text]ぬぶずぶっ、ずぷっ！！　ずぶぶっ！　ぬぶっ！！　ぬぶっ、ぬっぶぶぅううっ！[KeyWait]

[text]その排泄の穴に、餓鬼の指が二本纏めてねじ込まれた。[KeyWait]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1421" buf=2]
【Haruka】[CR]
「[v]ひんっ！？　ち、違う……ッ！　んっ、あ、やっ、ほあっ、うぉほぉおおおぁあああっ！！[/v]」[KeyWait]
[FaceOff]

;a1422
;[ExVoice1 storage="aex59"]
;「はひゃああっ！　んぎっ、いっ、ひいいいぃっ！　はぅっ、んっ、くううっ！　んはぁ、はっ、はうううぅんっ！　いぎっ、くふっ、あはぁっ、はあっ、はあんっ！　んぐうっ、んっ、ふっ、んほあああああっ！」

[text]皺口がはち切れるかと思うくらいに押し広げられて、強烈な太さが無理矢理に埋まり込んでくる。[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a017"]
[Voice storage="a1423" buf=2]
【Haruka】[CR]
「[v]あふ……うぅううっ！　キツ……イィイッ、後ろ、穴ぁあああっ！！　……くあっ、太ッ！　だめ、え、爆ぜるッ！！　いぎっ！　んぅううううっ！！[/v]」[KeyWait]
[FaceOff]

[text]壮絶な排泄欲と狂おしい官能が一塊になって押し寄せ、脳を焼き焦がした。[KeyWait]

;イベント絵表示
[CgSet storage="EV601l"]
[UpDate]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1424" buf=2]
【Haruka】[CR]
「[v]はひっ、だめ……こ、こんなのっ！　こんな、の……される、とおぉおおおおおおっ！！[/v]」[KeyWait]
[FaceOff]

[Sound storage="se119" buf=0]

[text]びゅちゅっ！！　ぷじゅっ！　びじゅじゅっ！！[KeyWait]

[text]のたうつように子宮が脈打ち、水鉄砲のように愛液が飛沫を散らした。[KeyWait]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]ケツ、入れられて、ますます感じてやがるっ、この鬼斬姫っ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r003"]
【【Oni C】】[CR]
「[i]すげえなっ。次から次へと、汁、溢れかえってきやがるっ！[/i]」[KeyWait]
[FaceOff]

[Sound storage="se141" buf=1]

[text]ぴちゃっ、じゅるじゅるずずずずずずっ、ずりゅ、ずりゅりゅ！！[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]お前らが汁啜ると、こっちがグイグイ締め付けてくるぜ！[/i]」[KeyWait]
[FaceOff]

[text]男たちの舌がその蜜汁を奪い合って女陰を舐め回す中、尻穴深く埋まった二本指が[eruby str="蠕動" text="ぜんどう"]する直腸壁を乱雑に掻き回す。[KeyWait]

[text]ぐじゅちゅっ！　ぬじゃっ！！　ぐっちょっ！　にゅぢっ、ぐじゅんっ！！　ぐじゅぶっ！[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a018"]
[Voice storage="a1425" buf=2]
【Haruka】[CR]
「[v]ひぎっ！　あひっ！！　ん……ぐうっ！　ふぉああっ！！　ああ……お、尻ぃ……おまんこも、お、あ、イイィッ！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]そうか、いいか！？　存分に楽しんでくれやっ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1426" buf=3]
【Haruka】[CR]
（[v]ふあ……違うっ、おなにーと、違うぅ……ッ！　もっと……あ、あ、あぁあ、奥ッ来てるぅっ！[/v]）[KeyWait]
[FaceOff]

[text]にちゃ、にちゅ、くちゅ、じゅるる、ちゅぱちゅぱっ！！[KeyWait]

[text]餓鬼たちの舌使いに唾液が撹拌され淫靡な響きを奏でる。[KeyWait]
[text]あぶれた舌も大陰唇を[eruby str="掠" text="かす"]めつつ鼠蹊部を舐めまくって、こそばゆい甘美で腰を浮き上がらせる。[KeyWait]

;a1427
;[ExVoice1 storage="aex60"]
;「ひゃふうっ！　んはっ！　あがはぁぁっ！　ふひっ、ひいいぃっ、ひぐううんぅ！　んひゃはっ、はぅ、んんんっ！　んぎっ、ひっ、ひあああああんっ！　はふん、くっ、あひぃっ！　ひぃっ！　ひいいいぃんっ！」

[ExVoice1 storage="aex60"]
[Face storage="f_a018"]
[Voice storage="a1428" buf=2]
【Haruka】[CR]
「[v]ああ、こん……なっ、すごいっ！！　きもち、イイの、すご……ッッッィ。おんなぁ……おんなの、からだ……っ、うぁあああ、気持ちイイッ！　オ、オナニーなんか、比べものにならないくらい、き、気持ちイイッ！！[/v]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1429" buf=2]
【Haruka】[CR]
「[v]ああっ、子宮から……ク、クルッ！！　奥からぁ……な、なにか、大きいの……浮き上がってくるっ！　オナニーでっ、イクより……すごいの、来るっ……押し寄せるっ、来ちゃうッ！！[/v]」[KeyWait]
[FaceOff]

[text]それが解き放たれたらどうなってしまうのだろうか？[KeyWait]
[text]不安と好奇心に胸を高鳴らせ、汗と唾液でぐちょぐちょに濡れた裸身をくねらせると、[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1430" buf=3]
【Haruka】[CR]
（[v]ひぅ……希美……乃ぉ……[/v]）[KeyWait]
[FaceOff]

[text]羅刹童子と視線が絡み合った。[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0161" buf=5]
【Rasetsu Douji】[CR]
「[v]うふ[Hearts][/v]」[KeyWait]
[FaceOff]

[text]床に仰向けにさせた結女へとのし掛かり、はだけた制服から溢れる巨乳へと舌を這わせている。[KeyWait]
[text]ボクを煽るように、妖艶な笑みを浮かべた。[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a060"]
[Voice storage="a1431" buf=2]
【Haruka】[CR]
「[v]ほあ……ッ！　ゆ……め、から、はにゃれ、ろぉ……。んひぅううっ！？[/v]」[KeyWait]
[FaceOff]

[text]理性を振り絞り、睨みつける。けれど―――。[KeyWait]

[Sound storage="se158" buf=1]

[text]ねちゅるっ！！　ぬじゅんっ！　ぐじゅぶっ！！[KeyWait]

[text]同時に、舌先がクリトリスを乱暴に弾き、直腸の壁を指先が捻り拉げた。[KeyWait]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1432" buf=2]
【Haruka】[CR]
「[v]ひぎっ！！　は、はわっ！？[/v]」[KeyWait]
[FaceOff]

[text]子宮を疼かせる巨大な熱塊が、激感と共に弾けた。[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1433" buf=3]
【Haruka】[CR]
（[v]な……？　や、あ、ああっ、これっ！　来るッ！　来ちゃうっ！！　ヒィッ、いっ、あああああぁッ、だぁあっ、ダメぇえええッ！！[/v]）[KeyWait]
[FaceOff]

[text]津波のような喜悦の衝撃が、一瞬で全身に広がり、脳裏を力の限り弾き上げる[KeyWait]

[extasyF]

[ExVoice1 storage="aex63"]
[Face storage="f_a018"]
[Voice storage="a1434" buf=2]
【Haruka】[CR]
「[v]イッ、んんんぅ――ッ、ふぅあああああぁッ、イッッッッッ、クぅうッ、ハァアああぁ～～～～～ッッッッ！　ほぉおおおおおおあぁあああああああぁッッッ！！[/v]」[KeyWait]
[FaceOff]

[ExtasyCount]
[Sound storage="se119" buf=0]

[text]ぷじゅっ！　ぶじゅびゅううっ！！　びゅじゅじゅじゅっ！[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]うおおっ、イッたぞ、この男女ぁっ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]しかも、ケツでイキまくってやがるっ！[/i]」[KeyWait]
[FaceOff]

[text]絶頂の潮汁が、迫り上がった股ぐらから高々と噴き上がり、餓鬼たちの頭上に降り注いで牝臭い香りとねとねとな粘りでいっぱいにする。しかも――。[KeyWait]

[ExVoice1 storage="aex05"]
[Face storage="f_a018"]
[Voice storage="a1435" buf=2]
【Haruka】[CR]
「[v]ふ、う……、あ、はあッ、んあ、や……だめ、あ……も、漏れ……。ンンンンンッ、ハァアアッ！！[/v]」[KeyWait]
[FaceOff]

[Sound storage="se120" buf=1]

[text]じょろ～～～、じょぼっ、じょぼじょぼじょぼじょぼじょ――――っ！！[KeyWait]

[Face storage="f_r003"]
【【Oni C】】[CR]
「[i]うひゃっ、こいつ、しょんべんまで漏らしやがったっ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1436" buf=3]
【Haruka】[CR]
（[v]は……うぅ、おし、っこ……。んあぁっ、と、止まらないっ！[/v]）[KeyWait]
[FaceOff]

[text]女になってから我慢が出来なくなったおしっこが、あっという間に漏れちゃった。[KeyWait]
[text]アンモニア臭い雨を、餓鬼ども目掛けて派手にぶちまけてしまう。[KeyWait]

[Face storage="f_r004"]
【鬼Ｄ】[CR]
「[i]無敵の鬼斬姫が、おしっこお漏らしかよっ！！　ずいぶんとだらしねえなっ！[/i]」[KeyWait]
[FaceOff]

[text]こらえきれなかった失禁を牡鬼どもに嘲笑われる。[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1437" buf=3]
【Haruka】[CR]
（[v]ボクに、だって……そのちんぽ……あれば、我慢……出来た……。ふぁああぁ……[/v]）[KeyWait]
[FaceOff]

[text]これ見よがしに突き出してくるヤツらの勃起ペニスを羨ましげに見詰めていると、女陰がヒュクンと脈打って、もう自分は女なんだということを思い知らされた、[KeyWait]

[ExVoice1 storage="aex06"]
[Face storage="f_a018"]
[Voice storage="a1438" buf=2]
【Haruka】[CR]
「[v]く……ううっ！　ああ……ッ！！　んふぁあっ、あふっ、も、もぉ……。イキ……っぱなしで……、んはぁああっ！　くふ……うぅうううぅ……ッ[/v]」[KeyWait]
[FaceOff]

[text]男の絶頂と違って、突き上げられた喜悦がいつまでも昇り続けた。[KeyWait]
[text]情けなさに喘ぎながら、収まらぬ痙攣に乳房を弾ませる。その肢体へと、[KeyWait]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]小便よりもっと濃い汁、たっぷりくれてやるぜ！！　それっ、味わいなっ！[/i]」[KeyWait]
[FaceOff]

[ExVoice1 storage="aex33"]
[Face storage="f_a017"]
[Voice storage="a1439" buf=2]
【Haruka】[CR]
「[v]いひぃいっ！？[/v]」[KeyWait]
[FaceOff]

[ExtasyM]

[Sound storage="se142" buf=0]
;イベント絵表示
[CgSet storage="EV601m"]
[UpDate]

[text]どぴゅ～っ、ぴゅるるっ！！　ぷじゅじゅっ！　どびゅどびゅどびゅッ！！[KeyWait]

[text]扱きながら突き付けられたヤツらの怒張から、濃厚な精液が一斉にぶちまけられた。[KeyWait]

[ExtasyF]

[ExVoice1 storage="aex10"]
[Face storage="f_a018"]
[Voice storage="a1440" buf=2]
【Haruka】[CR]
「[v]ひぅううっ、はあっ、ああああああぁ――――ッ！[/v]」[KeyWait]
[FaceOff]

[text]ブリッジのように股ぐらを迫り上がらせた牝臭い裸身に、べちょべちょと大量の白濁がへばり付いてくる。[KeyWait]

[Face storage="f_a017"]
[Voice storage="a1441" buf=3]
【Haruka】[CR]
（[v]ひぅ……、こいつ……らぁ……。汚いの、こんなに、ぶ、ぶっかけ……て……[/v]）[KeyWait]
[FaceOff]

[text]おぞましいカルキ臭に吐き気が込み上げる。[KeyWait]
[text]粘りの強い濁液が肌を伝う感触が気色悪くてたまらない。だがそれよりも――。[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1442" buf=3]
【Haruka】[CR]
（[v]く……ああ、イッちゃったあっ！　イッたら、だめ、なのにぃ。結女の、錬気……いっぱい、なっちゃ、う。結女……喰われ、ちゃう……[/v]）[KeyWait]
[FaceOff]

[text]意識が突き上げられたまま降りてこない。イキ狂った歓喜に涙が溢れる。[KeyWait]

[Face storage="f_a017"]
[Voice storage="a1443" buf=2]
【Haruka】[CR]
「[v]く……ふ、ぁ、あ……結、女……ぇ……[/v]」[KeyWait]
[FaceOff]

[eval exp="sf.kaisouOpenFlag['12']=1"]


[text]焦点の合わない瞳で様子をうかがうと、[KeyWait]

[ExVoice1Stop]
[Face storage="f_a039"]
[Voice storage="a1444" buf=2]
【Haruka】[CR]
「[v]ふぁっ！　あ、ああ……。はぁああああぁ……！！[/v]」[KeyWait]
[FaceOff]

[HSceneEnd]

[eval exp="f.chaptertitle='Yume's Crisis'"]

;背景：コンビニ倉庫
[BgSet storage="bg170"]
[ChrSet0 storage="b_b212l"]
[UpDate]

[text]結女はいまだに眠りに就いたまま、全身に桜色の濃密な錬気を纏い、ふわりと空中に浮かび上がっていた。[KeyWait]
[text]その傍らで、鬼神、羅刹童子がうっとりと見上げている。[KeyWait]

;背景：コンビニ倉庫
[BgSet storage="bg091"]
[ChrSet0 storage="b_c901"]
[UpDate]

[Face storage="f_c911"]
[Voice storage="c0162" buf=2]
【Rasetsu Douji】[CR]
「[v]あぁ、なんて、素晴らしい……。こんなにも純粋で強力で濃密な錬気を溢れさせるなんて……。結女……あなたは、わたしがいままで出会ったどの鬼慰姫よりも素敵だわ[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1445" buf=2]
【Haruka】[CR]
「[v]希……美乃……。いや、鬼……ッ。鬼神……、羅刹……童子……！[/v]」[KeyWait]
[FaceOff]

[text]それは少女が親友に送る眼差しではなかった。[KeyWait]
[text]この上ない獲物を手に入れた、人喰らう鬼の眼差し。[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0163" buf=2]
【Rasetsu Douji】[CR]
「[v]遼にもお礼をいわなくちゃね。あんたが女の身体で、はしたなくイキまくってくれたおかげで、結女がこんなに美味しそうになった[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1446" buf=2]
【Haruka】[CR]
「[v]くぅ……ッ！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_c902"]
[Voice storage="c0164" buf=2]
【Rasetsu Douji】[CR]
「[v]餓鬼たちには極上の快楽を与えたまま苦しませることなくあなたを喰らい尽くすように命じてあげるわ[/v]」[KeyWait]
[FaceOff]

[Face storage="f_r001"]
【餓鬼たち】[CR]
「[i]グゥッフッフッフッフゥ――ッ[/i]」[KeyWait]
[FaceOff]

[text]その言葉に、牡鬼どもが性欲と食欲の入り混じった眼差しでボクを見詰める。[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0165" buf=2]
【Rasetsu Douji】[CR]
「[v]さあ……、結女……[/v]」[KeyWait]
[FaceOff]

[ChrSet1 storage="b_b121" pos=c]
[UpDate]

[text]血の色の瞳に慈悲なき輝きを宿し、鬼神が浮遊する結女を抱き寄せる。[KeyWait]
[text]その羅刹の股間から……。[KeyWait]

[Face storage="f_a042"]
[Voice storage="a1447" buf=2]
【Haruka】[CR]
「[v]えっ！？　あ、ああああぁッ！[/v]」[KeyWait]
[FaceOff]

[ChrSet0 storage="b_c911"]
[ChrSet2 storage="b_c999" pos=c]
[UpDate]

[text]太く逞しくふんぞり返って肉傘を立派に張り出させた怒張が雄々しく屹立していた。[KeyWait]

[Face storage="f_a042"]
[Voice storage="a1448" buf=2]
【Haruka】[CR]
「[v]なっ、それ……、希美、乃……。なんで、そんな、ものっ！[/v]」[KeyWait]
[FaceOff]

[text]活発でボーイッシュだが希美乃は間違いなく女の子だったのに。[KeyWait]
[text]目の前の鬼神は、幼なじみのままではないと分かっているのに困惑してしまう。[KeyWait]

[Face storage="f_c902"]
[Voice storage="c0166" buf=2]
【Rasetsu Douji】[CR]
「[v]わたし、涅哩底王羅刹は鬼神。女であって男でもある存在だから[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a059"]
[Voice storage="a1449" buf=2]
【Haruka】[CR]
「[v]お、おんな……で、お……おとこ……[/v]」[KeyWait]
[FaceOff]

[text]男でありながら、女の身体となってしまったボク。[KeyWait]
[text]女の子の身体に転生したが、その正体は両方の性を有する鬼神。[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0167" buf=2]
【Rasetsu Douji】[CR]
「[v]ごめんね～。遼が結女のこと好きなのは知ってたけど、わたしのこれで結女を犯しちゃう[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a042"]
[Voice storage="a1450" buf=2]
【Haruka】[CR]
「[v]なっ！　そん……なっ。なにを……[/v]」[KeyWait]
[FaceOff]

[text]それが可能なのだ。女言葉で喋り、体つきも女だけど、立派なペニスを持つこの鬼神には。[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0168" buf=2]
【Rasetsu Douji】[CR]
「[v]陰陽の交わりにて『鬼慰姫』を喰らい尽くすことこそが至上の愉悦。わたしを真の鬼神へと昇華させる儀式だから♪[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a042"]
[Voice storage="a1451" buf=2]
【Haruka】[CR]
「[v]やめ……、やめろ……希美乃っ、お前結女と仲良かったのにっ！　そ……そんなので、結女を犯すなんてっ！！[/v]」[KeyWait]
[FaceOff]

[text]彼女、いや、彼？　両性具有の鬼神の中に眠る、結女の意識へと必死に訴えかける。けれど―――、[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0169" buf=2]
【Rasetsu Douji】[CR]
「[v]“希美乃”はずっと遼のこと好きだったのに、遼ったら全然気付いてくれなくて、いつも結女のことばかり見てたから……[/v]」[KeyWait]
[FaceOff]

[text]返って来たのは、どこか寂しげな冷たい笑顔だった。[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0170" buf=2]
【Rasetsu Douji】[CR]
「[v]だ・か・ら、わたしが全部、壊してあげる♪[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a043"]
[Voice storage="a1452" buf=2]
【Haruka】[CR]
「[v]希美……、乃………………ッ！！[/v]」[KeyWait]
[FaceOff]

[HSceneStart]

;EV602差分
;イベント絵表示
[CgSet storage="EV602c"]
[UpDate]

;[text]宙に浮かぶ結女の身体を抱き寄せた。[KeyWait]
[text]結女の身体を膝に抱く羅刹。[KeyWait]
[text]牙を覗かせる唇を、結女の唇に重ね合わせる。[KeyWait]
[text]鬼神の躍動的な肢体の股ぐらに勃つ雄々しい肉槍が、結女の股間へと押し当てられる。[KeyWait]

[Face storage="f_a045"]
[Voice storage="a1453" buf=2]
【Haruka】[CR]
「[v]やっ、やめろッ！　あ、ああああぁ…………ッ[/v]」[KeyWait]
[FaceOff]

[text]たとえ心を許した幼なじみだろうと、彼女を穢すなんて許せない。[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0171" buf=2]
【Rasetsu Douji】[CR]
「[v]んく……あふ、はぁ……結女の唇、カワイイ……。ああ、錬気、美味しそう……[/v]」[KeyWait]
[FaceOff]

[text]喘ぎに弛んだ唇を吸って、しどけなく唾液を滴らせながら羅刹が陶然とする。[KeyWait]
[text]またしても、はだけたブラウスから溢れた巨乳を独り占めして揉んでいた。[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0172" buf=2]
【Rasetsu Douji】[CR]
「[v]ん……はあ、気持ち、イイ……。これ、結女の中に、入れたら、すごく、イイだろうなぁ……。は、あん、あはぁ……[/v]」[KeyWait]
[FaceOff]

[text]カウパーで艶光りする亀頭を、ショーツの上から結女の股間に擦りつけている。[KeyWait]

[text]ぬちゅ、くちゃ、にちゅ、ぬちぬちぬち、ぬぷ[KeyWait]

[Face storage="f_b035"]
[Voice storage="b0127" buf=2]
【Yume】[CR]
「[v]んふぅ……、ふぁ……は……あぁ……ん……[/v]」[KeyWait]
[FaceOff]

[text]密やかな濡れ音が奏でられると、眠りに就く少女の吐息も乱れ始めた。[KeyWait]
[text]目を閉ざした可愛らしい顔に紅が差し、心地よさそうに眉根が寄る。[KeyWait]

[Face storage="f_a069"]
[Voice storage="a1454" buf=3]
【Haruka】[CR]
（[v]ボクのあそこには、ちんぽ、なくなっちゃったのに！　女の、あそこになっちゃったのにっ！！[/v]）[KeyWait]
[FaceOff]

[Face storage="f_a066"]
[Voice storage="a1455" buf=3]
【Haruka】[CR]
（[v]なのに……、そのペニスで、結女を穢すだなんて、絶対にボクが許さないっ！[/v]）[KeyWait]
[FaceOff]

[text]狂おしい嫉妬と怒りがはるかの胸で打ち震えた。[KeyWait]

[HSceneEnd]

[eval exp="f.chaptertitle='Rising Power'"]

;背景：コンビニ倉庫
[BgSet storage="bg091"]
[ChrSet0 storage="b_r301"]
[UpDate]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]ぐふふ、鬼斬姫ぇ。俺らも楽しもうぜ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]絶頂のうちに喰らってやるぜ。せいぜい極上の錬気を生みだしなっ！！[/i]」[KeyWait]
[FaceOff]

[text]餓鬼どもがボクの女体を歓喜の奔流で狂わせながら、貪り喰らおうと取り付いてくる。[KeyWait]

[BgmFadeOut time=1000]

[Face storage="f_a043"]
[Voice storage="a1456" buf=2]
【Haruka】[CR]
「[v]ふざ、ける……なあっ！！　雑魚どもがぁああッ！[/v]」[KeyWait]
[FaceOff]

[Sound storage="se829" buf=0]
;ＢＧＭ：逆転
[playbgm storage="bgm008"]

[text]ドクン、と心臓と、そして下腹の奥で疼きを伝える子宮壺が大きく脈打つ。[KeyWait]
[text]その途端に、力が漲りボクの全身が、強大な錬気で満たされていた。[KeyWait]

[Face storage="f_a058"]
[Voice storage="a1457" buf=2]
【Haruka】[CR]
「[v]どけぇえええっ！！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_r003"]
【【Oni C】】[CR]
「[i]ぐぉおおおおっ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r004"]
【鬼Ｄ】[CR]
「[i]ごぁあああッ！！[/i]」[KeyWait]
[FaceOff]

[Sound storage="se213" buf=0]
[ChrReset0]
[UpDate]

[text]まとわりつく手を振り払うと、醜悪な餓鬼どもが軽々と吹っ飛んだ。[KeyWait]

[ChrSet0 storage="b_r301"]
[UpDate]

[Face storage="f_r002"]
【Oni B】[CR]
「[i]このアマァああっ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r001"]
【Oni A】[CR]
「[i]死に損ないのくせに錬気がっ！？　いいぜ、今度は俺様が腹一杯喰らってやるっ！[/i]」[KeyWait]
[FaceOff]

[text]ボクの突然の反撃に、さらに餓鬼どもが飛びかかってきた。[KeyWait]

[Face storage="f_a058"]
[Voice storage="a1458" buf=2]
【Haruka】[CR]
「[v]ハァアアッ！[/v]」[KeyWait]
[FaceOff]

[Sound storage="se228" buf=0]
[ChrReset0]
[UpDate]

[Face storage="f_r001"]
【鬼Ｅ】[CR]
「[i]ぎゃうっ！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r002"]
【鬼Ｆ】[CR]
「[i]ぎひいっ！！[/i]」[KeyWait]
[FaceOff]

[Face storage="f_r003"]
【鬼Ｇ】[CR]
「[i]ひぎゃあっ！[/i]」[KeyWait]
[FaceOff]

[text]横薙ぎの右手が一閃した。[KeyWait]
[text]その途端、見苦しい餓鬼どもが、いくつもの肉片に寸断される。[KeyWait]

[Face storage="f_a074"]
[Voice storage="a1459" buf=2]
【Haruka】[CR]
「[v]も、戻ったっ！　力が……。ボクの力だッ！！[/v]」[KeyWait]
[FaceOff]

[Face storage="f_a057"]
[Voice storage="a1460" buf=2]
【Haruka】[CR]
（[v]結女が危険だって思ったら……。結女を護らなくちゃって、思ったら……。頭、真っ白……なって……。すごい力が、身体の奥……からっ！[/v]）[KeyWait]
[FaceOff]

[text]絶体絶命の状態で希望の力が身に宿った。ボクは、その力を―――！[KeyWait]

;★【分岐3】（鬼斬りの太刀、出るか、出ないか？）

;Ａ振り絞る。【6-2 出ないルートへ】[CR]

;Ｂ集中させる。【6-3 出るルートへ】[CR]

[SelectStart option=2]
[SelectOption target=*選択肢１ａ num=1 text="『振り絞る』"]
[SelectOption target=*選択肢１ｂ num=2 text="『集中させる』"]
[SelectEnd]

*選択肢１ａ
[OptionTarget num=1]
[jump storage="6-02.ks"]

*選択肢１ｂ
[OptionTarget num=2]
[jump storage="6-03.ks"]


