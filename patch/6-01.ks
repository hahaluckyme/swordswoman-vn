
*scene6-01|Chapter 6: Rasetsu the Kijin
[eval exp="f.chaptertitle='Lawless Ruler Rasetsu'"]

[BgSet storage="chapter06"]
[UpDate]
[wait time=3000]
[BgSet storage="_black"]
[UpDate]
[wait time=1000]


;�ꏊ�F�R���r�j�q��
;���ԁF���ی�
;�����F���q����

;�w�i�F�R���r�j�q��
[BgSet storage="bg091"]
[ChrSet0 storage="b_c014"]
[UpDate]

;�a�f�l�F�s��
[playbgm storage="bgm006"]

[WindowOn]

[Face storage="f_a026"]
[Voice storage="a1250" buf=2]
�yHaruka�z[CR]
�u[v]Kimino...? No, wait, w-who are you...!?[/v]�v[KeyWait]
[FaceOff]

[text]My brain couldn't understand the reality sitting before my eyes.[KeyWait]
[text]There was no mistaking my childhood friend, standing in front of me with her arms crossed and blocking my way.[KeyWait]
[text]But...[KeyWait]

[Face storage="f_a003"]
[Voice storage="a1251" buf=2]
�yHaruka�z[CR]
�i[v]The way she's standing there... It's almost like she's their leader...[/v]�j[KeyWait]
[FaceOff]

[text]The curse-slinging abusive delinquents had politely fallen to their knees behind Kimino.[KeyWait]

[Face storage="f_a003"]
[Voice storage="a1252" buf=2]
�yHaruka�z[CR]
�i[v]But... The three of us have been together since were kids... We were like siblings...[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a003"]
[Voice storage="a1253" buf=2]
�yHaruka�z[CR]
�i[v]She was always so upfront and cheerful, and I never heard any bad rumors or anything...[/v]�j[KeyWait]
[FaceOff]

[text]Yet, the bewitching grin on her face emanated an ominous aura...[KeyWait]

[Face storage="f_a003"]
[Voice storage="a1254" buf=2]
�yHaruka�z[CR]
�i[v]How long has she been associating with them...? When they messed with Yume in front of the station... Was that under Kimino's orders...?[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a003"]
[Voice storage="a1255" buf=2]
�yHaruka�z[CR]
�i[v]Why would she expose Yume to danger like this...? And why would she have them do all that to me...?[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a003"]
[Voice storage="a1256" buf=2]
�yHaruka�z[CR]
�i[v]Why... Why does she know that I'm Ryou!?[/v]�j[KeyWait]
[FaceOff]

[text]I hadn't even told Yume.[KeyWait]
[text]Only my parents, aunt, uncle, and those associated with the Ichijou main family should have known.[KeyWait]

[Face storage="f_c011"]
[Voice storage="c0105" buf=2]
�yKimino�z[CR]
�u[v]You're confused, right? I can see it on your face.[/v]�v[KeyWait]
[FaceOff]

[text]Kimino smiled as her cold gaze landed upon me. It was almost like she'd read my thoughts.[KeyWait]
[text]The edges of her mouth turned up, but nothing more, forming a cruel grin.[KeyWait]

[Face storage="f_a051"]
[Voice storage="a1257" buf=2]
�yHaruka�z[CR]
�i[v]Kimino doesn't smile like that![/v]�j[KeyWait]
[FaceOff]

[text]After she'd prank me, Kimino's charming smile would always prompt me to forgive her.[KeyWait]
[text]But even though she looked exactly the same, I wasn't sensing any part of Kimino from the girl standing before me.[KeyWait]
[text]This... wasn't Kimino.[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1258" buf=2]
�yHaruka�z[CR]
�u[v]Who are you? Where's the real Kimino!? Don't tell me that you...![/v]�v[KeyWait]
[FaceOff]

[text]The worst possibility immediately flashed through my mind.[KeyWait]

[ChrSet0 storage="b_c011"]
[UpDate]

[Face storage="f_c002"]
[Voice storage="c0106" buf=2]
�yKimino�z[CR]
�u[v]Geez, c'mon, Ryou. I [ita]am[endita] the real Kimino.[/v]�v[KeyWait]
[FaceOff]

[text]Her cold gaze instantly morphed into a friendly one.[KeyWait]
[text]Then, her bewitching smile turned into the casual one I knew.[KeyWait]

[Face storage="f_a033"]
[Voice storage="a1259" buf=2]
�yHaruka�z[CR]
�u[v]!?[/v]�v[KeyWait]
[FaceOff]

[text]For a moment, I thought maybe this had just been an ill-natured joke. But it would have gone way too far if so. It just wasn't plausible.[KeyWait]
[text]I stared at her, confused...[KeyWait]

[ChrSet0 storage="b_c014"]
[UpDate]

[Face storage="f_c011"]
[Voice storage="c0107" buf=2]
�yKimino�z[CR]
�u[v]But at the same time, I'm someone else as well.[/v]�v[KeyWait]
[FaceOff]

[text]Her face quickly returned to the bewitching, foreboding, and thorny one from before.[KeyWait]

[Face storage="f_c011"]
[Voice storage="c0108" buf=2]
�yKimino�z[CR]
�u[v]When you exorcised that pathetic, little oni in the nurse's office, I awakened.[/v]�v[KeyWait]
[FaceOff]

;�a�f�l�F�s���`
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
�yHaruka�z[CR]
�u[v]...What!?[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_b032"]
[Voice storage="b0120" buf=2]
�yYume�z[CR]
�u[v]Aah... Kimono... chan...![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_c011"]
[Voice storage="c0109" buf=2]
�yKimino�z[CR]
�u[v]A long, long time ago... I was cut down by one of your ancestors, by another Oni-Cutting Princess, and lost my physical body. But after all this time, I've finally reincarnated as Sakatani Kimino.[/v]�v[KeyWait]
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
�yYume�z[CR]
�u[v]Hyi![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a064"]
[Voice storage="a1261" buf=2]
�yHaruka�z[CR]
�i[v]An oni...? N-No...[/v]�j[KeyWait]
[FaceOff]

[eval exp="f.status_c='����'"]
[BgSet storage="bg091"]
[ChrSet0 storage="b_c901"]
[UpDate time=1000]

[Face storage="f_c901"]
[Voice storage="c0110" buf=2]
�yRasetsu Douji�z[CR]
�u[v]I'm known as the Lawless Ruler, Rasetsu. However, maybe the kijin 'Rasetsu Douji' would sooner ring a bell to your family's Oni Masters.[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a064"]
[Voice storage="a1262" buf=2]
�yHaruka�z[CR]
�u[v]A-A... kijin...[/v]�v[KeyWait]
[FaceOff]

[text]Kimino's body changed further. Two horns sprouted from her head as she transformed into a female oni wearing Japanese clothing.[KeyWait]

[Face storage="f_a064"]
[Voice storage="a1263" buf=2]
�yHaruka�z[CR]
�u[v]Rasetsu... Douji...[/v]�v[KeyWait]
[FaceOff]

[text]She didn't have a trace of the disgustingness the oni I'd encountered up until now had.[KeyWait]
[text]I let my focus be stolen away by the beauty of her dangerous, alluring eyes, and then...[KeyWait]

[ChrReset0]
[UpDate]

[ChrSet0 storage="b_r301"]
[UpDate]

[Face storage="f_b018"]
[Voice storage="b0122" buf=2]
�yYume�z[CR]
�u[v]A-Aah! Nooo! H-Help me...![/v]�v[KeyWait]
[FaceOff]

[text]The delinquents crowded around Yume began transforming into grotesque oni, one after one.[KeyWait]

[Face storage="f_r001"]
�yOni Grunt A�z[CR]
�u[i]Gufufuuuuuuuuuh! Gahaaaaah![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni Grunt B�z[CR]
�u[i]Bwooooooh![/i]�v[KeyWait]
[FaceOff]

[text]They made muffled groans as they drooled and approached Yume with clouded eyes.[KeyWait]

[Face storage="f_b018"]
[Voice storage="b0123" buf=2]
�yYume�z[CR]
�u[v]Hyiiiiiii! A-Aaah...[/v]�v[KeyWait]
[FaceOff]

[Sound storage="se211" buf=0]

[text]Unable to bear looking at their disgusting forms, my adorable cousin passed out.[KeyWait]

[Face storage="f_a026"]
[Voice storage="a1264" buf=2]
�yHaruka�z[CR]
�u[v]Yume![/v]�v[KeyWait]
[FaceOff]

[ChrReset0]
[UpDate]

[text]I hurried tried to run to her side, but...[KeyWait]

[ChrSet0 storage="b_c901"]
[UpDate]

[Face storage="f_c902"]
[Voice storage="c0111" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Ufufu, Ryou... �� No, maybe I should call you Haruka in that body?[/v]�v[KeyWait]
[FaceOff]

[text]Kimino - rather, Rasetsu Douji - grabbed me from behind.[KeyWait]

[Face storage="f_a026"]
[Voice storage="a1265" buf=2]
�yHaruka�z[CR]
�u[v]Kuh, let me go![/v]�v[KeyWait]
[FaceOff]

[text]I tried to shake her off, but her arms wouldn't budge.[KeyWait]

[Face storage="f_a064"]
[Voice storage="a1266" buf=2]
�yHaruka�z[CR]
�i[v]S-She's so strong![/v]�j[KeyWait]
[FaceOff]

[text]Right now, I was the Oni-Cutting Princess. Even though was powerful enough to defeat oni and Rasetsu didn't look strong in the slightest, she was managing to hold me still with absolute ease.[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1267" buf=2]
�yHaruka�z[CR]
�u[v]Y-You damn oni! How dare you take over Kimino's body again! Get out of her, damnit![/v]�v[KeyWait]
[FaceOff]

[text]Even though I'd defeated the oni that'd possessed her in the nurse's office, now...[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0112" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Aah, thanks for that. That foolish gaki manifested in my body without any clue as to who I really was. Goodness, he made me into something so disgusting...[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_c901"]
[Voice storage="c0113" buf=2]
�yRasetsu Douji�z[CR]
�u[v]But I awakened as a result of that, so perhaps I should be thankful? Fufufu. ��[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a035"]
[Voice storage="a1268" buf=2]
�yHaruka�z[CR]
�u[v]...?[/v]�v[KeyWait]
[FaceOff]

[text]It wasn't just her appearance. The aura she put out and everything else was totally unlike any other oni.[KeyWait]
[text]It bothered me that from the way this kijin was wording things, it made it sound like she was Kimino herself.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0114" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Nfu, it seems like you don't get it, so I'll explain. I, Rasetsu Douji, am not possessing the body of Sakatani Kimino. Rather, I was Sakatani Kimino from the very beginning.[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a003"]
[Voice storage="a1269" buf=2]
�yHaruka�z[CR]
�u[v]...? What...? What are you talking about? That's just...[/v]�v[KeyWait]
[FaceOff]

[text]I understood even less after her explanation.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0115" buf=2]
�yRasetsu Douji�z[CR]
�u[v]As I said earlier, I... rather, Kimino, is me - Rasetsu Douji, who borrowed a human form to reincarnate.[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_c901"]
[Voice storage="c0116" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Up until now, my memories and personality as a kijin had been sleeping underneath Kimino's consciousness, but the shock of you defeating the gaki who possessed me earlier with the Oni-Cutting Blade caused me to awaken.[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a072"]
[Voice storage="a1270" buf=2]
�yHaruka�z[CR]
�u[v]Reincarnation...? Kimino... A kijin... I-I... made you awaken...!?[/v]�v[KeyWait]
[FaceOff]

[text]I finally understood, but I couldn't believe it. I couldn't believe that the childhood friend I'd been with for so long had really been the reincarnation of an oni.[KeyWait]

[Face storage="f_a003"]
[Voice storage="a1271" buf=2]
�yHaruka�z[CR]
�i[v]But... I mean... I'm the Oni-Cutting Princess... Even though I'm a guy, I have this power that makes me into a girl...[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_c901"]
[Voice storage="c0117" buf=2]
�yRasetsu Douji�z[CR]
�u[v]But, you see... I'm glad that you awakened me and all, but that reckless Oni-Cutting Blade split our personalities, which were supposed to be merged into one, into two instead...[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_c908"]
[Voice storage="c0118" buf=2]
�yRasetsu Douji�z[CR]
�u[v]So as a result, I wasn't able to become complete, meaning I can't wield my full power as a kijin.[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a042"]
[Voice storage="a1272" buf=2]
�yHaruka�z[CR]
�u[v]Hyuh! Wait... What are you doing!? P-Put me down, damnit![/v]�v[KeyWait]
[FaceOff]

[text]The kijin, who was about as tall as I'd been back when I was a guy, effortlessly lifted me into her arms, princess style.[KeyWait]

[Face storage="f_a042"]
[Voice storage="a1273" buf=2]
�yHaruka�z[CR]
�u[v]A-And Yume! Let her go![/v]�v[KeyWait]
[FaceOff]

[text]More than myself, I was worried about my cousin, who was still unconscious and surrounded by male oni.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0119" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Yume will be okay. They won't go all the way with her. She's a precious friend to me too, after all. But I've got to give my gaki something of a tasty experience, don't I? ��[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Guhehehee, the Oni-Pleasing Princess...![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]She smells great! Guuuuuh, if it weren't for Rasetsu-sama's orders, I'd devour her right here on the spot![/i]�v[KeyWait]
[FaceOff]

[text]The oni crowded around Yume as she lay on the floor, then lifted up her clothes and laughed unpleasantly as they stared at her bare skin.[KeyWait]
[text]Indeed, it seemed that they weren't going too far, but seeing them drooling and breathing heavily as they stared longingly at Yume with their erect, throbbing dicks out still had me worried.[KeyWait]

[Face storage="f_a043"]
[Voice storage="a1274" buf=2]
�yHaruka�z[CR]
�u[v]That's enough! Get them off of her, damnit!![/v]�v[KeyWait]
[FaceOff]

[text]I flailed my legs around in an attempt to get free.[KeyWait]

;�a�f�l�F�ːJ�P
[playbgm storage="bgm009"]
[eval exp="f.chaptertitle='Haruka, Unable to Oppose the Oni'"]

[Sound storage="se210" buf=0]

[ChrReset0]
[UpDate]

[text]However, not bothered by my resistance in the least, Rasetsu carried me to a large, old couch in the storehouse's corner then casually tossed me onto it.[KeyWait]

[Face storage="f_a032"]
[Voice storage="a1275" buf=2]
�yHaruka�z[CR]
�u[v]Kuh![/v]�v[KeyWait]
[FaceOff]

[ChrSet0 storage="b_c901l"]
[UpDate]

[Face storage="f_c902"]
[Voice storage="c0120" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Ufu. ��[/v]�v[KeyWait]
[FaceOff]

[text]Immediately, I tried to get back up.[KeyWait]
[text]But before I could, Rasetsu got on top of me and held me down.[KeyWait]
[text]Her pressing her small, soft butt on me was enough to keep me from moving.[KeyWait]

[Face storage="f_c902"]
[Voice storage="c0121" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Mmh, you're kind of turning me on... I like that frustrated face of yours.[/v]�v[KeyWait]
[FaceOff]

[text]My heart throbbed as the alluring kijin licked her lips, but I quickly came to senses and glared daggers up at her.[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1276" buf=2]
�yHaruka�z[CR]
�u[v]You said that I split your personalities apart with the Oni-Cutting Blade, right? ...So right now, that means that the person represented in that body isn't Kimino, but someone else.[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a007"]
[Voice storage="a1277" buf=2]
�yHaruka�z[CR]
�u[v]But if that's the case, what happened to Kimino's personality?[/v]�v[KeyWait]
[FaceOff]

[text]I was afraid of the possibility that she'd been erased. However...�A[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0122" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Kimino is sleeping. While I'm using this body, she's inside here.[/v]�v[KeyWait]
[FaceOff]

[text]Rasetsu Douji, still smiling coldly, pointed to her modest chest.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0123" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Furthermore, Kimino doesn't know anything about me. It's pretty unfair considering I have all of her memories inside me, isn't it?[/v]�v[KeyWait]
[FaceOff]

[text]A cruel smile formed on the kijin's beautiful face. I surmised that she'd recalled something from Kimino's memories.[KeyWait]

[Face storage="f_c902"]
[Voice storage="c0124" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Ryou, when we were all really small and Yume and I stayed over at your house, I was the one who wet the bed that night. You were out cold and it didn't seem like you'd wake up, so I just swapped my futon out with yours. ��[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a042"]
[Voice storage="a1278" buf=2]
�yHaruka�z[CR]
�u[v]What... did you say!?[/v]�v[KeyWait]
[FaceOff]

[text]Yume, Kimino, and lastly, me.[KeyWait]
[text]Only the three of us and our parents knew that story, but now, this kijin had told me a new fact, almost sounding like she was reminiscing as she spoke.[KeyWait]

[Face storage="f_c902"]
[Voice storage="c0125" buf=2]
�yRasetsu Douji�z[CR]
�u[v]And then there was the time when the three of us played hide and seek with you as the seeker. I got annoyed, so I went home and played house with Yume... And I believe you cried as you kept looking for us.[/v]�v[KeyWait]
[FaceOff]

[text]Rasetsu leaned forward over me.[KeyWait]

[Face storage="f_a046"]
[Voice storage="a1279" buf=2]
�yHaruka�z[CR]
�i[v]...! W-What the heck... Her face looks just like Kimino's... How can she have such a soft, feminine body even though she's an oni!?[/v]�j[KeyWait]
[FaceOff]

[text]Even though her face and body's physical appearance didn't actually resemble Kimino at all, they somehow reminded me of my childhood friend.[KeyWait]

[Face storage="f_a046"]
[Voice storage="a1280" buf=2]
�yHaruka�z[CR]
�u[v]H-Hey... If you've still got Kimino's heart inside you, then at least help Yume![/v]�v[KeyWait]
[FaceOff]

[text]The swarming oni had ripped off Yume's skirt, exposing her panties.[KeyWait]
[text]Her large breasts spilled forth from her open blouse, and it was only a matter of time before her loose bra would be taken off, leaving them totally bare.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Gufuh, gafuh, nghoooooh![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]Oni... Pleasing... Princeeeess![/i]�v[KeyWait]
[FaceOff]

[text]I didn't know how strong of a sense of self-control Rasetsu Douji's gaki possessed, but with how overexcitedly they were groping Yume, there was no telling when they'd cross the line.[KeyWait]

[Face storage="f_a045"]
[Voice storage="a1281" buf=2]
�yHaruka�z[CR]
�u[v]Kimino![/v]�v[KeyWait]
[FaceOff]

[text]Desperate, I tried calling out to my childhood friend within the kijin. However...[KeyWait]

[Face storage="f_c902"]
[Voice storage="c0126" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Oh, goodness... It's always Yume, Yume, Yume with you... Mmh...[/v]�v[KeyWait]
[FaceOff]

;�����
[BgSet storage="_black"]
[UpDate]
[Sound storage="se182" buf=0]

[text]Kiss![KeyWait]

[Face storage="f_a039"]
[Voice storage="a1282" buf=2]
�yHaruka�z[CR]
�u[v]Huh? Mmh! Hauh...!?[/v]�v[KeyWait]
[FaceOff]

[text]Rasetsu muttered something so quiet I could hear it before kissing me passionately out of nowhere.[KeyWait]

[Face storage="f_a039"]
[Voice storage="a1283" buf=2]
�yHaruka�z[CR]
�i[v]W-Why... is she kissing me!? A-Aaaah...[/v]�j[KeyWait]
[FaceOff]

[text]She pressed her lips tight over mine and breathed hot breaths into my mouth.[KeyWait]
[text]My mind became frazzled at the soft sensation being pressed upon me.[KeyWait]

[Face storage="f_a049"]
[Voice storage="a1284" buf=2]
�yHaruka�z[CR]
�i[v]U-Uwah... S-She stuck her tongue iiin! I-It's... so hot... Fwaaah...[/v]�j[KeyWait]
[FaceOff]

[text]Her saliva-covered tongue licked all over the inside of my mouth, then entangled itself around my own tongue. It felt exhilarating, yet comforting, making me go limp.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0127" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Sorry... That's a request I can't honor. Yume is the Oni-Pleasing Princess, after all.[/v]�v[KeyWait]
[FaceOff]

;�w�i�F�R���r�j�q��
[BgSet storage="bg091"]
[ChrSet0 storage="b_c901l"]
[UpDate]

[text]Drip...[KeyWait]

[text]Saliva trickled from my lips as Rasetsu parted ways with them.[KeyWait]
[text]She licked it up with her red tongue before she started speaking with an ecstatic expression on her face.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0128" buf=2]
�yRasetsu Douji�z[CR]
�u[v]The ones that you inherited the roles of Oni-Cutting Princess and Oni-Pleasing Princess from were entwined together by an incredibly strong bond.[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_c901"]
[Voice storage="c0129" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Whenever the Oni-Pleasing Princess was in danger from oni, the Oni-Cutting Princes would make use of a spiritual power called Renki to overpower them.[/v]�v[KeyWait]
[FaceOff]

[text]The moment the kijin Rasetsu Douji stopped kissing me, every trace of Kimino disappeared from her face.[KeyWait]
[text]She began talking about the Oni-Cutting Princess and Oni-Pleasing Princess of the previous generation, likely the ones she fought against before reincarnating.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0130" buf=2]
�yRasetsu Douji�z[CR]
�u[v]And when the Oni-Cutting Princess herself was in danger of being raped, the Oni-Pleasing Princess would exude Renki from her body so we'd let our guards down. The Oni-Pleasing Princess's Renki is like the ultimate nectar for us oni.[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a062"]
[Voice storage="a1285" buf=2]
�yHaruka�z[CR]
�i[v]Kimino... No, she's... she's a kijin now![/v]�j[KeyWait]
[FaceOff]

[text]As Rasetsu looked at Yume, her eyes turned wicked and clouded with lust, just like the male oni surrounding her.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0131" buf=2]
�yRasetsu Douji�z[CR]
�u[v]When I used that water oni to mess with you in the pool, Haruka, Yume's Renki swelled up. That's what made me realize you two were just the same as them. But... Thanks to that, it became a little hard to stop my body from throbbing. ��[/v]�v[KeyWait]
[FaceOff]

[text]Rasetsu began grinding her crotch on my lower body.[KeyWait]

[Face storage="f_a045"]
[Voice storage="a1286" buf=2]
�yHaruka�z[CR]
�u[v]S-So that was you...! Hey, s-stop that. D-Don't rub me there...[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a046"]
[Voice storage="a1287" buf=2]
�yHaruka�z[CR]
�i[v]She's the one who humiliated me in front of everyone! I-I... even peed in the same people everyone was swimming in...[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a046"]
[Voice storage="a1288" buf=2]
�yHaruka�z[CR]
�i[v]So back then... Kimino's mind had already been swapped out with Rasetsu Douji's... And not only that, but ever since I beat the  oni possessing her in the nurse's office, all the way until today... This kijin had been pretending to be Kimino...[/v]�j[KeyWait]
[FaceOff]

[text]Even though Kimino was my childhood friend - practically my older sister - I hadn't noticed at all.[KeyWait]
[text]Even if it was true that she was apparently supposed to be part of Kimino rather than a completely different person, I was still shocked.[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1289" buf=2]
�yHaruka�z[CR]
�i[v]B-But anyway... H-Having her rub her crotch on me... feels kinda weird... Nnnh... Maybe it's because I'm naked, but... S-She's somehow... Afuh... Hitting me just right... It's like...[/v]�j[KeyWait]
[FaceOff]

[text]She was clearly stimulating my sensitive spots on purpose, making me feel stranger and stranger.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0132" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Look, even now, Yume's Renki is swelling up as I do this to you... And your Renki has swollen to its limits because those gaki are playing with Yume, too![/v]�v[KeyWait]
[FaceOff]

[text]She was right - I could feel power welling up in my body, and I felt feverish and excited.[KeyWait]

[Face storage="f_a067"]
[Voice storage="a1290" buf=2]
�yHaruka�z[CR]
�i[v]Looking back, I think I felt like this when I defeated my first oni after turning into a girl, too...[/v]�j[KeyWait]
[FaceOff]

[text]It was the same in the nurse's office as well. I'd surpassed the oni with overwhelming power.[KeyWait]
[text]Could it be that as I was now, I might be able to escape from Rasetsu's grasp? As I wondered...[KeyWait]

[ChrReset0]
[UpDate]

[ChrSet0 storage="b_r301"]
[UpDate]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Gwuuuooooh, this Renkiiii, I-I can't hold baaack![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]I wanna eat her! I-I wanna eat the Oni-Pleasing Princeeeess![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�yOni C�z[CR]
�u[i]I-I can't control myself anymooooore![/i]�v[KeyWait]
[FaceOff]

[text]The oni surrounding Yume that Rasetsu referred to as 'gaki' were practically going mad with excitement.[KeyWait]
[text]They clearly wanted to rape and devour the Oni-Pleasing Princess right away, but the kijin calling herself Rasetsu Douji was apparently quite the powerful leader.[KeyWait]
[text]Precum continuously dripped out of their swollen cocks like water guns as they frustratingly groped Yume's bare breasts and butt.[KeyWait]

[Face storage="f_a058"]
[Voice storage="a1291" buf=2]
�yHaruka�z[CR]
�u[v]N-No! How dare they touch Yume like that![/v]�v[KeyWait]
[FaceOff]

[text]Yume, still unconscious, squirmed around and winced like she was having a nightmare.[KeyWait]
[text]As I watched her, I felt the same burning heat as before grow in my body, and my feverish excitement became even stronger.[KeyWait]

[Face storage="f_c904"]
[Voice storage="c0133" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Haruka...? Kuh! Hey, cut it out already, gaki! If the Oni-Cutting Princess gets any stronger, I won't be able to keep her under control![/v]�v[KeyWait]
[FaceOff]

[text]Rasetsu noticed what was happening with me and hurriedly scolded the gaki.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Hyuuuh! Kuh... Uuuh... Renkiii...[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]Guuuuh! But, it... would taste so gooood...[/i]�v[KeyWait]
[FaceOff]

[text]The gaki swiftly backed away from Yume as if they'd been struck by lightning.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0134" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Do you have a problem with me saving my delicious Oni-Pleasing Princess for later? You certainly [ita]did[endita] seem rather stubborn when you hit on her when she was with 'Kimino'...[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]N-No...[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]The Oni-Pleasing Princess is yours, Rasetsu-sama...[/i]�v[KeyWait]
[FaceOff]

[text]No matter how enraged their lust made them, it seemed that they were forced to obey their master's orders with absolute certainty.[KeyWait]
[text]Though drooled ceaselessly as their feverish gazes washed over Yume, the oni didn't lay their hands on her any further.[KeyWait]
[text]Rasetsu grinned playfully at seeing her faithful servants obey her.[KeyWait]

[Face storage="f_a059"]
[Voice storage="a1292" buf=2]
�yHaruka�z[CR]
�i[v]...! T-That smile... It's just like Kimino's...[/v]�j[KeyWait]
[FaceOff]

[text]Not only that - it looked like just the smile she had when she was up to no good.[KeyWait]
[text]I'd always meet with some kind of misfortune right after she smiled like that.[KeyWait]
[text]I got a bad feeling.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0135" buf=2]
�yRasetsu Douji�z[CR]
�u[v]I'd feel bad leaving you totally unsatisfied, though. Instead of Yume, you can have Haruka. You can do whatever you want with the Oni-Cutting Princess.[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yGaki�z[CR]
�u[i]Uwoooooooooooooooooooh![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a058"]
[Voice storage="a1293" buf=2]
�yHaruka�z[CR]
�u[v]What!? J-Just what... are you going to have them do to me...?[/v]�v[KeyWait]
[FaceOff]

[ChrReset0]
[UpDate]

[ChrSet0 storage="b_c901l"]
[UpDate]

[Face storage="f_c902"]
[Voice storage="c0136" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Ufufu, nooothing at all. But, you know... Since I've always loved you, Ryou, I'd kind of wanted to be your partner myself...[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a012"]
[Voice storage="a1294" buf=2]
�yHaruka�z[CR]
�u[v].........Huuuh!?[/v]�v[KeyWait]
[FaceOff]

[text]I was taken aback by her unexpected words and tilted my head in confusion, wondering just how she was teasing me this time.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0137" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Aaah, you don't believe me at all, right? I can tell from that face. Well, I guess that's to be expected. Geez, 'I' was so shy and could only ever tease you, Ryou...[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_c901"]
[Voice storage="c0138" buf=2]
�yRasetsu Douji�z[CR]
�u[v]But didn't you at least realize it a little? Like, 'This way she keeps hanging around me, does she maybe like me or something?'...[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a059"]
[Voice storage="a1295" buf=2]
�yHaruka�z[CR]
�u[v]C-Come to think of it...! ...No, not at all, actually...![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_c909"]
[Voice storage="c0139" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Ugh...[/v]�v[KeyWait]
[FaceOff]

[text]Kimino - rather, Rasetsu - seemed legitimately surprised.[KeyWait]
[text]But I was being truthful. When I thought back, I really couldn't remember anything that would have implied she held feelings for me.[KeyWait]

[Face storage="f_a059"]
[Voice storage="a1296" buf=2]
�yHaruka�z[CR]
�i[v]In fact, I remember worrying about whether or not she [ita]hated[endita] me more than once...[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_c909"]
[Voice storage="c0140" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Ugh, geez, you blockhead! No... I guess 'I' was the dumb one for trying to tell such a dense boy how I felt using methods like that... Sigh...[/v]�v[KeyWait]
[FaceOff]

[text]It almost seemed like Kimino herself was upset over this. I reflexively considered saying something to console her, but just then...[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0141" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Well, it doesn't matter... Right now, devouring the rich, pure Renki I've pushed the Oni-Pleasing Princess to make comes first.[/v]�v[KeyWait]
[FaceOff]

[text]In an instant, her expression and manner of speaking became that of a cruel kijin.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0142" buf=2]
�yRasetsu Douji�z[CR]
�u[v]And then we'll back to being one. The minds of Rasetsu and Kimino, severed by the Oni-Cutting Blade, will become one... And I'll become the kijin who once turned cities into demonic capitals, the Lawless Ruler, Rasetsu![/v]�v[KeyWait]
[FaceOff]

[ChrReset0]
[UpDate]

[text]Rasetsu Douji's lifted her tall body off of me and danced into the air.[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1297" buf=2]
�yHaruka�z[CR]
�u[v]Wait...[/v]�v[KeyWait]
[FaceOff]

[text]I hurriedly got up, but...[KeyWait]

[ChrSet0 storage="b_r301"]
[UpDate]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Hyahaah, we've got permission![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]We're gonna devour and fuck the famous Oni-Cuttin' Princess real good![/i]�v[KeyWait]
[FaceOff]

[text]The gaki all attacked me at once.[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1298" buf=2]
�yHaruka�z[CR]
�u[v]Damnit! Get off of me![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�yOni C�z[CR]
�u[i]Gwaaaaaah![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a030"]
[Voice storage="a1299" buf=2]
�yHaruka�z[CR]
�u[v]Uwah! Auuh!?[/v]�v[KeyWait]
[FaceOff]

[text]I tried to kick them away, but they pushed me back down onto the couch with no effort.[KeyWait]

;�a�f�l�F�ːJ�Q
[playbgm storage="bgm010"]

[HSceneStart]

;�b�f�P�U(ev601)�F�����V�[��
[Sound storage="se211" buf=0]
;�C�x���g�G�\��
[CgSet storage="EV601a"]
[UpDate]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]You're weeeak! You're pathetic, Oni-Cuttin' Princess! We're gonna be able to rape you with ease![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a030"]
[Voice storage="a1300" buf=2]
�yHaruka�z[CR]
�i[v]Kuuh... I don't have any power! Why!?[/v]�j[KeyWait]
[FaceOff]

[text]It wasn't as if the gaki had gotten significantly stronger since transforming out of their human forms.[KeyWait]
[text]Yet, I was no longer able to match them in either power or speed.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0143" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Thanks for the tasty kiss, Ryou. [hearts] It made for a nice snack of Renki.[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a011"]
[Voice storage="a1301" buf=2]
�yHaruka�z[CR]
�u[v]W-When you kissed me, you...!? Kuh...![/v]�v[KeyWait]
[FaceOff]

[text]The reason I felt my entire body go limp and tired during Rasetsu's kiss hadn't just been because it felt comforting.[KeyWait]

[Face storage="f_a011"]
[Voice storage="a1302" buf=2]
�yHaruka�z[CR]
�i[v]I can't believe my heart pounded from that and I didn't even realize...[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a011"]
[Voice storage="a1303" buf=2]
�yHaruka�z[CR]
�u[v]Guuuh! Damnit, let me... go already! Aaah![/v]�v[KeyWait]
[FaceOff]

[text]The gaki held me down tight so I couldn't move at all.[KeyWait]
[text]At the same time, Rasetsu picked up the unconscious and stripped Yume and sat down on a nearby box with her on her lap.[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0144" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Now, Oni-Cutting Princess. Use your body to urge the Oni-Pleasing Princess to create the best Renki possible.[/v]�v[KeyWait]
[FaceOff]

[text]Rasetsu flashed a challenging gaze at me as she nuzzled Yume's cheeks. She looked afraid despite her eyes still being closed. Rasetsu then began licking her, sharp fangs peeking out of her lips as she did.[KeyWait]

[Face storage="f_a030"]
[Voice storage="a1304" buf=2]
�yHaruka�z[CR]
�u[v]Yume! S-Shit... Uuuuh! Aah...[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Hey, were you tryin' to push us?[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]What the heck, you ain't much stronger than a regular girl![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�yOni C�z[CR]
�u[i]You were pretty rough with us earlier, huh? We're gonna repay you for that![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a045"]
[Voice storage="a1305" buf=2]
�yHaruka�z[CR]
�i[v]I'm... totally powerless! Kuuuh, no, this can't be happening![/v]�j[KeyWait]
[FaceOff]

[text]Rasetsu had sucked out the Renki strengthening my body, making it so all that remained was its natural strength.[KeyWait]
[text]The strength of a powerless girl.[KeyWait]
[text]If this is how it was going to be, I would have even been stronger as Ryou.[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]Look, she's practically about to cry! Even after she went wild on us earlier![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r004"]
�yOni D�z[CR]
�u[i]Where'd that lively girl that punched my face in earlier go?[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Guhehee, let's pick up where we left off earlier. I'm gonna lick that wet, sloppy pussy of yours![/i]�v[KeyWait]
[FaceOff]

[text]One of the oni suddenly buried his face in my crotch.[KeyWait]

;�b�f�P�U����(ev601b)
;�C�x���g�G�\��
[CgSet storage="EV601b"]
[UpDate]

[Face storage="f_a048"]
[Voice storage="a1306" buf=2]
�yHaruka�z[CR]
�u[v]Kyauh! Aah, u-uuuuuuh...![/v]�v[KeyWait]
[FaceOff]

[text]I couldn't help but let out a shrill, girlish scream.[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1307" buf=3]
�yHaruka�z[CR]
�i[v]Kuh, uuuuuh... When I picked up my uniform earlier... I should have at least put my panties back on...![/v]�j[KeyWait]
[FaceOff]

[text]But even if I had, they surely would have been taken right back off with ease.[KeyWait]

[Face storage="f_a048"]
[Voice storage="a1308" buf=3]
�yHaruka�z[CR]
�i[v]Kuuh, a-aah... I can feel his b-breath... D-Down there... It's warm... but so gross....[/v]�j[KeyWait]
[FaceOff]

[text]The sensation of having my moist, sensitive skin stimulated directly was as intense as always despite having felt it so many times before now.[KeyWait]
[text]My feminine slit would loosen up just from getting a little excited, leaving its vulnerable parts totally defenseless.[KeyWait]

[Sound storage="se106" buf=0]

[text]Shlick, slurp... Slurp...[KeyWait]

[ExVoice1 storage="aex12"]
[Face storage="f_a048"]
[Voice storage="a1309" buf=2]
�yHaruka�z[CR]
�u[v]Hyuuuuh! Fweh, hwaaaaaaaaaaaah![/v]�v[KeyWait]
[FaceOff]

[text]The gaki's tongue spread apart my fleshy flower petals and poked at my sensitive membrane.[KeyWait]

[ExVoice1 storage="aex41"]
[Face storage="f_a048"]
[Voice storage="a1310" buf=2]
�yHaruka�z[CR]
�u[v]Hyawah! Ah, nooo! Fweaaaaaaaaaaaaah!�I[/v]�v[KeyWait]
[FaceOff]

[text]The intense, hot stimulation shot through me, setting my brain on fire.[KeyWait]
[text]A sensation comprised of both sweet pleasure and disgust made the hairs on my back stand on end and covered my upper arms in goosebumps.[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1311" buf=3]
�yHaruka�z[CR]
�i[v]He's, licking... me, aah... A guy, is licking... my pussy... A-aah, ah...[/v]�j[KeyWait]
[FaceOff]

[text]My chest felt like it as about to burst from humiliation and disgust.[KeyWait]
[text]Yet, my legs opened on their own, desiring more.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]You just keep leakin' out more and more! Just how much of a slut are you, you damn heifer!?[/i]�v[KeyWait]
[FaceOff]

[Sound storage="se179" buf=0]

[text]Slurp, sluuurp! Slurp, slurp...�B[KeyWait]

[ExVoice1 storage="aex52"]
[Face storage="f_a048"]
[Voice storage="a1312" buf=2]
�yHaruka�z[CR]
�u[v]Fweh! Nnh! Fwaaaaaaaaah![/v]�v[KeyWait]
[FaceOff]

[text]As he licked my slit's sensitive membrane, the oni slurped up the juices overflowing from my pussy, making sweet moans escape my lips.[KeyWait]

[Face storage="f_a048"]
[Voice storage="a1313" buf=3]
�yHaruka�z[CR]
�i[v]K-Kuh... My womb... It's enjoying this... It's going wild. My love juices... are dripping out, on their own. They're overflowing! Aaah, fwaaah, nhaaah![/v]�j[KeyWait]
[FaceOff]

[text]The oni spread apart my feverish, weakened flaps, digging his tongue underneath them even rougher.[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a048"]
[Voice storage="a1314" buf=2]
�yHaruka�z[CR]
�u[v]Fwah! N-Nooo! Haaaaaaaah! Nfwoh![/v]�v[KeyWait]
[FaceOff]

[text]Sweet pleasure seeped forth from wherever he licked, making it feel like those spots were going to melt away.[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]Looks like you just can't get enough of havin' your crotch licked![/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex21"]
[Face storage="f_a050"]
[Voice storage="a1315" buf=2]
�yHaruka�z[CR]
�u[v]Hyuuuh, t-that's not it... Hyawaaah![/v]�v[KeyWait]
[FaceOff]

[text]I'd only been a girl for a short time, obviously meaning this was the first time I'd had this done to me.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]You're so tasty down here... You've got such a pretty, unused pussy even though you're such a slut![/i]�v[KeyWait]
[FaceOff]

[Sound storage="se141" buf=0]

[text]Slurp, sluuurp, slurp...[KeyWait]

[ExVoice1 storage="aex52"]
[Face storage="f_a048"]
[Voice storage="a1316" buf=2]
�yHaruka�z[CR]
�u[v]Kuhyi, nhah, hah... Uuuh! No, nooo! S-Stop iiiiiit![/v]�v[KeyWait]
[FaceOff]

;a1317
;[ExVoice1 storage="aex52"]
;�u�͂Ђ႟�c�c�����A�����A�ӂ���c�c��A�ӂ��A�͂�c�c�Ђ����I�@�Ђ����A���A��񂣁c�c��Ђ���A�́A��������I�@��c�c��Ђ��A�����A�Ђ����c�c��͂��A�͂���A�����c�c��͂����I�v

[text]My mind flew further away as the oni licked me, and I was unable to stop my body from convulsing.[KeyWait]
[text]As my entire body shook, my legs would sometimes twitch and jump around.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Hey, hey, you're feelin' crazy good! Man, if you're reactin' like this, what's gonna happen if I play with you [ita]here[endita]?[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex41"]
[Face storage="f_a050"]
[Voice storage="a1318" buf=2]
�yHaruka�z[CR]
�u[v]Hyuh... B-But... But, I can't help iiiiit...![/v]�v[KeyWait]
[FaceOff]

[text]Even though I thought this was horrible, I couldn't stop my body.[KeyWait]
[text]The oni mocked me as he pursed his tongue and began rolling my hooded clitoris around with it.[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a018"]
[Voice storage="a1319" buf=2]
�yHaruka�z[CR]
�u[v]Nhoooh! Hyiiii! Kufuuuuuuuuh, aaahaaaaaah![/v]�v[KeyWait]
[FaceOff]

[text]Rubbing myself with my finger didn't even compare to this.[KeyWait]

;a1320
;[ExVoice1 storage="aex53"]
;�u�񂠂͂����I�@�ЂႣ���A����A���������I�@��Ђ���A�͂ӂ��A�����A��Ђ����I�@�Ђ�͂��A�͂���A�񂭂��A��͂��������I�@�͂Ђ��A�Ђ���A�Ђ����A�ӂ��A�ӂ�����I�@�ӂ����I�@�͂��I�@����������I�I�v

[Face storage="f_a018"]
[Voice storage="a1321" buf=3]
�yHaruka�z[CR]
�i[v]My mind's... going blank, kuuuuuh... I'm... going crazy... Fweaaah![/v]�j[KeyWait]
[FaceOff]

[text]The oni's moist tongue rolled around my sensitive nub, even managing to peel its hood back.[KeyWait]
[text]That alone was enough to make me short of breath and unable to restrain my moans. Being touched by someone else drove me more wild than I'd ever have imagined before all of this.[KeyWait]

[ExVoice1 storage="aex22"]
[Face storage="f_a017"]
[Voice storage="a1322" buf=2]
�yHaruka�z[CR]
�u[v]Hyehah!? N-Nooo! Something's, a-ah, haaaah![/v]�v[KeyWait]
[FaceOff]

[Sound storage="se119" buf=1]
;�C�x���g�G�\��
[CgSet storage="EV601c"]
[UpDate]

[text]Squirt! Squirt! Squiiirt![KeyWait]

[ExVoice1 storage="aex41"]
[Face storage="f_a018"]
[Voice storage="a1323" buf=2]
�yHaruka�z[CR]
�u[v]Nfwaah, hahyah! Ah, haah, nnnnh! Aah, ah, aaaaaaaaaaah![/v]�v[KeyWait]
[FaceOff]

[text]Unable to bear it, my womb practically quaked as it squirted its hot wetness everywhere.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]You came already? You squirted all over me![/i]�v[KeyWait]
[FaceOff]

[text]I actually hadn't came, but it wouldn't have been surprising if I had.[KeyWait]
[text]My eyes went wide as my love juices shot out of my contracting womb and dripped down my soaking wet thighs.[KeyWait]

[Face storage="f_a017"]
[Voice storage="a1324" buf=3]
�yHaruka�z[CR]
�i[v]Kuh... Uuh... But, anyone would respond like this, if you do this to them...[/v]�j[KeyWait]
[FaceOff]

[text]I was way too sensitive.[KeyWait]
[text]Having a penis as a guy felt good, sure, but not good enough to make me lose my mind like this.[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0145" buf=5]
�yRasetsu Douji�z[CR]
�u[v]Geez, Ryou. You were a guy until just recently, but you've gotten totally used to your female body.[/v]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex52"]
[Face storage="f_a060"]
[Voice storage="a1325" buf=2]
�yHaruka�z[CR]
�u[v]Kuh... Uuuh... N-No, I... Nhyauh![/v]�v[KeyWait]
[FaceOff]

[text]Being called by my male name in this body just amplified my embarrassment.[KeyWait]
[text]I couldn't help but moan sweetly and provocatively as the oni's tongue played with my feminine folds.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0146" buf=5]
�yRasetsu Douji�z[CR]
�u[v]But thanks to that, Yume's Renki has swollen up to such an incredible degree. Aah, it's going to taste so good! Holding myself back is so hard! ��[/v]�v[KeyWait]
[FaceOff]

;�C�x���g�G�\��
[CgSet storage="EV601d"]
[UpDate]

[ExVoice1 storage="aex52"]
[Face storage="f_a060"]
[Voice storage="a1326" buf=2]
�yHaruka�z[CR]
�u[v]...! A-Aah... Yu... me...[/v]�v[KeyWait]
[FaceOff]

[text]A pink light was flowing forth from my still unconscious cousin's body, now strong enough to be seen by the naked eye.[KeyWait]

[Face storage="f_b034"]
[Voice storage="b0124" buf=5]
�yYume�z[CR]
�u[v].........[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a039"]
[Voice storage="a1327" buf=3]
�yHaruka�z[CR]
�i[v]T-That's Yume's... No, the Oni-Pleasing Princess's Renki...[/v]�j[KeyWait]
[FaceOff]

[text]As my focus was stolen away by the warm light, I understood why the oni were so obsessed with it.[KeyWait]

[Face storage="f_a039"]
[Voice storage="a1328" buf=3]
�yHaruka�z[CR]
�i[v]S-So when I become dirtier... or f-feel better... That light grows within Yume...[/v]�j[KeyWait]
[FaceOff]

[text]And when it's finished growing, Rasetsu Douji will devour her.[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601e"]
[UpDate]

[Face storage="f_a031"]
[Voice storage="a1329" buf=3]
�yHaruka�z[CR]
�i[v]K-Kuh... I-I have to... control my... self... A-Aaaaah, no...[/v]�j[KeyWait]
[FaceOff]

[text]I held my lips shut so that at the very least, my moans wouldn't slip out.[KeyWait]

[Sound storage="se140" buf=0]

[text]Squelch, smack, slurp, sluuuurp...[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1330" buf=3]
�yHaruka�z[CR]
�i[v]Aah, but... When I... do this... I think I, feel it, even more... It's like, I'm... way more sensitive![/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1331" buf=3]
�yHaruka�z[CR]
�i[v]Aah, no, this is...[/v]�j[KeyWait]
[FaceOff]

[text]I wrapped my legs around the oni's neck as it ran its tongue along my groin, lifting my hips up as if to beg for more.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Gufuh! You want me to suck on you more?[/i]�v[KeyWait]
[FaceOff]

[Sound storage="se141" buf=1]

[text]Suck, slurp, sluuuuuuurp, squeeeeelch![KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601b"]
[UpDate]

[ExVoice1 storage="aex23"]
[Face storage="f_a048"]
[Voice storage="a1332" buf=2]
�yHaruka�z[CR]
�u[v]Ooh! Aaaaaah! Kuuh, u-ufuuuuuuuh! Nhyii, ahyiii![/v]�v[KeyWait]
[FaceOff]

[text]Now that I'd pulled the oni closer, I felt the stimulation even more directly.[KeyWait]
[text]I hadn't even managed to hold in my voice for a few seconds.[KeyWait]

[Sound storage="se140" buf=0]

[text]Lick lick, squelch, squelch, suck suck, lick, lick lick lick![KeyWait]

[ExVoice1 storage="aex33"]
[Face storage="f_a048"]
[Voice storage="a1333" buf=2]
�yHaruka�z[CR]
�u[v]Kuh... Hahnn! Aah, no, not... theeeeeere![/v]�v[KeyWait]
[FaceOff]

[text]The oni stubbornly licked my clitoris, leaving me unable to fight against the pleasure any longer.[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]Those are some perky boobs you've got. They've been bouncin' around like they're invitin' me for a while now![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�yOni C�z[CR]
�u[i]She used to be a guy, y'know. Yet now, she's got these big guy-temptin' tits! What a slut, right!?[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1334" buf=3]
�yHaruka�z[CR]
�i[v]I-It's not like I became a girl... because I wanted to... And my boobs... are only jiggling because... you're licking my clit so muuuch! My body... It keeps twitching! Hyiuuuh! N-Nooooooo![/v]�j[KeyWait]
[FaceOff]

[text]As a result of becoming a girl, even my tear glands had become weaker. I started crying more and more at how pathetic I was.[KeyWait]

[Face storage="f_r004"]
�yOni D�z[CR]
�u[i]You want us to grope 'em so badly you're cryin'?[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni E�z[CR]
�u[i]Your nipples are all stiff and hard! You were hopin' we'd suck on these too, huh!?[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex34"]
[Face storage="f_a050"]
[Voice storage="a1335" buf=2]
�yHaruka�z[CR]
�u[v]Nfwaah! D-Don't... just go and... l-lick my chest...! Fwoaaaahn![/v]�v[KeyWait]
[FaceOff]

[text]Multiple wet, slug-like pairs of lips stuck themselves to my bare breasts at once. They felt both ticklish and disgusting.[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a048"]
[Voice storage="a1336" buf=2]
�yHaruka�z[CR]
�u[v]No, not... there, fwah, n-no... Dooon't![/v]�v[KeyWait]
[FaceOff]

;a1337
;[ExVoice1 storage="aex54"]
;�u�񂠂������I�@�͂��A�񂭂����I�@�Ђ�͂��A�Ђ��A��ӂ������I�@���Ђ႟�A�͂ӂ��A������c�c����A��Ђ��A���ЂႠ����I�@�ЂႤ���A����A�ЂႮ�����I�@���Ђ��A�񂣁c�c�͂����A�Ђ��A�͂Ђ�͂��������I�v

[text]My pussy already had me at my limits, but when multiple oni started licking my boobs at once, I was no longer able to stop my body from writhing.[KeyWait]
[text]My breasts, which were shapely enough to not lose their form even when on my back, squished alluringly underneath the firm, bold grip of the oni.[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601f"]
[UpDate]

[Face storage="f_a050"]
[Voice storage="a1338" buf=3]
�yHaruka�z[CR]
�i[v]Kuuh... My n-nipples... are throbbing... They're erect, and all... tingly...![/v]�j[KeyWait]
[FaceOff]

[text]That itchy, uncomfortable feeling you get when your penis is too swollen with blood was there in my nipples, but much stronger.[KeyWait]
[text]Yet...[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]Hahm, suck! Suck, sluuurp![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�yOni C�z[CR]
�u[i]Kph, lick, lick, lick lick lick![/i]�v[KeyWait]
[FaceOff]

[text]The oni put my swollen nubs into their mouths and loudly sucked on them.[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a048"]
[Voice storage="a1339" buf=2]
�yHaruka�z[CR]
�u[v]Hyuuuh! Hoh, oh, aaaaaaaaah! Nhah, hwah, s-stop, stop it... Nnh![/v]�v[KeyWait]
[FaceOff]

[text]I puckered up my face to try to conceal the swirling vortex of bliss I was feeling.[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]Your boobs are so soft, but just look at how hard your nipples are![/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex52"]
[Face storage="f_a050"]
[Voice storage="a1340" buf=2]
�yHaruka�z[CR]
�u[v]Nhah! S-Stop rolling them around, w-with your tongues![/v]�v[KeyWait]
[FaceOff]

[text]My body birthed feminine pleasure, making my mind go all frazzled.[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1341" buf=3]
�yHaruka�z[CR]
�i[v]Fweeaah... Their fingers... are digging into, my boobs... Kufwah! It's like, my body's cells, are scatteriiing... I-I can't... take this, hwaah, haaaaaaaaahn![/v]�j[KeyWait]
[FaceOff]

[ExVoice1 storage="aex41"]
[Face storage="f_a050"]
[Voice storage="a1342" buf=2]
�yHaruka�z[CR]
�u[v]Ahyi, nhoh... Nkh, nnnh, haaaaah... Nhah, no, ah, no, nonono, noooo![/v]�v[KeyWait]
[FaceOff]

[text]The oni licked and sucked on my nipples as I lay there, my mind foggy, gradually losing the voice to resist.[KeyWait]
[text]My arms and legs writhed around from the pleasure, inviting the gaki to keep going.[KeyWait]

[Face storage="f_r004"]
�yOni D�z[CR]
�u[i]Are you really a guy!? Just look at that slutty face of yours![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni E�z[CR]
�u[i]She's no different than a normal girl who can't think of nothin' but bein' raped by oni. She's seducin' us![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1343" buf=3]
�yHaruka�z[CR]
�i[v]W-What... kind of face, am I making...? Aah, haaaaah... What kind of face, am I making... from having them suck on my boobs, and lick my pussy...!?[/v]�j[KeyWait]
[FaceOff]

[text]Just imagining it was making me really excited.[KeyWait]

[ExVoice1 storage="aex33"]
[Face storage="f_a048"]
[Voice storage="a1344" buf=2]
�yHaruka�z[CR]
�u[v]Afuuh! Nhah, a-aaaah...[/v]�v[KeyWait]
[FaceOff]

[text]I let out a big sigh as my head lurched backward.[KeyWait]

[Face storage="f_r002"]
�yOni F�z[CR]
�u[i]Kuh, there you go again... You're seducin' us, and I sure as hell can't resist![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�yOni G�z[CR]
�u[i]This Oni-Cuttin' Princess is one hell of a slutty bitch![/i]�v[KeyWait]
[FaceOff]

[text]The gaki all swarmed me at once, lured in by the air of seduction I was emanating unconsciously.[KeyWait]
[text]The oni ran their tongues along my sweaty, pink-dyed skin.[KeyWait]

;�C���������ƌ��������Ĕے肵�Ă܂��B
[ExVoice1 storage="aex52"]
[Face storage="f_a050"]
[Voice storage="a1345" buf=2]
�yHaruka�z[CR]
�u[v]Hah... Nnh! Fweh, aah... It feels so go... I mean, gross! Hah, aah, uuh... S-Stop, hyuh![/v]�v[KeyWait]
[FaceOff]

[text]Their countless tongues tickled my soft flesh as they continued teasing my boobs and pussy, resulting in a blend of itchy pleasure.[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a048"]
[Voice storage="a1346" buf=2]
�yHaruka�z[CR]
�u[v]Ahyi... M-My body's... s-so hot! M-My belly... feels weird! Nkhh... I-It's... throbbing... Nnh...! No, if I feel good now... A-Aah... Yume will be in dangeeeeer![/v]�v[KeyWait]
[FaceOff]

;a1347
;[ExVoice1 storage="aex55"]
;�u�񂠂������I�@�͂�����A����A���͂������I�@�͂Ђ႟�A�͂���A�͂������A�񂭂ӂ����I�@�͂Ђ��A�Ђ���A�Ђ������I�@�񂭂��A�ӂ���A��񂣂��I�@���͂��A�͂Ђ���A�ЂႤ��������I�v

[text]The Renki being expelled from Yume became a more deep, vibrant pink, and gave off the refreshing scent of flowers.[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0147" buf=5]
�yRasetsu Douji�z[CR]
�u[v]Aah... Fantastic... Yume... The Oni-Pleasing Princess I'll get to devour... [Hearts][/v]�v[KeyWait]
[FaceOff]

[text]Rasetsu Douji whispered to herself, sounding satisfied as she combed her fingers through the sleeping Yume's hair.[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1348" buf=3]
�yHaruka�z[CR]
�i[v]Hyii, u-uuuuuuh! Yume... I have... to save her...[/v]�j[KeyWait]
[FaceOff]

[text]My chest grew tight with unrest.[KeyWait]
[text]As it did, the sensation of the gaki trying to milk my breasts finally overwhelmed me.[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601b"]
[UpDate]

[ExVoice1 storage="aex42"]
[Face storage="f_a048"]
[Voice storage="a1349" buf=2]
�yHaruka�z[CR]
�u[v]Hyiihaaah![/v]�v[KeyWait]
[FaceOff]

[text]They pressed their pursed tongues against my nipples and dig into them hard.[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a048"]
[Voice storage="a1350" buf=2]
�yHaruka�z[CR]
�u[v]Kahyiiii!? Hyigyuh! Fwoh! Nhah, hafuuuuhn![/v]�v[KeyWait]
[FaceOff]

[Sound storage="se119" buf=0]

[text]Squirt! Squirt, squiiirt![KeyWait]

[text]Strong convulsions overtook me as sparks went off in my head.[KeyWait]
[text]My light orgasm caused me to squirt all over, making it look like I'd wet myself.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Kufuh! You've sprayed your juices everywhere again, you damn slut![/i]�v[KeyWait]
[FaceOff]

[Sound storage="se179" buf=1]

[text]Slurp slurp slurp, suck, slurp slurp sluuurp![KeyWait]

[text]The gaki slurped up my honey and began running their tongues along the edges of my actual entrance.[KeyWait]

[ExVoice1 storage="aex43"]
[Face storage="f_a048"]
[Voice storage="a1351" buf=2]
�yHaruka�z[CR]
�u[v]Hwaaah! Nhah, n-nooo! Nfwaahn![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni F�z[CR]
�u[i]Uwoh![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�yOni G�z[CR]
�u[i]Guhah![/i]�v[KeyWait]
[FaceOff]

[text]I thrust my legs out, kicking away the gaki that had been sucking on my toes, calves, and elsewhere.[KeyWait]

[Face storage="f_r004"]
�yOni D�z[CR]
�u[i]Guhoh, the Oni-Cutting' Princess's bare legs![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni E�z[CR]
�u[i]Let me get a taste of'em, too![/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex55"]
[Face storage="f_a048"]
[Voice storage="a1352" buf=2]
�yHaruka�z[CR]
�u[v]Fweh! Ahyuh! Hawaaaaah...![/v]�v[KeyWait]
[FaceOff]

[text]But right away, gaki in waiting greedily replaced them and began to run their ticklish tongues along my legs.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Your pussy's nice and loose... You're [ita]definitely[endita] ready to take a dick now, huh?[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1353" buf=3]
�yHaruka�z[CR]
�i[v]H-He's right... Fwaah... It's so hot, and tingly... My honey is, leaking right out... My pussy hole, it's so... loose...! A-Aaah, they're... licking me... My head's gonna, go blank...[/v]�j[KeyWait]
[FaceOff]

[ExVoice1 storage="aex54"]
[Face storage="f_a048"]
[Voice storage="a1354" buf=2]
�yHaruka�z[CR]
�u[v]Nhyiihn![/v]�v[KeyWait]
[FaceOff]

[text]One of them stuck a finger inside my pussy. The surprise attack's sweet yet dangerous pleasure shot through my body, making me shudder.[KeyWait]
[text]My entrance squeezed tight, inviting the finger to come in deeper.[KeyWait]

[ExVoice1 storage="aex41"]
[Face storage="f_a048"]
[Voice storage="a1355" buf=2]
�yHaruka�z[CR]
�u[v]Ohwaah![/v]�v[KeyWait]
[FaceOff]

;�C�x���g�G�\��
[CgSet storage="EV601g"]
[UpDate]

[text]However, the finger quickly pulled itself back out, having only went in a little ways.[KeyWait]

;�b�f�P�U����(ev601g)

[ExVoice1 storage="aex24"]
[Face storage="f_a050"]
[Voice storage="a1356" buf=2]
�yHaruka�z[CR]
�u[v]Nhoh...? Ah, hah... Aah...?[/v]�v[KeyWait]
[FaceOff]

[text]I immediately felt a strange, frustrating sensation in my pussy.[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1357" buf=3]
�yHaruka�z[CR]
�i[v]What was that... just now...? Nnh, aah... Fwaaah, I-I felt something... deep inside... Fwaaaaaah... I-It was like...[/v]�j[KeyWait]
[FaceOff]

[text]I was perplexed at the taboo throbbing, which was unlike anything I'd felt before. I wanted to taste it once more.[KeyWait]
[text]A desperate, begging expression formed on my face and my entire body quivered. The oni began speaking proudly as he licked my thick love juices off of his finger.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]All I did was stick a finger in and you squeezed it so tight you practically tore it off![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]You just turned into a girl, so you're still a virgin, right? Tough to imagine it considerin' how slutty of a pussy you've got. I can't believe you're really the Oni-Cuttin' Princess![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni�z[CR]
�u[i]Gwaaahahahahahaaaaah![/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex57"]
[Face storage="f_a060"]
[Voice storage="a1358" buf=2]
�yHaruka�z[CR]
�u[v]Fweh!? N-No... T-This is just... A-Aah, ah...[/v]�v[KeyWait]
[FaceOff]

[text]I tried to rebuke them, but the words couldn't come out.[KeyWait]
[text]In fact, my pussy wanted the oni to insert his finger again so badly it was twitching and convulsing, as well as letting out even thicker wetness than before.[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1359" buf=3]
�yHaruka�z[CR]
�i[v]Kuuh... Uuuuuh, the hole... It feels so... weird inside...! I-It's like... it wants it...[/v]�j[KeyWait]
[FaceOff]

;a1360
;[ExVoice1 storage="aex56"]
;�u�ӂ�����c�c��A���c�c��͂��c�c�͂����c�c���ӂ�A���c�c�͂��A�͂��c�c���A�͂��c�c��񂣁c�c�񂭂��A��񂣁c�c�͂���c�c��A�ӂ����c�c�͂���c�c�v

[text]Suddenly, I realized my eyes were fixated on the oni's erect, precum-dripping dicks.[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1361" buf=3]
�yHaruka�z[CR]
�i[v]Haah... Uuuh, t-they're so... big... They're big, because of me... Because they're looking, at me, a naked girl... Because they played with, my naked female body... and sucked on, my boobs... and my pussy...[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1362" buf=3]
�yHaruka�z[CR]
�i[v]Huh...? But their dicks tasted... so weird... They made me suck on one earlier... I hated it... but... They're so big and hard...[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1363" buf=3]
�yHaruka�z[CR]
�i[v]One's going to go in... Inside me... I-Into my... p-pussy... I-It's gonna... A-Aaaah...[/v]�j[KeyWait]
[FaceOff]

[text]My imagination wouldn't stop. The more my pussy twitched and squeezed like mad, the more my heart beat so hard it hurt.[KeyWait]
[text]And I'd been leaking out a torrent of love juices this whole time.[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1364" buf=3]
�yHaruka�z[CR]
�i[v]Just... a finger... f-felt so good... I-If one of those, went into me... No, t-they're too t-thick... T-They wouldn't fit![/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1365" buf=3]
�yHaruka�z[CR]
�i[v]B-But, if they put stick one of those into me, if they force it in... Then, if they...![/v]�j[KeyWait]
[FaceOff]

[Sound storage="se119" buf=0]
[text]Squiiiirt! Squirt, squiiiirt![KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601h"]
[UpDate]

;[ExtasyF]

[ExVoice1 storage="aex11"]
[Face storage="f_a048"]
[Voice storage="a1366" buf=2]
�yHaruka�z[CR]
�u[v]Hyuuuuuh! Fuhyi, fwah, fwaaaaaaah...![/v]�v[KeyWait]
[FaceOff]

;[ExtasyCount]

[text]Just the act of imagining one of their throbbing members going inside me instantly made me cum a little.[KeyWait]
[text]But that wasn't enough to stop my mind from running wild.[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601g"]
[UpDate]

[Face storage="f_a050"]
[Voice storage="a1367" buf=3]
�yHaruka�z[CR]
�i[v]I-If one of those dicks... goes inside me, it'll cum... It'll cum... Aah, inside me![/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1368" buf=3]
�yHaruka�z[CR]
�i[v]Nkh... Haah, aaah, ah, haah... If that happened... W-Would I get pregnant...? A-A baby... I mean, I [ita]am[endita] a girl now...[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a048"]
[Voice storage="a1369" buf=3]
�yHaruka�z[CR]
�i[v]Getting raped... and impregnanted... and giving birth... to a baby! I-I... d-don't want that... Aaaah...[/v]�j[KeyWait]
[FaceOff]

[text]My body quivered with fears that were natural for any girl. However...[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601h"]
[UpDate]

[ExVoice1 storage="aex41"]
[Face storage="f_a018"]
[Voice storage="a1370" buf=2]
�yHaruka�z[CR]
�u[v]S-Stop! Hyuh! Fwah!? Nnh, nnnh![/v]�v[KeyWait]
[FaceOff]

[text]I was still twitching and convulsing as the oni's finger dug around in my wet slit.[KeyWait]
[text]As the finger moved my folds around and pressed against my shallow walls, my hips lurched forward, wanting to feel stimulation deeper.[KeyWait]

[ExVoice1 storage="aex57"]
[Face storage="f_a017"]
[Voice storage="a1371" buf=2]
�yHaruka�z[CR]
�u[v]Fwaaah, I-I... Nhah, oh, ah, haauuuuuuuhn![/v]�v[KeyWait]
[FaceOff]

;a1372
;[ExVoice1 storage="aex57"]
;�u�͂������c�c����A��������I�@�ӂ��������c�c�͂��A�͂�����c�c���͂����A�͂���A���ӂ����c�c���c�c��A������c�c�͂��c�c�����A��ЂႠ�A��񂣁c�c�͂����A�͂��A����������c�c�v

[text]I was unable to stop myself from panting. My eyes teared up and started to dart around.[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]I can't get enough of this...[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�yOni C�z[CR]
�u[i]That's hot...[/i]�v[KeyWait]
[FaceOff]

[text]That seemed to turn the gaki on further. They licked my body with increased vigor, getting me totally covered with their slippery saliva.[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1373" buf=3]
�yHaruka�z[CR]
�i[v]T-This is stinky... and gross... So... why? Aah, why...?[/v]�j[KeyWait]
[FaceOff]

[ExVoice1 storage="aex52"]
[Face storage="f_a048"]
[Voice storage="a1374" buf=2]
�yHaruka�z[CR]
�u[v]Nhyi! Fwah! Afuh, fwehaaaaaaaaah![/v]�v[KeyWait]
[FaceOff]

[text]Multiple fingers groped my supple breasts as several tongues rushed my nipples, pushing the swollen nubs around as if they were fighting for them.[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601g"]
[UpDate]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1375" buf=2]
�yHaruka�z[CR]
�u[v]Hwah! No, aaah! I-I'm gonna lose... my miiind![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a1376" buf=3]
�yHaruka�z[CR]
�i[v]Even though guys... pretty much only feel good... with their dicks... Girls' bodies... feel good... e-everywhere...![/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a1377" buf=3]
�yHaruka�z[CR]
�i[v]Kuh, uuh, aah... No, no...! At this rate... T-They're gonna put it in! They're [ita]finally[endita] gonna put it in![/v]�j[KeyWait]
[FaceOff]

[text]I didn't even know whether I was looking forward to having a dick in me or not anymore.[KeyWait]
[text]The gaki's reddish-brown, raging erections stood tall, clearly ready to get to enter me.[KeyWait]
[text]As I stared at them, hot honey practically erupted forth from my expanding and contracting hole, urging them on.[KeyWait]

[Face storage="f_a017"]
[Voice storage="a1378" buf=3]
�yHaruka�z[CR]
�i[v]Ah... Aah, my body wants, a guy's dick, inside it... If they push one of those, against me, it'll... go inside me...[/v]�j[KeyWait]
[FaceOff]

[text]I was reminded that my body had become that of a girl's - in other words, that it was the ideal body to be violated by men.[KeyWait]
[text]As I thought that, I reflexively clenched my crotch. My pussy squeezed tighter, and with it, my asshole.[KeyWait]
[text]They oni seemed interested in that response.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Oh man, this hole's started openin' up like it wants somethin', too. You're just never satisfied![/i]�v[KeyWait]
[FaceOff]

[text]The oni's finger left my pussy.[KeyWait]

[ExVoice1 storage="aex24"]
[Face storage="f_a050"]
[Voice storage="a1379" buf=2]
�yHaruka�z[CR]
�u[v]Fweeeh!?[/v]�v[KeyWait]
[FaceOff]

[text]Feeling like they'd lost something, my hips naturally lifted themselves upward to chase after the finger.[KeyWait]
[text]But just then...[KeyWait]

[Sound storage="se108" buf=1]

[text]Squelch.[KeyWait]

[ExVoice1 storage="aex52"]
[Face storage="f_a042"]
[Voice storage="a1380" buf=2]
�yHaruka�z[CR]
�u[v]Hooooh, aaaah!? W-Whaaaat!?[/v]�v[KeyWait]
[FaceOff]

[text]A finger presed itself against my asshole, which lay totally exposed underneath my pussy.[KeyWait]

[Sound storage="se111" buf=0]

;�b�f�P�U����(ev601i)
;�C�x���g�G�\��
[CgSet storage="EV601i"]
[UpDate]

[text]Schlup![KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a018"]
[Voice storage="a1381" buf=2]
�yHaruka�z[CR]
�u[v]Hooguh!?[/v]�v[KeyWait]
[FaceOff]

[text]A jolt of confusion hit me as the finger spread apart my asshole and went inside.[KeyWait]
[text]I felt a frightening sensation down there, causing my previously-loose body suddenly to flinch and stiffen right back up.[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a017"]
[Voice storage="a1382" buf=2]
�yHaruka�z[CR]
�u[v]Fweh! N-No... Aah, s-stop it, haaah! That spot's, dirty! Nnnnh![/v]�v[KeyWait]
[FaceOff]

[text]A strange, dangerous feeling, totally different from when I'd had a finger in my pussy, drove me to clench my sphincter in a desperate attempt to resist.[KeyWait]
[text]Somehow, I managed to push the finger back out of my asshole.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Still too tight, huh...[/i]�v[KeyWait]
[FaceOff]

[text]The gaki immediately scowled, looking disappointed.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Even though you're totally soaked here![/i]�v[KeyWait]
[FaceOff]

[text]Then, he moistened up his finger with the juices pouring out of my pussy and tried to stick it into my asshole once again.[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a018"]
[Voice storage="a1383" buf=2]
�yHaruka�z[CR]
�u[v]Hyeuh, no! ...![/v]�v[KeyWait]
[FaceOff]

[Sound storage="se130" buf=1]

[text]Schlup![KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601j"]
[UpDate]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1384" buf=2]
�yHaruka�z[CR]
�u[v]Hyah![/v]�v[KeyWait]
[FaceOff]

[text]I squeezed my sphincter to resist again, but it was no good.[KeyWait]
[text]The maddening pleasure I'd been subjected to had made my love juices really thick, resulting them in them serving as a powerful lubricant.[KeyWait]
[text]My stiff, tight anus loosened up effortlessly, allowing the oni's finger to pass through.[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1385" buf=3]
�yHaruka�z[CR]
�i[v]Kwah... Ah... M-My butt... No... way...[/v]�j[KeyWait]
[FaceOff]

[text]There was no longer anything I could do about it.[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a018"]
[Voice storage="a1386" buf=2]
�yHaruka�z[CR]
�u[v]Unuuuuuuh, hah, uuuuh! Fweh...[/v]�v[KeyWait]
[FaceOff]

[text]I squeezed my asshole as hard as I could in a panicked response to the hot sensation, but the liquids excreted by my own womb had just loosened it up too much for me to do anything about.[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a017"]
[Voice storage="a1387" buf=2]
�yHaruka�z[CR]
�u[v]Fwah, hah, nnh, aah! No, if you... A-A-Ah... I-It's gonna open uuup![/v]�v[KeyWait]
[FaceOff]

[Sound storage="se158" buf=0]

[text]Squelch, squelch, squelch...[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Your ass is pretty tight. It's still squeezin' down on me...[/i]�v[KeyWait]
[FaceOff]

[text]The oni moved his finger around as if he was loosening me up. Intense, burning throbs of fatigue ashed over me, almost like my butt was on fire.[KeyWait]
[text]Both of my legs shuddered, and I relaxed my focus just a little, causing my anus to relax, too.[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a018"]
[Voice storage="a1388" buf=2]
�yHaruka�z[CR]
�u[v]Hyuh! Aah! W-Why!? I-I was squeezing iiiiiit![/v]�v[KeyWait]
[FaceOff]

[Sound storage="se160" buf=1]

[text]Schwap! Schwap, schwap, schwap, schwap![KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Ooh, it's goin' in further. It's tough, but it looks like it's ready to welcome my finger. Just what I'd expect of the slutty Oni-Cuttin' Princess's asshole![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]Once you get it in, it's gonna let you go [ita]all[endita] the way in! What a filthy asshole![/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1389" buf=2]
�yHaruka�z[CR]
�u[v]Uwah! F-Fuuuuuuh...! No, aah! D-Don't put it in... that deeeeeeep![/v]�v[KeyWait]
[FaceOff]

;a1390
;[ExVoice1 storage="aex58"]
;�u�͂������I�@��Ђ��A�͂��A��񂤂����I�@��͂��A�͂��A�񂭂��A��ӂ������I�@��͂��I�@�������I�@�͂��I�@��͂������������I�@�񂮂��I�@����A�ӂ����A���ЂႠ������I�v

[Face storage="f_a018"]
[Voice storage="a1391" buf=3]
�yHaruka�z[CR]
�i[v]I feel his finger's joints... rubbing against me... inside... Kufuh, aah... I-I can... hardly breathe... This is... too much... T-This feeling... inside... my buuuutt!![/v]�j[KeyWait]
[FaceOff]

[Sound storage="se159" buf=1]

[text]Schwap, schwap, schwap![KeyWait]

[text]My anus's folds were doing their best to shut as always, but the mixture of my rectum's moisture along with the wetness from my pussy both made the foreign object's intrusion a smooth one.[KeyWait]
[text]The oni's thick finger further into me, passing its first joint, second joint, and then finally all the way to its base.[KeyWait]

[Sound storage="se157" buf=1]

[text]Schlup![KeyWait]

[text]I felt the space between the oni's fingers collide with my anus.[KeyWait]

[ExVoice1 storage="aex58"]
[Face storage="f_a017"]
[Voice storage="a1392" buf=2]
�yHaruka�z[CR]
�u[v]Kuh... Fuuuuuuuh! Hawaaah! Hyi! Hyiyaaaaaah![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1393" buf=3]
�yHaruka�z[CR]
�i[v]Agah, aaah, w-what... [ita]is[endita] this... I hate this feeling... B-But, a-aaaah...[/v]�j[KeyWait]
[FaceOff]

[text]Despite the shock of having the burning object stuck inside me, my body still felt like it was drowning in a vortex of maddening pleasure.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Hey, just a bit of pussy juices is all I needed to slide in knuckle-deep! I think her pussy's looser than her asshole![/i]�v[KeyWait]
[FaceOff]

[Sound storage="se161" buf=7 loop=true]

[text]Thwap, schwap, thwap, schwap, schwap![KeyWait]

[text]The oni mocked me as he moved his finger around inside me.[KeyWait]

[ExVoice1 storage="aex21"]
[Face storage="f_a018"]
[Voice storage="a1394" buf=2]
�yHaruka�z[CR]
�u[v]Ngh, hyiihn! Hwehaaaah! Aguh! Nhyi! Kufuh, hah, fuhah! Hahyaah! Ngyi, hyi! Fwah, abufuuuh![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a1395" buf=3]
�yHaruka�z[CR]
�i[v]Kuh... I-I can't believe it... Even my butt! Fuuh, aah, even though, it's such a dirty place...! It's actually... feeling good...[/v]�j[KeyWait]
[FaceOff]

[text]The intense yet out-of-place feeling in my rectum swelled up stronger, creating an oddly urgent-feeling pleasure.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]That face you're makin' says you're likin' this now![/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex58"]
[Face storage="f_a017"]
[Voice storage="a1396" buf=2]
�yHaruka�z[CR]
�u[v]Hyuh! S-Shut... up...[/v]�v[KeyWait]
[FaceOff]

[text]I blushed and hurriedly turned my face away, but...[KeyWait]

[Sound storage="se130" buf=0]

[text]Squelch.[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1397" buf=2]
�yHaruka�z[CR]
�u[v]Hwah, aaahn![hearts][/v]�v[KeyWait]
[FaceOff]

[text]His finger dug against my rectum's folds, causing a sweet moan to slip out of my lips.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]You sure you weren't always havin' your friends stickin' their dicks in your ass back when you were a guy? You're feelin' way too good for your first time, don't you think!?[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex58"]
[Face storage="f_a017"]
[Voice storage="a1398" buf=2]
�yHaruka�z[CR]
�u[v]...! N-No... U-U-Uwaaahaah![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1399" buf=3]
�yHaruka�z[CR]
�i[v]That's not funny... Whether I'm a guy or a girl, I'm only into girls. I-I love Yume! I'm totally disgusted... with these guys playing with my body like this... I can't stand it![/v]�j[KeyWait]
[FaceOff]

[text]I wanted to fight the accusation out loud, but the sensations in my asshole were too strong, leaving me unable to speak.[KeyWait]

[SoundOut buf=7 time=2000]

[Face storage="f_c906"]
[Voice storage="c0148" buf=5]
�yRasetsu Douji�z[CR]
�u[v]Huh, what was that!? Wait, Ryou, you're into guys?[/v]�v[KeyWait]
[FaceOff]

[text]Before long, a twinkle appeared in Kimino's... Rather, Rasetsu's eyes as she became interested in the conversation. [KeyWait]
[text]Girls... really do like talking about that kind of thing, huh...[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0149" buf=5]
�yRasetsu Douji�z[CR]
�u[v]Was it Watanabe? Or maybe Usui? D-Don't tell me... Urabe...? ...No, of course not. I'd be a bit freaked out if so...[/v]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex55"]
[Face storage="f_a050"]
[Voice storage="a1400" buf=2]
�yHaruka�z[CR]
�u[v]I-It was nobody! I'm not, i-into guys, haaaaaaaahn![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1401" buf=3]
�yHaruka�z[CR]
�i[v]U-Ugh, I responded normally because she asked me like Kimino... This isn't my childhood friend, this is an evil kijin who's trying to eat Yume![/v]�j[KeyWait]
[FaceOff]

;�C�x���g�G�\��
[CgSet storage="EV602a"]
[UpDate]
[ExVoice1Stop time=4000]

[Face storage="f_c902"]
[Voice storage="c0150" buf=5]
�yRasetsu Douji�z[CR]
�u[v]Hmm, personally, I'm open to both guys and girls... I like you as both Ryou and Haruka... Buuut, my favorite has got to be Yume.[hearts][/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1402" buf=2]
�yHaruka�z[CR]
�u[v]Y-Yume...[/v]�v[KeyWait]
[FaceOff]

[text]An abnormal amount of Renki was flowing out of the 'Oni-Pleasing Princess' who remained unconscious in Rasetsu's arms, causing a gentle swirl of pink light around her.[KeyWait]

;�b�f�P�V(ev602)

[Face storage="f_c906"]
[Voice storage="c0151" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Nfu... A-Aah... I can't wait...[/v]�v[KeyWait]
[FaceOff]

[text]Rasetsu Douji, seemingly nearly at the limit of her patience, began lightly touching Yume's large chest as she ran her tongue along her skin, breathing heavily as she gazed longingly at her.[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0152" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Aah, Yume... Geez... I've always been jealous of your boobs...[/v]�v[KeyWait]
[FaceOff]

[text]Rasetsu began groping Yume's chest. Unlike hers, which was still on the reserved side even when transformed into an oni, Yume's had an overwhelming sense of presence.[KeyWait]

[Face storage="f_b035"]
[Voice storage="b0125" buf=2]
�yYume�z[CR]
�u[v]Nnh... Fweh... Haah... A-Aaaah...[/v]�v[KeyWait]
[FaceOff]

[text]A quiet moan escaped from the sleeping Yume's lips as Rasetsu massaged her voluptuous breasts all over.[KeyWait]
[text]Lifting her fingers out of their positions sunken inside Yume's soft mounds, she began stimulating her nipples, causing Yume's slightly chubby body to twitch a little.[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0153" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Yume.... You look so tasty... How wonderful...[/v]�v[KeyWait]
[FaceOff]

;�C�x���g�G�\��
[CgSet storage="EV602b"]
[UpDate]

[text]Rasetsu muttered to herself, seeming deeply moved by the sight before her. Then, she pressed her lips against Yume's and had a taste of her overflowing Renki.[KeyWait]

[text]Kiss, kiss, smack...[KeyWait]

[ExVoice1 storage="cex01"]
[Face storage="f_c906"]
[Voice storage="c0154" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Mmh... Afuh... Haaah...[/v]�v[KeyWait]
[FaceOff]

[text]The sound of spit lewdly smacking around echoed out from her tongue as it ran along Yume.[KeyWait]

[ExVoice1 storage="cex02"]
[Face storage="f_c906"]
[Voice storage="c0155" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Fwaah, your lips are so soft... and sweet... Mmh... Afuh... Hahm... Mmh...[/v]�v[KeyWait]
[FaceOff]

[text]Rasetsu pecked Yume's plump lips with their own to ascertain how they felt.[KeyWait]

[ExVoice1 storage="cex01"]
[Face storage="f_c906"]
[Voice storage="c0156" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Aaah, Yume's... spit...[/v]�v[KeyWait]
[FaceOff]

;c0157
;[ExVoice1 storage="cex01"]
;�u�͂���c�c�邿��A�ʁA����c�c��ӂ��A�񂿂�A����ρA����ނ����c�c�񂿂��A����ρA�����c�c���A�͂ށA�ނ��イ�c�c�����A����ρA����c�c������A����ҁA�񂭂��イ�c�c�v

[text]Squelch, smack, kiss, suck...[KeyWait]

[text]The girls' lips joined and separated over and over again, making a symphony of sweet, wet sounds.[KeyWait]
[text]Gradually, Rasetsu's kisses became deeper. She stuck her tongue into Yume's mouth and began swishing it around.[KeyWait]

[ExVoice1 storage="cex07"]
[Face storage="f_c906"]
[Voice storage="c0158" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Ah... Aah... How... fantastic... Mmmh... Fwah... Hah, aah...[/v]�v[KeyWait]
[FaceOff]

;c0159
;[ExVoice1 storage="cex02"]
;�u�񂿂��c�c����ρA����ҁc�c���c�c����ρA����c�c�ނ����A����ҁA�񂿂�A�͂ނ��ィ�c�c��c�c����ρA������A����c�c�͂ށc�c��A�����c�c����ρA�����A���c�c��ς��A�ӂ��A����A����ނӂ��c�c�v

[text]Their tongues coiled together, trails of spit forming and snapping between them.[KeyWait]

[text]Squelch, slurp, kiss... Squelch... Smack...[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1403" buf=3]
�yHaruka�z[CR]
�i[v]Aah, she... stuck her t-tongue in... Yume... and Kimino are... I mean, Rasetsu...[/v]�j[KeyWait]
[FaceOff]

[text]I inadvertently remembered how it'd felt when Rasetsu had stolen a kiss from me.[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1404" buf=3]
�yHaruka�z[CR]
�i[v]I... haven't even kissed Yume yet... But...[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1405" buf=3]
�yHaruka�z[CR]
�i[v]Rasetsu kissed me... She... stole my lips...[/v]�j[KeyWait]
[FaceOff]

[text]I remembered the dangerous yet comfortable feeling of our tongues wrapping around each other. As I watched the two of them kiss, I couldn't help but feel uncomfortable, like I wanted to join in.[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1406" buf=3]
�yHaruka�z[CR]
�i[v]N-No... It's not like I... want to join their kiss... or anything...[/v]�j[KeyWait]
[FaceOff]

[ExVoice1 storage="cex08"]
[Face storage="f_c906"]
[Voice storage="c0160" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Mmh... Afuh... Fwaah... Mmh... Fwah...[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_b035"]
[Voice storage="b0126" buf=2]
�yYume�z[CR]
�u[v]Afuh... Fwah... Mmh... Pwah...[/v]�v[KeyWait]
[FaceOff]

[text]At this point, Rasetsu had stopped whispering and was just indulging herself in Yume's lips.[KeyWait]
[text]The sensual symphony coming from between the kijin-transformed girl and Yume, who was still asleep as if she was under a spell and occasionally moaning... It was like the sounds created a little world around them.[KeyWait]

[ExVoice1Stop time=2000]

[Face storage="f_a039"]
[Voice storage="a1407" buf=3]
�yHaruka�z[CR]
�i[v]W-Wow... Two girls... kissing...![/v]�j[KeyWait]
[FaceOff]

[text]My heart pounded like crazy as I was entrapped by the fantastic sight of seeing my childhood friend and cousin sharing a kiss.[KeyWait]
[text]However, as if to ruin the breathtaking sight...[KeyWait]

[ExVoice1 storage="aex61"]
[Sound storage="a0000" buf=2]
[seopt buf=4 volume=0]
[fadese buf=4 time=2000 volume=100]

;�C�x���g�G�\��
[CgSet storage="EV601j"]
[UpDate]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]You got turned on from seein' two girls kiss, huh? Your butt suddenly got tighter! You're such a damn slut![/i]�v[KeyWait]
[FaceOff]

[text]The oni made surprised-sounding observations as he stirred up my ass with his finger.[KeyWait]

[ExVoice1 storage="aex61"]
[Face storage="f_a050"]
[Voice storage="a1408" buf=2]
�yHaruka�z[CR]
�u[v]Ah, uuuh... N-No, I... A, fwah![/v]�v[KeyWait]
[FaceOff]

[text]Female body or not, the gathering of male oni was still tormenting me - and in reality, I was a guy just like them.[KeyWait]

[Face storage="f_a017"]
[Voice storage="a1409" buf=3]
�yHaruka�z[CR]
�i[v]I'm moaning... because him stirring up my ass with his finger... feels good![/v]�j[KeyWait]
[FaceOff]

[ExVoice1 storage="aex41"]
[Face storage="f_a018"]
[Voice storage="a1410" buf=2]
�yHaruka�z[CR]
�u[v]Fuuuuuuuhnuuuh! Haaah! Ahyi![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]Your Renki looks like it's gonna be pretty tasty, too![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]And I figured the Oni-Cuttin' Princess would taste like shit, too... I'm gonna make you feel better and squeeze your Renki right out of you![/i]�v[KeyWait]
[FaceOff]

[text]The gaki were taking out their frustration of not being able to devour Oni-Pleasing Princess under Rasetsu's orders on me.[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601h"]
[UpDate]

[text]My pussy, which unlike my anus, had been left empty, suddenly got rushed by multiple tongues.[KeyWait]

[ExVoice1 storage="aex58"]
[Face storage="f_a018"]
[Voice storage="a1411" buf=2]
�yHaruka�z[CR]
�u[v]Hyoheh!? N-No, don't![/v]�v[KeyWait]
[FaceOff]

[text]The oni pulled apart my labia majora and spread my lips wide open.[KeyWait]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1412" buf=2]
�yHaruka�z[CR]
�u[v]Hyah! D-Don't spread iiit![/v]�v[KeyWait]
[FaceOff]

[Sound storage="se135" buf=0]

[text]Drip, drip, gloop...[KeyWait]

[text]Instantly, thick, sticky honey overflowed out of my entrance.[KeyWait]

[Face storage="f_r003"]
�yOni C�z[CR]
�u[i]Pussy juuuuuuuuuice![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r004"]
�yOni D�z[CR]
�u[i]Fuhaaah! It smells fuckin' great![/i]�v[KeyWait]
[FaceOff]

[Sound storage="se140" buf=1]

[text]Smack, sluuuuurp, lick, slurp, sluuuuurp![KeyWait]

[text]The gaki's tongues slurped up my dripping juices as they pushed themselves into my lewd slit.[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1413" buf=2]
�yHaruka�z[CR]
�u[v]Nhyiiiii! No, ah, haaaaaaaaaah! Auh, don't, no, not all at once! Fwaaaah... That's way, too much, hauuuuh![/v]�v[KeyWait]
[FaceOff]

[text]Their tongues entered my pussy in turn, digging their tongues into it to loosen it up.[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]Uheh, whoa! Your pussy's totally soaked! It's twitchin' like it [ita]really[endita] wants something inside it![/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex55"]
[Face storage="f_a017"]
[Voice storage="a1414" buf=2]
�yHaruka�z[CR]
�u[v]Ahyi!? No, that's... Fweaaaah![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1415" buf=3]
�yHaruka�z[CR]
�i[v]T-They're playing with... my pussy folds! Hyuh, aaaaah![/v]�j[KeyWait]
[FaceOff]

[text]They sucked on the membrane underneath my folds, making sparks dance in my eyes.[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1416" buf=3]
�yHaruka�z[CR]
�i[v]Kuuuh, they peel back... my clit's hood! I'm... too sensitive there! If they keep, rolling it around, with all their tongues...![/v]�j[KeyWait]
[FaceOff]

[ExVoice1 storage="aex35"]
[Face storage="f_a018"]
[Voice storage="a1417" buf=2]
�yHaruka�z[CR]
�u[v]Fwaaah, ah, haahyiiii! I'm, nhaaah, no, I'm gonna... Fuh, haaaaaaaaaah![/v]�v[KeyWait]
[FaceOff]

[text]Waves of pleasure strong enough to practically make my mind collapse continuously washed over me.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]This hole's all soaked, too. Uheh, your asshole's opened so wide I can see right inside it![/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1418" buf=2]
�yHaruka�z[CR]
�u[v]Nnnh! N-Nooo![/v]�v[KeyWait]
[FaceOff]

[text]I hurriedly tried to squeeze my anus shut in response to the oni's humiliating observation, but...[KeyWait]

[Sound storage="se172" buf=0]

[text]Squeeeeelch![KeyWait]

[text]My intestinal juices made a loud, bubbling sound.[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a018"]
[Voice storage="a1419" buf=2]
�yHaruka�z[CR]
�u[v]Hyiii! N-No... Hooowaaaah![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�yOni C�z[CR]
�u[i]Hey now, what was that? Don't tell me that weird sound just now was a fart?[/i]�v[KeyWait]
[FaceOff]

[text]The gaki all laughed mockingly at me.[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a017"]
[Voice storage="a1420" buf=2]
�yHaruka�z[CR]
�u[v]Hyuh! N-No...! I-It... was something else![/v]�v[KeyWait]
[FaceOff]

[text]My butt had just made a weird sound because they were playing with it...[KeyWait]
[text]But my mind had gotten all messy from the pleasure, so I couldn't explain it properly.[KeyWait]
[text]I felt anxious but relaxed as my firm butt wriggled and squirmed around, enticing the gaki's lust further.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Guess I'm gonna have to plug your ass up with my fingers, then![/i]�v[KeyWait]
[FaceOff]

[Sound storage="se160" buf=1]
;�C�x���g�G�\��
[CgSet storage="EV601k"]
[UpDate]

[text]Squelch, schlup! Schlup! Squelch! Squelch, squeeeelch![KeyWait]

[text]The gaki crammed two fingers into my exit hole at the same time.[KeyWait]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1421" buf=2]
�yHaruka�z[CR]
�u[v]Hyihn!? N-No, I...! Nnh, ah, no, hwah, uohooooowaaaah![/v]�v[KeyWait]
[FaceOff]

;a1422
;[ExVoice1 storage="aex59"]
;�u�͂ЂႠ�����I�@�񂬂��A�����A�Ђ����������I�@�͂����A����A���������I�@��͂��A�͂��A�͂�����������I�@�������A���ӂ��A���͂����A�͂����A�͂�����I�@�񂮂����A����A�ӂ��A��ق������������I�v

[text]My wrinkly hole was spread open so side it felt like it was going to tear as the oni's two incredibly thick fingers buried themselves inside.[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a017"]
[Voice storage="a1423" buf=2]
�yHaruka�z[CR]
�u[v]Afuh... Uuuuuh! That hole's... too tiiiiight! Kwah, your fingers are too thick! N-No, I'm gonna tear! Igyi! Nnnnnnh![/v]�v[KeyWait]
[FaceOff]

[text]The intense urge to expel something combined with the maddening pleasure, rushing over me and scorching my brain.[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601l"]
[UpDate]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1424" buf=2]
�yHaruka�z[CR]
�u[v]Hahyi, no... I-If you...! If you... do this, theeeeeeeeen...![/v]�v[KeyWait]
[FaceOff]

[Sound storage="se119" buf=0]

[text]Smack! Squirt! Squiiirt![KeyWait]

[text]My womb throbbed, squirming around as it sprayed my wetness everywhere like a water gun.[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]Having fingers in your ass is makin' you feel even better, ain't it, Oni-Cuttin' Princess!?[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�yOni C�z[CR]
�u[i]Whoa, that's nuts. She's totally overflowin' with juices everywhere![/i]�v[KeyWait]
[FaceOff]

[Sound storage="se141" buf=1]

[text]Smack, sluuuuuuuurp, slurp, sluuurp![KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]When you suck her juices up, she gets tighter over here![/i]�v[KeyWait]
[FaceOff]

[text]The gaki's tongues licked my pussy, waging war over who got to lap up my juices, and the two fingers continued roughly stirring up my wriggling rectum.[KeyWait]

[text]Squelch! Squelch! Squelch! Smack, squelch! Squelch![KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a018"]
[Voice storage="a1425" buf=2]
�yHaruka�z[CR]
�u[v]Hyigi! Ahyi! Nnh... Guuh! Fwoaah! Aah... M-My butt... and my pussy, oh, ah, hyiii![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Oh, you like that? Enjoy it as much as you like, then![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1426" buf=3]
�yHaruka�z[CR]
�i[v]Fwah... No, this is, different from, masturbating...! It's... A-A-Aaah, going deepeeer![/v]�j[KeyWait]
[FaceOff]

[text]Smack, smack, squelch, slurp, suck suck![KeyWait]

[text]The saliva from the gaki's tongues smacked around, making lewd noises.[KeyWait]
[text]The tongues that didn't get there quick enough scraped along my labia majora and the outer parts of my groin, making my hips rise from the ticklish feeling.[KeyWait]

;a1427
;[ExVoice1 storage="aex60"]
;�u�Ђ�ӂ����I�@��͂��I�@�����͂������I�@�ӂЂ��A�Ђ��������A�Ђ������񂣁I�@��Ђ�͂��A�͂��A������I�@�񂬂��A�Ђ��A�Ђ�������������I�@�͂ӂ�A�����A���Ђ����I�@�Ђ����I�@�Ђ�����������I�v

[ExVoice1 storage="aex60"]
[Face storage="f_a018"]
[Voice storage="a1428" buf=2]
�yHaruka�z[CR]
�u[v]Aah, this... is too much! It feels, so good... Girls'... girls' bodies... Uwaaaah, feel so good! This is so, so much better than masturbating![/v]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1429" buf=2]
�yHaruka�z[CR]
�u[v]Aah, it's coming... I feel it in my womb! From deep within... S-Something big... is rising up! I'm gonna cum harder, than when, I masturbated before... It's coming, it's coming![/v]�v[KeyWait]
[FaceOff]

[text]What would happen when that feeling got released?[KeyWait]
[text]My heart beat quickly with curiosity and unease as I twisted my sweat and spit-covered body around, and then...[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1430" buf=3]
�yHaruka�z[CR]
�i[v]Hyuh... Kimi... no...[/v]�j[KeyWait]
[FaceOff]

[text]My eyes met with Rasetsu Douji's.[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0161" buf=5]
�yRasetsu Douji�z[CR]
�u[v]Ufu.[Hearts][/v]�v[KeyWait]
[FaceOff]

[text]She set Yume down on the floor facing up then got on top of her and began running her tongue along her exposed breasts.[KeyWait]
[text]She flashed me a bewitching smile, almost as if she was trying to provoke me.[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a060"]
[Voice storage="a1431" buf=2]
�yHaruka�z[CR]
�u[v]Hwah...! G-Get away... from... Yume... Nhyuuuh!?[/v]�v[KeyWait]
[FaceOff]

[text]I focused my mind and glared at Rasetsu, but...[KeyWait]

[Sound storage="se158" buf=1]

[text]Squelch! Squelch! Squelch![KeyWait]

[text]A tongue roughly flicked my clitoris at the same time as the oni's two fingers pushed against the walls of my rectum.[KeyWait]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1432" buf=2]
�yHaruka�z[CR]
�u[v]Hyigi! H-Hawah!?[/v]�v[KeyWait]
[FaceOff]

[text]The ball of pleasure building up within my aching womb finally burst.[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1433" buf=3]
�yHaruka�z[CR]
�i[v]What...? No, a-aah! It's coming ! It's coming! H-Hyi, aaaaaah, noo, nooooo![/v]�j[KeyWait]
[FaceOff]

[text]A tsunami of pleasure hit me, spreading throughout my whole body in an instant, stretching my brain's capacity to its limit.[KeyWait]

[extasyF]

[ExVoice1 storage="aex63"]
[Face storage="f_a018"]
[Voice storage="a1434" buf=2]
�yHaruka�z[CR]
�u[v]I'm, nnnnh! Fwaaaaaah, I'm, cummiiing, haaaaaaaaaaah! Hoooooooowaaaaaaaaaah![/v]�v[KeyWait]
[FaceOff]

[ExtasyCount]
[Sound storage="se119" buf=0]

[text]Squirt! Squiiirt! Squirt, squirt, squirt![KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Uwooh, she came! The ladyboy came![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]Her ass is cummin', too![/i]�v[KeyWait]
[FaceOff]

[text]A torrent of my wetness shot out high from my crotch as I arched back, landing on the gaki's faces, getting them sticky and covering them with my feminine scent. And then...[KeyWait]

[ExVoice1 storage="aex05"]
[Face storage="f_a018"]
[Voice storage="a1435" buf=2]
�yHaruka�z[CR]
�u[v]Fuh, uuh... Ah, haah, nhah, no... Don't, ah... I-I'm gonna... Nnnnnnh, haaaah![/v]�v[KeyWait]
[FaceOff]

[Sound storage="se120" buf=1]

[text]Tinkle, tinkle, tinkle![KeyWait]

[Face storage="f_r003"]
�yOni C�z[CR]
�u[i]Uhyah, look, she wet herself![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1436" buf=3]
�yHaruka�z[CR]
�i[v]Hah... Uuuh, my, pee... Nhaah, i-it won't stop![/v]�j[KeyWait]
[FaceOff]

[text]It'd become harder to hold it in ever since turning into a girl, resulting in me wetting myself in an instant.[KeyWait]
[text]The ammonia-scented rain splattered all over the oni.[KeyWait]

[Face storage="f_r004"]
�yOni D�z[CR]
�u[i]The invincible Oni-Cuttin' Princess is wetting herself!? Guess she's pretty damn sloppy after all![/i]�v[KeyWait]
[FaceOff]

[text]The oni all laughed at my inability to hold my urine in.[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1437" buf=3]
�yHaruka�z[CR]
�i[v]I mean... If I had... a dick... I could have held... it in... Fwaaaah...[/v]�j[KeyWait]
[FaceOff]

[text]I stuck out my hips as if to show off my crotch and gazed at the oni's erect dicks longingly. My pussy twitched and throbbed, reminding me once again that I was a girl.[KeyWait]

[ExVoice1 storage="aex06"]
[Face storage="f_a018"]
[Voice storage="a1438" buf=2]
�yHaruka�z[CR]
�u[v]Kuh... Uuuh! Aah...! Nfwaah, afuh, I-I'm... still cumming... Nhaaaah! Kufuh... Uuuuuuh...[/v]�v[KeyWait]
[FaceOff]

[text]Unlike a guy's orgasm, the pleasure thrust upon me kept growing.=[KeyWait]
[text]My breasts shook as I moaned and convulsed pitifully.[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]I'm gonna give you somethin' way thicker than piss! C'mon, have a taste![/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex33"]
[Face storage="f_a017"]
[Voice storage="a1439" buf=2]
�yHaruka�z[CR]
�u[v]Ihyiii!?[/v]�v[KeyWait]
[FaceOff]

[ExtasyM]

[Sound storage="se142" buf=0]
;�C�x���g�G�\��
[CgSet storage="EV601m"]
[UpDate]

[text]Splurt, splurt! Splurt! Spluuuurt![KeyWait]

[text]Thick cum splattered onto me from the gaki's throbbing members as they stroked them.[KeyWait]

[ExtasyF]

[ExVoice1 storage="aex10"]
[Face storage="f_a018"]
[Voice storage="a1440" buf=2]
�yHaruka�z[CR]
�u[v]Hyuuuh, haah, aaaaaaaaaaah![/v]�v[KeyWait]
[FaceOff]

[text]My risen, feminine-scented crotch was covered by their sticky, white liquid. [KeyWait]

[Face storage="f_a017"]
[Voice storage="a1441" buf=3]
�yHaruka�z[CR]
�i[v]Hyuh... T-They... covered me with... t-this gross... stuff...[/v]�j[KeyWait]
[FaceOff]

[text]The gross fluid smelled like chalk and made me want to vomit.[KeyWait]
[text]I couldn't stand how disgusting the sticky, murky liquid felt as it trickled down my body. But, more importantly...[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1442" buf=3]
�yHaruka�z[CR]
�i[v]Kuh... Aah, I came! That really, wasn't good... Yume's Renki, is gonna, grow. And then... they're gonna, devour her...[/v]�j[KeyWait]
[FaceOff]

[text]My mind still wasn't coming off of its high. The ecstasy of cumming so hard made tears pour forth from my eyes.[KeyWait]

[Face storage="f_a017"]
[Voice storage="a1443" buf=2]
�yHaruka�z[CR]
�u[v]Kuh... Fuh, a-ah... Yu... me...[/v]�v[KeyWait]
[FaceOff]

[eval exp="sf.kaisouOpenFlag['12']=1"]


[text]I looked over at my cousin with my unfocused eyes.[KeyWait]

[ExVoice1Stop]
[Face storage="f_a039"]
[Voice storage="a1444" buf=2]
�yHaruka�z[CR]
�u[v]Fwah! A-Aah... Haaaaaaah...![/v]�v[KeyWait]
[FaceOff]

[HSceneEnd]

[eval exp="f.chaptertitle='Yume\'s Crisis'"]

;�w�i�F�R���r�j�q��
[BgSet storage="bg170"]
[ChrSet0 storage="b_b212l"]
[UpDate]

[text]Yume's entire body was wrapped in a thick layer of pink Renki, and she was floating in the air as she slept.[KeyWait]
[text]Next to her, the kijin Rasetsu Douji was looking up at her with her eyes glazed over.[KeyWait]

;�w�i�F�R���r�j�q��
[BgSet storage="bg091"]
[ChrSet0 storage="b_c901"]
[UpDate]

[Face storage="f_c911"]
[Voice storage="c0162" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Aah, how wonderful... To think you'd release this much powerful and pure Renki... Yume... You're the most wonderful Oni-Pleasing Princess I've ever met![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1445" buf=2]
�yHaruka�z[CR]
�u[v]Ki... mino... No, ki... kijin... Rasetsu... Douji...![/v]�v[KeyWait]
[FaceOff]

[text]Her gaze wasn't one of a girl looking at her best friend.[KeyWait]
[text]Rather, it was one of a man-eating oni who'd gotten their hands on rare prey.[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0163" buf=2]
�yRasetsu Douji�z[CR]
�u[v]I've got to thank you for this as well, Ryou. Yume only became this delicious thanks to you cumming like crazy in your female body.[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1446" buf=2]
�yHaruka�z[CR]
�u[v]Kuuh...![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_c902"]
[Voice storage="c0164" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Gaki. Continue pleasuring her and devour her, but make it painless.[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yGaki�z[CR]
�u[i]Guufufufufuuuuh![/i]�v[KeyWait]
[FaceOff]

[text]With those words, the gaki stared me down, lust and hunger both visible in their eyes.[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0165" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Now, then... Yume...[/v]�v[KeyWait]
[FaceOff]

[ChrSet1 storage="b_b121" pos=c]
[UpDate]

[text]A merciless twinkle glimmered in the kijin's eyes blood-red eyes as she took the floating Yume into her arms.[KeyWait]
[text]And then, from her crotch...[KeyWait]

[Face storage="f_a042"]
[Voice storage="a1447" buf=2]
�yHaruka�z[CR]
�u[v]Huh!? A-Aaaaah![/v]�v[KeyWait]
[FaceOff]

[ChrSet0 storage="b_c911"]
[ChrSet2 storage="b_c999" pos=c]
[UpDate]

[text]A thick, swollen, arched member with a big head rose up from between Rasetsu's legs.[KeyWait]

[Face storage="f_a042"]
[Voice storage="a1448" buf=2]
�yHaruka�z[CR]
�u[v]What? K-Kimino... Why do you...!?[/v]�v[KeyWait]
[FaceOff]

[text]Kimino was certainly a tomboy, but there was no mistaking that she was a girl.[KeyWait]
[text]I knew that the kijin in front of me wasn't my childhood friend - at least not entirely - but I was still taken aback.[KeyWait]

[Face storage="f_c902"]
[Voice storage="c0166" buf=2]
�yRasetsu Douji�z[CR]
�u[v]I'm the Lawless Ruler Rasetsu - a kijin. I exist as both a woman and man.[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a059"]
[Voice storage="a1449" buf=2]
�yHaruka�z[CR]
�u[v]E-Even though you're a girl... You've got... a g-guy's...[/v]�v[KeyWait]
[FaceOff]

[text]I was a guy who had been given the body of a girl.[KeyWait]
[text]Rasetsu Douji, on the other hand, despite having reincarnated into a girl's body, was an androgynous kijin.[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0167" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Sorry. I know you loved Yume, Ryou, but I'm going to fuck her with this.[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a042"]
[Voice storage="a1450" buf=2]
�yHaruka�z[CR]
�u[v]What!? No... way... What are you saying...?[/v]�v[KeyWait]
[FaceOff]

[text]She was certainly capable. Though she spoked like a girl and had the physique of one, the kijin had a fantastic penis.[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0168" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Devouring the intersection of yin and yang that is the Oni-Pleasing Princess is the ultimate pleasure. It's also a ritual that'll elevate me to being a true kijin. ��[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a042"]
[Voice storage="a1451" buf=2]
�yHaruka�z[CR]
�u[v]Stop... Stop it... She was your friend, Kimino! You... You can't violate her with that![/v]�v[KeyWait]
[FaceOff]

[text]I desperately tried to call out to Kimino's consciousness, which lay sleeping within her - or maybe him? But...[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0169" buf=2]
�yRasetsu Douji�z[CR]
�u[v]'Kimino' always loved you, yet you never noticed and looked at Yume and Yume only...[/v]�v[KeyWait]
[FaceOff]

[text]All that I got back was a cold yet somehow lonely smile.[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0170" buf=2]
�yRasetsu Douji�z[CR]
�u[v]So, I'm going to destroy everything for you. ��[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a043"]
[Voice storage="a1452" buf=2]
�yHaruka�z[CR]
�u[v]Kimi... no...![/v]�v[KeyWait]
[FaceOff]

[HSceneStart]

;EV602����
;�C�x���g�G�\��
[CgSet storage="EV602c"]
[UpDate]

;[text]���ɕ����Ԍ����̐g�̂�����񂹂��B[KeyWait]
[text]Rasetsu set Yume down on her lap.[KeyWait]
[text]She pressed her lips against hers, her fangs peeking out from between them.[KeyWait]
[text]The meat spear sticking out from between the kijin's fit legs pressed itself against Yume's crotch.[KeyWait]

[Face storage="f_a045"]
[Voice storage="a1453" buf=2]
�yHaruka�z[CR]
�u[v]S-Stop it! A-Aaaaah...[/v]�v[KeyWait]
[FaceOff]

[text]It didn't matter if she was my trusted childhood friend - I couldn't allow her to defile Yume.[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0171" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Nkh... Afuh, haah... Yume, your lips are so cute... Aah, your Renki looks so tasty...[/v]�v[KeyWait]
[FaceOff]

[text]Rasetsu sucked on Yume's soft lips as the sleeping girl moaned quietly, falling into a trance as she drooled on her.[KeyWait]
[text]She began once again groping Yume's breasts, which were still spilling out of her blouse. She had them all to herself.[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0172" buf=2]
�yRasetsu Douji�z[CR]
�u[v]Mmh... Haah, this feels, so good... I'm sure, it'll feel, even better, when I put this, inside you... Hah, ahn, ahaah...[/v]�v[KeyWait]
[FaceOff]

[text]She rubbed her cockhead, which was glistening with precum, on Yume's crotch through her panties.[KeyWait]

[text]Squelch, squelch, smack, squelch, squelch...[KeyWait]

[Face storage="f_b035"]
[Voice storage="b0127" buf=2]
�yYume�z[CR]
�u[v]Mffh... Fwah... Hah... Aah... Mmh...[/v]�v[KeyWait]
[FaceOff]

[text]After a quiet symphony of wet kissing sounds, my sleeping cousin began breathing rougher.[KeyWait]
[text]A red flush spread across her face and she wrinkled her forehead as if she was feeling good, her eyes remaining closed.[KeyWait]

[Face storage="f_a069"]
[Voice storage="a1454" buf=3]
�yHaruka�z[CR]
�i[v]I lost my dick! I've just got girl parts down there now![/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a066"]
[Voice storage="a1455" buf=3]
�yHaruka�z[CR]
�i[v]I... I absolutely can't allow her to defile Yume with that penis![/v]�j[KeyWait]
[FaceOff]

[text]My chest quivered with a maddening jealous and anger.[KeyWait]

[HSceneEnd]

[eval exp="f.chaptertitle='Rising Power'"]

;�w�i�F�R���r�j�q��
[BgSet storage="bg091"]
[ChrSet0 storage="b_r301"]
[UpDate]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]Gufufu, let's have some fun over here too, Oni-Cuttin' Princess![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]We're gonna devour you while you're still cummin'. Give us some top-grade Renki![/i]�v[KeyWait]
[FaceOff]

[text]The gaki grabbed me in order to greedily devour my body, which was still going wild with a torrent of feminine pleasure.[KeyWait]

[BgmFadeOut time=1000]

[Face storage="f_a043"]
[Voice storage="a1456" buf=2]
�yHaruka�z[CR]
�u[v]Don't get... big heads, you pathetic gakiiii![/v]�v[KeyWait]
[FaceOff]

[Sound storage="se829" buf=0]
;�a�f�l�F�t�]
[playbgm storage="bgm008"]

[text]My heart - as well as my womb - throbbed hard.[KeyWait]
[text]I instantly felt my strength return, filling my body with a powerful Renki.[KeyWait]

[Face storage="f_a058"]
[Voice storage="a1457" buf=2]
�yHaruka�z[CR]
�u[v]Get off of meeeee![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�yOni C�z[CR]
�u[i]Gwoooooh![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r004"]
�yOni D�z[CR]
�u[i]Gwaaaah![/i]�v[KeyWait]
[FaceOff]

[Sound storage="se213" buf=0]
[ChrReset0]
[UpDate]

[text]I tore the gaki's hands off of me, easily knocking their disgusting bodies across the room.[KeyWait]

[ChrSet0 storage="b_r301"]
[UpDate]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]You biiiitch![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]You got your Renki back even though you were so close to death!? Fine, we'll make sure to devour it all this time![/i]�v[KeyWait]
[FaceOff]

[text]Despite my sudden counterattack, the gaki charged back at me.[KeyWait]

[Face storage="f_a058"]
[Voice storage="a1458" buf=2]
�yHaruka�z[CR]
�u[v]Haaaah![/v]�v[KeyWait]
[FaceOff]

[Sound storage="se228" buf=0]
[ChrReset0]
[UpDate]

[Face storage="f_r001"]
�yOni E�z[CR]
�u[i]Gyauh![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni F�z[CR]
�u[i]Gyihii![/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�yOni G�z[CR]
�u[i]Hyigyaah![/i]�v[KeyWait]
[FaceOff]

[text]I swung my right hand horizontally.[KeyWait]
[text]Instantly, the disgusting gaki that had charged me were sliced apart into chunks of meat.[KeyWait]

[Face storage="f_a074"]
[Voice storage="a1459" buf=2]
�yHaruka�z[CR]
�u[v]I-It's back! My power... My power is back![/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a057"]
[Voice storage="a1460" buf=2]
�yHaruka�z[CR]
�i[v]When I thought about how Yume was in danger... and how I had to protect her... My mind... went blank... And then, a tremendous power... came from deep within my body![/v]�j[KeyWait]
[FaceOff]

[text]The power of hope filled my body despite my desperate situation.[KeyWait]

;���y����3�z�i�S�a��̑����A�o�邩�A�o�Ȃ����H�j

;�`�U��i��B�y6-2 �o�Ȃ����[�g�ցz[CR]

;�a�W��������B�y6-3 �o�郋�[�g�ցz[CR]

[SelectStart option=2]
[SelectOption target=*�I�����P�� num=1 text="Release your power"]
[SelectOption target=*�I�����P�� num=2 text="Focus your power"]
[SelectEnd]

*�I�����P��
[OptionTarget num=1]
[jump storage="6-02.ks"]

*�I�����P��
[OptionTarget num=2]
[jump storage="6-03.ks"]


