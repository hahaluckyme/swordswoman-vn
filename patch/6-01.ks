
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

[text]��u�ň��̎��Ԃ��]�����悬��B[KeyWait]

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
�u[v]Reincarnation...? Kimino... A kijin... I-I... made you awakene...!?[/v]�v[KeyWait]
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

[text]Rasetsu mutered something so quiet I could hear it before kissing me passionately out of nowhere.[KeyWait]

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

[text]Her saliva-covered tongue licked all over the inside of my mouth, then entangled itself around my own tongue. It felt exhilarating, yet comforting, making me space out.[KeyWait]

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
[text]She licked it up with her red tongue before she started speaking with an ecstatic expression on  her face.[KeyWait]

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
�u[v]And when the Oni-Cutting Princess herself was in danger of being raped, the Oni-Pleasing Princess would exude Renki from her body so we'd let our guards down. The Oni-Pleasing Princess's Renki is like a  the ultimate nectar for us oni.[/v]�v[KeyWait]
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
�u[v]When I used  that water oni to mess with you in the pool, Haruka, Yume's Renki swelled up. That's what made me realize you two were just the same as them. But... Thanks to that, it became a little hard to stop my body from throbbing. ��[/v]�v[KeyWait]
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
�y�yOni C�z�z[CR]
�u[i]I-I can't control myself anymooooore![/i]�v[KeyWait]
[FaceOff]

[text]The oni surrounding Yume that Rasetsu referred to as 'gaki' were practically going mad with excitement.[KeyWait]
[text]They clearly wanted to rape and devour the Oni-Pleasing Princess right away, but the kijin calling herself Rasetsu Douji was apparently quite the powerful leader.[KeyWait]
[text]Precum continuusly dripped out of their swollen cocks like water guns as they frustratingly groped Yume's bare breasts and butt.[KeyWait]

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

[text]�ǂ�قǗ~�]�ɖ҂苶���Ă��Ă���̖��߂ɂ͐�Ε��]���������Ă���炵���B[KeyWait]
[text]���_�����~�߂ǂȂ���ꂳ���A�����ɔM��Ȏ����𒍂��Ȃ�����A�S�����͂���ȏ��o�����邱�ƂȂ��������芪�������ɗ��߂�B[KeyWait]
[text]���̒����Ȃ����ׂɁA�����̓j���}���ƈ��Y�߂����΂݂𕂂��ׂ��B[KeyWait]

[Face storage="f_a059"]
[Voice storage="a1292" buf=2]
�yHaruka�z[CR]
�i[v]�\�\�I�I�@���A���܂́c�c�΂����B����T�������肾�c�c[/v]�j[KeyWait]
[FaceOff]

[text]�������낭�Ȃ��Ƃ��l���Ă��Ȃ����́A�Ί�ɂ悭���Ă���B[KeyWait]
[text]���̒���͂����A�V�����ɂȂ�Ȃ��ڂɂ��킳��Ă����B[KeyWait]
[text]����ȗ\�����c�ꂠ����B[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0135" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�ł��A���a�������ςȂ����Ă����̂����z�����炟�B�����̑���ɁA�͂邩���B�S�a�P�����O�����̍D���ɂ��Ă������[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�y��S�����z[CR]
�u[i]���������������������\�\�\�\�\�\�\�\�\�\�b�I�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a058"]
[Voice storage="a1293" buf=2]
�yHaruka�z[CR]
�u[v]�Ȃ��I�H�@�{�N���A���āc�c���A������Ɂc�c�Ȃɂ�������C���c�c�H[/v]�v[KeyWait]
[FaceOff]

[ChrReset0]
[UpDate]

[ChrSet0 storage="b_c901l"]
[UpDate]

[Face storage="f_c902"]
[Voice storage="c0136" buf=2]
�yRasetsu Douji�z[CR]
�u[v]���ӂӁA�ȁ`��ł���B�ł��A�ق�Ƃ�������c�c�ɂ̂��Ƃ͂����ƑO����D������������A�킽�������肵�����Ȃ��Ďv���Ă��񂾂��ǂˁ`[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a012"]
[Voice storage="a1294" buf=2]
�yHaruka�z[CR]
�u[v]�c�c�c�c�c�c�c�c�c�c�c�c�c�c�͂����I�H[/v]�v[KeyWait]
[FaceOff]

[text]���˂Ȍ��t�ɖʐH������B���x�͂ǂ�Ȃ��炩�������Ǝ���X����B[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0137" buf=2]
�yRasetsu Douji�z[CR]
�u[v]���`�`���A���̊�A�S���M���ĂȂ��ł���H�@�܂��A�ł��A�����v����̂��d���Ȃ������B�g�������h������A�Ƃꂭ�����ėɂ̂��ƃC�W���Ă΂����肾�������c�c[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_c901"]
[Voice storage="c0138" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�ł��A�����͉��ƂȂ��ӎ����Ȃ������H�@�w����Ȃɗ���ł���Ȃ�āA�����{�N�ɋC������񂶂�Ȃ����H�x����[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a059"]
[Voice storage="a1295" buf=2]
�yHaruka�z[CR]
�u[v]���A���������΁c�c�I�I�@�\�\�\����A�S�R�Ȃ��c�c�b�I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_c909"]
[Voice storage="c0139" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�����c�c�c�c[/v]�v[KeyWait]
[FaceOff]

[text]�K�N�[���ƁA����c�c�A���◅�����q���{�C�ŃK�b�N�������B[KeyWait]
[text]�ł��A�L�����@��Ԃ��Ă݂�����ǁA�ޏ����D�ӂ���킹��悤�Ȍ����͂����ς�v��������Ȃ������񂾂���d���Ȃ��B[KeyWait]

[Face storage="f_a059"]
[Voice storage="a1296" buf=2]
�yHaruka�z[CR]
�i[v]����ǂ��납�A����T�Ɍ����Ă���񂶂�Ȃ������āA���x���{�C�ŔY�񂾂��Ƃ����������炢�����c�c[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_c909"]
[Voice storage="c0140" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�������A���̂��I�I�@�ق�Ɠ݊��Ȃ񂾂�����I�@����c�c�A���`��ȓ݂��j�ɂ���Ȃ����ŋC������`���悤�Ƃ��Ă��g�������h���Ԕ����Ȃ��������������c�c�B���`��[/v]�v[KeyWait]
[FaceOff]

[text]�܂�Ŋ���T���̂��̗̂l�q�ł��Ȃ����B�v�킸�Ԃ߂̌��t�������悤���Ǝv���Ă��܂������̎��A[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0141" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�܂��A������ǂ��ł�������c�c�B���܂��q��Ȃ�[eruby str="�F��" text="�ق������"]�ȘB�C���Ɍ��܂ō��߂�ꂽ�w�S�ԕP�x����炤�̂��悾����[/v]�v[KeyWait]
[FaceOff]

[text]��u�ɂ��Ĕޏ��̌��t�������\����A�c���ȋS�_�̂��̂ւƈ�ς����B[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0142" buf=2]
�yRasetsu Douji�z[CR]
�u[v]��������΂킽���͈�ɖ߂��B�S�a��̑����ɐ؂藣���ꂽ�����Ɗ���T�̈ӎ�����Ɂc�c�B���ēs�𖂓s�ւƑ��������S�_�A[eruby str="�����ꉤ" text="�˂��肿����"]�b�A�����ɂ��I�I[/v]�v[KeyWait]
[FaceOff]

[ChrReset0]
[UpDate]

[text]�{�N�ɕ����킳���Ă����������q�̒��g���A�ӂ��ƒ��ɕ����オ�����B[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1297" buf=2]
�yHaruka�z[CR]
�u[v]�҂āc�c��[/v]�v[KeyWait]
[FaceOff]

[text]�Q�Ăă{�N����ыN���邯��ǁ\�\�\�A[KeyWait]

[ChrSet0 storage="b_r301"]
[UpDate]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�Ђ���͂��A���������o�����I�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]�\�ɖ������S�a�P�T�}���A�O�b�`���O�`���ɔƂ��Ă��A�����Ă�邺�C�B�b�I[/i]�v[KeyWait]
[FaceOff]

[text]��ĂɏP���������Ă����S�ǂ��B[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1298" buf=2]
�yHaruka�z[CR]
�u[v]���̂��I�@�ǂ����I�I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�y�yOni C�z�z[CR]
�u[i]�����������������I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a030"]
[Voice storage="a1299" buf=2]
�yHaruka�z[CR]
�u[v]������I�@���������I�H[/v]�v[KeyWait]
[FaceOff]

[text]�R�U�炻���Ƃ����B�Ȃ̂Ƀ{�N�͂�������ƁA�\�t�@�̏�ɍĂщ����|����Ă��܂����B[KeyWait]

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
�u[i][eruby str="��" text="��"]�����I�@���̋S�a�P�A���ゾ���I�I�@�y���ŔƂ��邺�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a030"]
[Voice storage="a1300" buf=2]
�yHaruka�z[CR]
�i[v]�����c�c���I�@�͂�����Ȃ����I�I�@�Ȃ�ł�����I�H[/v]�j[KeyWait]
[FaceOff]

[text]�l�Ԃ̕s�ǂ̎p�����Ă���������A��S�ǂ����啝�ɋ����Ȃ����킯�ł��Ȃ��̂ɁB[KeyWait]
[text]����ł��͂ł������ł��G��Ȃ��Ȃ��Ă���B[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0143" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�L�X�A���������������A��[hearts]�@�B�C�������Ղ�Ƃ����������������[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a011"]
[Voice storage="a1301" buf=2]
�yHaruka�z[CR]
�u[v]���A���̂Ƃ��ɂ��I�H�@���c�c���I[/v]�v[KeyWait]
[FaceOff]

[text]�S�g�������ĒE�͂���悤�Ȋ��o�́A���Â��̐S�n�悳�����������ł͂Ȃ������B[KeyWait]

[Face storage="f_a011"]
[Voice storage="a1302" buf=2]
�yHaruka�z[CR]
�i[v]�����������Ȃ��ŁA�ۋC�Ƀh�L�h�L���Ă����̂��A�{�N�́c�c[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a011"]
[Voice storage="a1303" buf=2]
�yHaruka�z[CR]
�u[v]���������I�@�������A�����c�c���Ă΂��I�I�@���������I[/v]�v[KeyWait]
[FaceOff]

[text]��S�ǂ��ɑg�ݕ������A�������Ă��r�N�Ƃ����Ȃ��B[KeyWait]
[text]���̊Ԃɗ������q�́A�C���������܂܈ߕ��𔍂����ꂽ������G�ɕ����āA��߂Ȕ��̏�ɍ������낵���B[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0144" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�����A�S�a�P����B���Ȃ��̂��̐g���ȂāA�S�ԕP�ɍŏ�̘B�C�������炵�Ă��傤����[/v]�v[KeyWait]
[FaceOff]

[text]�������\��̂܂ܖڂ���錋���̂ۂ�����肵���ق��؂ɖj���肵�Ȃ���A�����������I�Ȋ፷���Ń{�N������B��Ȃ߂���������������́A�s���傪�`���Ă����B[KeyWait]

[Face storage="f_a030"]
[Voice storage="a1304" buf=2]
�yHaruka�z[CR]
�u[v]�����b�I�@���A�����c�c�B���������I�I�@�����c�c[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]���������A����ŉ����Ă���肩�H[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]�Ȃ񂾂�A������ӂ̏��Ƒ債�ė́A�ς��˂���[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�y�yOni C�z�z[CR]
�u[i]�������͂����Ԃ�Ǝ�r�Ȑ^�����Ă��ꂽ����˂����B�����Ղ�Ɨ炳���Ă��炤��[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a045"]
[Voice storage="a1305" buf=2]
�yHaruka�z[CR]
�i[v]�͂��A�S�R�c�c�o�Ȃ����I�@�������A�₾���A����Ȃ̂��I�I[/v]�j[KeyWait]
[FaceOff]

[text]�g�̂����������Ă����B�C�𗅙��ɋz���āA���̖{���̗͂����o���Ȃ��B[KeyWait]
[text]��͂ȏ��̎q�̗́B[KeyWait]
[text]����Ȃ�܂��j�ł��镪�A�ɂ̎p�̕����͂������B[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]�U�X�\��Ă��ꂽ�S�a�P�l���A���܂ɂ��������܂����������I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r004"]
�y�S�c�z[CR]
�u[i]���̃c�����@���ׂ��Ă��ꂽ�А��̗ǂ��͂ǂ��������܂����񂾂����H[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�����ւ��ւ��A�������̑����Ƃ����������B���������G�ꂽ�I�}���R�A���������Ղ��r�߂Ă�邺���I[/i]�v[KeyWait]
[FaceOff]

[text]���������Ȃ���A�S�̒��̈�C���A�����Ȃ�ҊԂɊ�𖄂߂Ă����B[KeyWait]

;�b�f�P�U����(ev601b)
;�C�x���g�G�\��
[CgSet storage="EV601b"]
[UpDate]

[Face storage="f_a048"]
[Voice storage="a1306" buf=2]
�yHaruka�z[CR]
�u[v]���Ⴄ���I�@�������A���A�����������c�c�b�I�I[/v]�v[KeyWait]
[FaceOff]

[text]�����̎q���̂��̂ȍb�����ߖ𒣂�グ�Ă��܂����B[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1307" buf=3]
�yHaruka�z[CR]
�i[v]���A���������c�c�B�������A�����E�������c�c�p���c�����ł��A�����Ƃ��΂悩�����c�c�I[/v]�j[KeyWait]
[FaceOff]

[text]����Ȃ��Ƃ����Ă��A�܂���������Ɣ�������Ă��܂������낤�B[KeyWait]

[Face storage="f_a048"]
[Voice storage="a1308" buf=3]
�yHaruka�z[CR]
�i[v]�����A���A�����c�c�B���A���A�������Ă�B�������c�c�ɁB���g�����c�c�B�C�F�����b[/v]�j[KeyWait]
[FaceOff]

[text]���񂾔S�������ڎh������銴�o�́A���x������Ă����󂾁B[KeyWait]
[text]���̌ҊԂ͋������������Ń��������o�ݒ]��ŁA����ȉs�q�ȕ��������h���ɂȂ��Ă��܂��B[KeyWait]

[Sound storage="se106" buf=0]

[text]�ʂ���A����c�c�A��������B[KeyWait]

[ExVoice1 storage="aex12"]
[Face storage="f_a048"]
[Voice storage="a1309" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ����������I�@�ӂ����A�ق������������\�\�\�\�\�\�b�I[/v]�v[KeyWait]
[FaceOff]

[text]����ȕ����̓��ԕق���S�̐オ����J���āA�s�q�ȔS�����r�ߐ����Ă����B[KeyWait]

[ExVoice1 storage="aex41"]
[Face storage="f_a048"]
[Voice storage="a1310" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ����I�I�@���b�A�C�������I�@�ӂ������������������\�\�\�\�b�I�I[/v]�v[KeyWait]
[FaceOff]

[text]�������M���h�������蔲���Ĕ]�����ܔM�ɐ��߂��B[KeyWait]
[text]�Ô��Ƃ����܂����̓��荬���銴�o�ɁA�w�؂̎Y�т��t�����A��̘r�𒹔��������B[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1311" buf=3]
�yHaruka�z[CR]
�i[v]�{�N�A�́A�r�߁c�c���A�����c�c���܁A�񂱁c�c�j�A�ɂ��c�c���A�����A���c�c[/v]�j[KeyWait]
[FaceOff]

[text]���J�ƌ������ɋ�������􂯂������B[KeyWait]
[text]�Ȃ̂ɁA�Y�܂����h��������ɋ��߂�悤�ɗ��r������ɊJ�����Ă��܂��B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�܂��܂��`�����Ă��������B�ǂꂾ�������Ȃ񂾂�A���̃N�\�Ă��I[/i]�v[KeyWait]
[FaceOff]

[Sound storage="se179" buf=0]

[text]������A�����ィ�`�`�A����邿�����B[KeyWait]

[ExVoice1 storage="aex52"]
[Face storage="f_a048"]
[Voice storage="a1312" buf=2]
�yHaruka�z[CR]
�u[v]�ӂ����I�I�@���b�I�@�ӂ����������`�`�`�`���I�I[/v]�v[KeyWait]
[FaceOff]

[text]���̔S�����r�ߏグ�Ȃ���A�S���ɖ����������Ղ�̖���T����ƁA�Â��b������ꂽ�B[KeyWait]

[Face storage="f_a048"]
[Voice storage="a1313" buf=3]
�yHaruka�z[CR]
�i[v]���c�c���A�q�{�c�c�A���Łc�c�\�ꂿ����Ă�b�B���t���c�c�A����ɁA���ꂿ�Ⴄ�b�B��ꂿ�Ⴄ�����I�I�@�������A�ӂ������A�񂟂������I[/v]�j[KeyWait]
[FaceOff]

[text]�M���ӂ₯�����r�A������Ԃ��āA��悪�S�����r�X�����~������B[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a048"]
[Voice storage="a1314" buf=2]
�yHaruka�z[CR]
�u[v]�ӂ����I�I�@��A�₠���I�@�͂����������\�\�b�b�I�I�@��ӂ����I[/v]�v[KeyWait]
[FaceOff]

[text]�r�߂�ꂽ��������A�ҊԂ��n�����ꂻ���ȊÔ����~�߂ǂȂ����ݏo��B[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]�҂����r�߂���̂��D���ł��܂�˂����ėl�q����[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex21"]
[Face storage="f_a050"]
[Voice storage="a1315" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ��������A���A�m��ɂႢ���B�\�\�\�Ђ킟�������I[/v]�v[KeyWait]
[FaceOff]

[text]���ɂȂ��ē����󂢂̂����瓖�R�����ǁA����Ȃ��Ƃ����̂͏��߂Ă��B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i][eruby str="����" text="����"]�����A�����c�c�B����Ȉ����̂����ɁA�g������ł˂��Y��ȃ}���R���Ă₪��I[/i]�v[KeyWait]
[FaceOff]

[Sound storage="se141" buf=0]

[text]������A�����ィ�`�`�A������[KeyWait]

[ExVoice1 storage="aex52"]
[Face storage="f_a048"]
[Voice storage="a1316" buf=2]
�yHaruka�z[CR]
�u[v]���Ђ��A�񂠂��A�́c�c�����b�I�@����A���₠�����I�I�@��߂��A��A�����������b�I[/v]�v[KeyWait]
[FaceOff]

;a1317
;[ExVoice1 storage="aex52"]
;�u�͂Ђ႟�c�c�����A�����A�ӂ���c�c��A�ӂ��A�͂�c�c�Ђ����I�@�Ђ����A���A��񂣁c�c��Ђ���A�́A��������I�@��c�c��Ђ��A�����A�Ђ����c�c��͂��A�͂���A�����c�c��͂����I�v

[text]�z����ƈӎ��܂ł������ނ��A�g�̂��z�������܂�Ȃ��Ȃ�B[KeyWait]
[text]�S�g���K�N�K�N�k���钆�A�������܁A�r�N���r�N���ƒ��ˏオ�����B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]���������A�����܂��肾�ȁB���̒��x�ł���Ȃ񂶂�A�����Ƃ��M��ꂽ��ǂ��Ȃ����܂��񂾁H[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex41"]
[Face storage="f_a050"]
[Voice storage="a1318" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ��c�c�b�A���c�c���āB�����Ă��`�`�`�I�I[/v]�v[KeyWait]
[FaceOff]

[text]�����ł������Ǝv������ǎ~�܂�Ȃ��B[KeyWait]
[text]����ȃ{�N��}��Ȃ���A���S�͍�߂Čł��������ŁA���ɂ���܂����N���g���X��]�����Ă����B[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a018"]
[Voice storage="a1319" buf=2]
�yHaruka�z[CR]
�u[v]��ق������I�@�Ђ��������I�I�@�����Ӂ`�`�`�`�`�`�`�b�A�������͂������������I[/v]�v[KeyWait]
[FaceOff]

[text]�����̎w�ŐG��h���Ȃǔ�ׂ��̂ɂȂ�Ȃ��B[KeyWait]

;a1320
;[ExVoice1 storage="aex53"]
;�u�񂠂͂����I�@�ЂႣ���A����A���������I�@��Ђ���A�͂ӂ��A�����A��Ђ����I�@�Ђ�͂��A�͂���A�񂭂��A��͂��������I�@�͂Ђ��A�Ђ���A�Ђ����A�ӂ��A�ӂ�����I�@�ӂ����I�@�͂��I�@����������I�I�v

[Face storage="f_a018"]
[Voice storage="a1321" buf=3]
�yHaruka�z[CR]
�i[v]�����܂��c�c��ԃb�A�����������c�c�A�ρc�c���A�Ȃ�c�c���A�ӂ����������I�I[/v]�j[KeyWait]
[FaceOff]

[text]�G���ɕq������]������A���܂Ŕ�����Ă��܂��B[KeyWait]
[text]���ꂾ���ł������l�܂��āA�Â��g����}�����Ȃ��Ȃ�̂ɁA���l�ɐG�����\�z�̂��Ȃ������������킹��B[KeyWait]

[ExVoice1 storage="aex22"]
[Face storage="f_a017"]
[Voice storage="a1322" buf=2]
�yHaruka�z[CR]
�u[v]�ւ͂��I�H�@��A�₟�����I�@�Ȃɂ��A���A�����A�͂��������I�I[/v]�v[KeyWait]
[FaceOff]

[Sound storage="se119" buf=1]
;�C�x���g�G�\��
[CgSet storage="EV601c"]
[UpDate]

[text]�Ղ��ザ�イ���I�@�тザ����I�I�@�Ԃ��Ⴖ�႟�\�\�b�I[KeyWait]

[ExVoice1 storage="aex41"]
[Face storage="f_a018"]
[Voice storage="a1323" buf=2]
�yHaruka�z[CR]
�u[v]��ӂ����A�͂Ђ���I�@�����A�͂��A������I�@�����A�����A�������������`�`�`�`�`���I�I[/v]�v[KeyWait]
[FaceOff]

[text]���܂炸�q�{�����k���A�Ղ�����I�@���S������M�`����юU�����B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�����C�b���܂����̂��H�@�����Ԃ�ƂԂ��܂��₪�����Ȃ�[/i]�v[KeyWait]
[FaceOff]

[text]��������Ȃ����ǁA���ۂ��C�b�Ă����������Ȃ��B[KeyWait]
[text]�}���Ɏ��k�����S������e���o�����t�ŁA���ڂ܂ł����傮����ɔG�炵�Ĕ��ڂ𔍂��B[KeyWait]

[Face storage="f_a017"]
[Voice storage="a1324" buf=3]
�yHaruka�z[CR]
�i[v]���c�c���c�c�����āA����ȂƂ��A�ςɂ��ꂽ��A�N�����āc�c�b[/v]�j[KeyWait]
[FaceOff]

[text]�q��������B[KeyWait]
[text]�j�̃y�j�X�����ċC������������ǁA����Ȃɗ����𖳂����قǂ���Ȃ��B[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0145" buf=5]
�yRasetsu Douji�z[CR]
�u[v]�ɂ���������̑O�܂Œj�̎q�������̂ɁA�������菗�̎q�̐g�̂ɓ���񂶂����[/v]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex52"]
[Face storage="f_a060"]
[Voice storage="a1325" buf=2]
�yHaruka�z[CR]
�u[v]���c�c�����c�c�B���A�Ⴄ�c�c�B��ЂႣ�I[/v]�v[KeyWait]
[FaceOff]

[text]���̐g�̂̎��ɒj�̖��ŌĂ΂��ƒp�����������{������B[KeyWait]
[text]����ǂ����A�̃������Őオ[eruby str="�|" text="�Ђ邪��"]��ƁA�Â��Z�т��b����R�炵�Ă��܂��B[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0146" buf=5]
�yRasetsu Douji�z[CR]
�u[v]�ł����̂������łق�A�����̘B�C����������Ȃɖc�ꂠ�����Ă�B�����A�����������I�@�䖝����̂���ς����[/v]�v[KeyWait]
[FaceOff]

;�C�x���g�G�\��
[CgSet storage="EV601d"]
[UpDate]

[ExVoice1 storage="aex52"]
[Face storage="f_a060"]
[Voice storage="a1326" buf=2]
�yHaruka�z[CR]
�u[v]�\�\�\�I�I�@���A�����c�c���c�c��[/v]�v[KeyWait]
[FaceOff]

[text]���܂��ӎ����������܂܂̏]���̐g�̂���A�ڂŌ�����قǂ̍��F�������W���������o�Ă����B[KeyWait]

[Face storage="f_b034"]
[Voice storage="b0124" buf=5]
�yYume�z[CR]
�u[v]�c�c�c�c�c�c�c�c[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a039"]
[Voice storage="a1327" buf=3]
�yHaruka�z[CR]
�i[v]���A���ꂪ�c�c�����́c�c�A�w�S�ԕP�x�̘B�C�c�c[/v]�j[KeyWait]
[FaceOff]

[text]�S�D����g���ȋP����ڂɂ��Ă���ƁA�S�ǂ����������闝�R�����������B[KeyWait]

[Face storage="f_a039"]
[Voice storage="a1328" buf=3]
�yHaruka�z[CR]
�i[v]�{�A�{�N������ȏ�A�G�b�`�Ɂc�c�Ȃ����Ⴄ�Ɓc�c���A������������肷��Ɓc�c�A���ꂪ�����𖞂����̂��c�c�b[/v]�j[KeyWait]
[FaceOff]

[text]�����Ȃ������ɁA�������q�͔ޏ��������Ă��܂��B[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601e"]
[UpDate]

[Face storage="f_a031"]
[Voice storage="a1329" buf=3]
�yHaruka�z[CR]
�i[v]���A���c�c���A�䖝�A���Ȃ��c�c����c�c�B��A���A�����������A���߁c�c�b[/v]�j[KeyWait]
[FaceOff]

[text]���߂Ěb���������ڂ��Ȃ��悤�ɂƐO���������񂾁B[KeyWait]

[Sound storage="se140" buf=0]

[text]������A�҂���A�����A����邶��邶����c�c�B[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1330" buf=3]
�yHaruka�z[CR]
�i[v]�����A�ł����B���c�c�o���Ȃ��悤�ɁA����Ɓc�c�A���o���A�s���A�Ȃ���������c�c�悤�ȁc�c�B�Ȃ񂩁A�]�v�Ɂc�c�������Ⴄ�b�I�I[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1331" buf=3]
�yHaruka�z[CR]
�i[v]�����A���߂��A����c�c�b[/v]�j[KeyWait]
[FaceOff]

[text]���A�ɐ�𔇂킷��S�̎�ɗ��r�𗍂߂āA��������˂���悤�ɍ�������オ���Ă��܂��B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]���ӂ��I�@�����ƁA�z���ė~�������H[/i]�v[KeyWait]
[FaceOff]

[Sound storage="se141" buf=1]

[text]����ς���A�������A�����`�`�`�`�`�`�b�@�ʂ��ィ���������I[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601b"]
[UpDate]

[ExVoice1 storage="aex23"]
[Face storage="f_a048"]
[Voice storage="a1332" buf=2]
�yHaruka�z[CR]
�u[v]�������I�@���������������I�I�@�������A���A�ӂ��������������I�@��Ђ����A���Ђ������I�I[/v]�v[KeyWait]
[FaceOff]

[text]���������܂������A�h�����_�C���N�g�ɋ����Ă���B[KeyWait]
[text]����������Ȃ�āA���b���x�������Ȃ������B[KeyWait]

[Sound storage="se140" buf=0]

[text]�������A�ʂ�A������A����ς���ρA����A�ׂ�ׂ�ׂ�낧���I[KeyWait]

[ExVoice1 storage="aex33"]
[Face storage="f_a048"]
[Voice storage="a1333" buf=2]
�yHaruka�z[CR]
�u[v]���c�c�c�c�c�c�c�c�b�b�b�A�͂������I�@�������A���߂��A���������������A���c�c�A�߂��b�b�I�I[/v]�v[KeyWait]
[FaceOff]

[text]�N���g���X�����X���r�߂���ƁA���������̎��~�߂������Ȃ��Ȃ�B[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]���C�Ȃ����ς����ȁB���������璵�ˉ���ėU���Ă₪�邺[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�y�yOni C�z�z[CR]
�u[i]���X�͒j�Ȃ񂾂��ĂȁB����Ȃ̂ɁA�j���G�肽���Ȃ�قǂ����ς��c��܂���Ȃ�āA�h�ϑԂ������Ƃ����I�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1334" buf=3]
�yHaruka�z[CR]
�i[v]���A�D���ŁA���ɂȂ����킯����c�c�Ȃ��c�c�B�����ς��A�����āc�c����ȁA�N���c�c�������A�r�߂�c�c���炠���I�@�g�́c�c���˂��Ⴄ�b�B�Ђ����������I�I�@��A�₟�������������I[/v]�j[KeyWait]
[FaceOff]

[text]���ɂȂ����������ŗܑB�܂Ŋɂ��B��Ȃ��ɗ܂��ǂ�ǂ�ƈ��ė����Ⴄ�B[KeyWait]

[Face storage="f_r004"]
�y�S�c�z[CR]
�u[i]�����قǝ���ŗ~�������Ă��H[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�y�S�d�z[CR]
�u[i]����R�`�R�`�ɍd�����₪���āI�@���������z���Ă��炦��̊��҂��Ă�̂���I�H[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex34"]
[Face storage="f_a050"]
[Voice storage="a1335" buf=2]
�yHaruka�z[CR]
�u[v]��ӂ������I�@�ށA�����A����Ɂc�c�ȁA�Ȃ߂�c�c�ȁc�c�b�I�I�@�ӂ������������b�I[/v]�v[KeyWait]
[FaceOff]

[text]�����ɂʂ߂ʂ߂����i���N�W�̂悤�ȐO����Ăɒ���t���A�����܂����������������𐶂ݏo�����B[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a048"]
[Voice storage="a1336" buf=2]
�yHaruka�z[CR]
�u[v]����ȁA�Ɓc�c���A�ӂ��A��A��c�c���B�߂������I�I[/v]�v[KeyWait]
[FaceOff]

;a1337
;[ExVoice1 storage="aex54"]
;�u�񂠂������I�@�͂��A�񂭂����I�@�Ђ�͂��A�Ђ��A��ӂ������I�@���Ђ႟�A�͂ӂ��A������c�c����A��Ђ��A���ЂႠ����I�@�ЂႤ���A����A�ЂႮ�����I�@���Ђ��A�񂣁c�c�͂����A�Ђ��A�͂Ђ�͂��������I�v

[text]���A�����Ő���t�Ȃ̂ɁA�吨�ł����ς�����Ă��r�߂Ă��邩��A�g�̂�忂����~�߂��Ȃ��Ȃ�B[KeyWait]
[text]�����ł�����ʔ���ȖC�e�[���A��_�ɘh�݂͂�������f�I�ɝf����B[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601f"]
[UpDate]

[Face storage="f_a050"]
[Voice storage="a1338" buf=3]
�yHaruka�z[CR]
�i[v]�����c�c���A�����ς��́c�c���A����̐悡�c�c�u�������B�u�������āA�W���W���c�c���那�c�c���I[/v]�j[KeyWait]
[FaceOff]

[text]�܂�Ŗu�N�������ď[���������Ȃ����y�j�X���A����Ɉ��������悤���u�ɂ��A����ɐ����Ă����B[KeyWait]
[text]�Ȃ̂Ɂc�c�B[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]�͂ނ�A������ς��I�@����ނ��A������[[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�y�yOni C�z�z[CR]
�u[i]���Ղ��A���A����A�����������[/i]�v[KeyWait]
[FaceOff]

[text]���̏[�������������Ղ�ƙ������܂�A����ς���ϋz�������������Ȃ���z���グ��ꂽ�B[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a048"]
[Voice storage="a1339" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ��������I�فA���A�������������������I�I�@�񂠂��A�͂���A��A��߁A��߂�c�c����I[/v]�v[KeyWait]
[FaceOff]

[text]�Q������������ݎE���Ċ�������߂�B[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]�[���A�_��͂��̂ɂ��A�������A�J�`�J�`�為�����I[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex52"]
[Face storage="f_a050"]
[Voice storage="a1340" buf=2]
�yHaruka�z[CR]
�u[v]�񂠂��I�I�@���A���ς����A��ł��A���A�]�����A�Ȃ��I[/v]�v[KeyWait]
[FaceOff]

[text]�g�̂����Ƃ��Ẳ��y�𐶂ݏo���āA�{�N�̈ӎ�������������B[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1341" buf=3]
�yHaruka�z[CR]
�i[v]�ӂ����������c�c�����ς����A�w�c�c�b�A�߂荞��Łc�c�A���ӂ����I�@�זE�A�΂�΂�ɂȂ那�c�c�B���A����ȁc�c�́A�ق������A�͂����������`�`�`�����I�I[/v]�j[KeyWait]
[FaceOff]

[ExVoice1 storage="aex41"]
[Face storage="f_a050"]
[Voice storage="a1342" buf=2]
�yHaruka�z[CR]
�u[v]���Ђ��A�񂨁c�c�񂭂��A�����A�͂������`�`�b�B�񂠂��A���߂��A���c�c���A��A����A�₟�������I[/v]�v[KeyWait]
[FaceOff]

[text]�N�O�ƂȂ����Ƃ���œ����������������Ԃ���ƁA�R�������r�؂�r�؂�ɂȂ�B[KeyWait]
[text]���˂��˂Ǝ��̂��܂��܂��Y�܂���忂��āA��S�ǂ���U�f�����Ⴄ�B[KeyWait]

[Face storage="f_r004"]
�y�S�c�z[CR]
�u[i]�{���ɒj����I�H�@�����ׂȃc�����₪���āI[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�y�S�d�z[CR]
�u[i]�j�ɔƂ��邱�Ƃ����l���ĂȂ��o�J���ƕς��˂�����B�Z�т₪���Ă��I�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1343" buf=3]
�yHaruka�z[CR]
�i[v]�ǁc�c�ǂ�ȁA�\��A��������Ă�񂾁c�c�H�@�{�N�c�c�B�������A�͂��������c�c�B�����ς�����Ԃ��āA���܂��r�߂��āc�c�ǂ�Ȋ�A�Ȃ��Ă�́c�c�{�N�I�H[/v]�j[KeyWait]
[FaceOff]

[text]�z�����������ŗ]�v�ɋ��������܂�B[KeyWait]

[ExVoice1 storage="aex33"]
[Face storage="f_a048"]
[Voice storage="a1344" buf=2]
�yHaruka�z[CR]
�u[v]���ӂ����I�@��́A���A���������c�c[/v]�v[KeyWait]
[FaceOff]

[text]�傫�ȗ��ߑ����e��ŁA�{��������B[KeyWait]

[Face storage="f_r002"]
�y�S�e�z[CR]
�u[i]�����A�܂��c�c�Z�т₪���ăb�A���܂�˂����I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�y�S�f�z[CR]
�u[i]�Ƃ�ł��Ȃ��D���҂̃N�\�r�b�`�����A���̋S�a�P�I�I[/i]�v[KeyWait]
[FaceOff]

[text]���ӎ������f�̐F��������Ă��܂��A��S�ǂ�����ĂɌQ���肫���B[KeyWait]
[text]���������Ƃ�Ɗ��΂�ō��F�ɐ��܂��Ă���B�����ɂ��A�S�����̐オ����������B[KeyWait]

;�C���������ƌ��������Ĕے肵�Ă܂��B
[ExVoice1 storage="aex52"]
[Face storage="f_a050"]
[Voice storage="a1345" buf=2]
�yHaruka�z[CR]
�u[v]�́c�c���b�I�@�ӂ��A�����c�c�B�C�����c�c�C�\�\�I�I�@�������A���炠���c�c�́A�����A���c�c�A��A��߁A�Ђ����I[/v]�v[KeyWait]
[FaceOff]

[text]�����[�Ə��A�̑N��ȉ����̎���ŁA�����̐オ�ʂ���ʂ���Ə_���𝴂�A���ǂ�������x��h�荞��ł����B[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a048"]
[Voice storage="a1346" buf=2]
�yHaruka�z[CR]
�u[v]���Ђ��c�c���A�g�́c�c���A�M�������I�@���c�c�����A�������A�σb�I�I�@�񂭂����c�c�u�c�c�����b�c�c��c�c�I�@������������炟�c�c�C�����ǂ��Ȃ����炟���I�I�@���A�����c�c���������A��ɂႢ�́A�ɂ��`�`�`�b�I[/v]�v[KeyWait]
[FaceOff]

;a1347
;[ExVoice1 storage="aex55"]
;�u�񂠂������I�@�͂�����A����A���͂������I�@�͂Ђ႟�A�͂���A�͂������A�񂭂ӂ����I�@�͂Ђ��A�Ђ���A�Ђ������I�@�񂭂��A�ӂ���A��񂣂��I�@���͂��A�͂Ђ���A�ЂႤ��������I�v

[text]��������N���o���B�C�́A��i�ƑN�₩�ȍ��F�ɔZ�x�𑝂��A���Ԃ̂悤�ȑu�₩�ȍ����Y�킹�Ă����B[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0147" buf=5]
�yRasetsu Douji�z[CR]
�u[v]�����c�c�f�G�c�c�B�����c�c�B�킽������炤�A�S�ԕP�`�`[Hearts][/v]�v[KeyWait]
[FaceOff]

[text]���肱���邻�̔���[eruby str="��" text="��"]���Ȃ��病�����q���������ɚ����B[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1348" buf=3]
�yHaruka�z[CR]
�i[v]�Ђ��A���A�����������b�I�I�@�����c�c�b�B�����Ȃ��c�c����[/v]�j[KeyWait]
[FaceOff]

[text]�ł肪������ߕt����B[KeyWait]
[text]���̍Œ��A���[������̗v�̂ō��{���爳�����ꂽ�B[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601b"]
[UpDate]

[ExVoice1 storage="aex42"]
[Face storage="f_a048"]
[Voice storage="a1349" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ��͂������I�I[/v]�v[KeyWait]
[FaceOff]

[text]�����ɍ�߂��オ���������A���񂪋����P����B[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a048"]
[Voice storage="a1350" buf=2]
�yHaruka�z[CR]
�u[v]���Ђ��������I�H�@�Ђ�����I�I�@�ӂ����I�@��͂��A�͂ӂ����������I�I[/v]�v[KeyWait]
[FaceOff]

[Sound storage="se119" buf=0]

[text]�Ղ�����I�I�@�т�Ղ��A�Ղ��Ⴕ��`�`���I[KeyWait]

[text]�K�N�K�N���z���Ɍ������A�]���ŉΉԂ��e�����B[KeyWait]
[text]���ւ̗l�Ɍy���Ⓒ�̒����򖗂��U�炷�B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]���ӂ��I�@�܂������Ղ�Ə`�R�炵�₪�������b�B���̈��������I�I[/i]�v[KeyWait]
[FaceOff]

[Sound storage="se179" buf=1]

[text]����邶��邶�����A�����タ��A����ジ��ジ��ィ�\�\�b�I[KeyWait]

[text]���̖��`��T�荞��ŁA��S�̐オ�S���̉����r�߉񂵂��B[KeyWait]

[ExVoice1 storage="aex43"]
[Face storage="f_a048"]
[Voice storage="a1351" buf=2]
�yHaruka�z[CR]
�u[v]�ق��������I�@�񂟁A��A�߂������I�I�@��ӂ�����b�b�I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�y�S�e�z[CR]
�u[i]�������I�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�y�S�f�z[CR]
�u[i]���͂��I[/i]�v[KeyWait]
[FaceOff]

[text]����˂��ς˂āA[eruby str="��" text="�ӂ�"]��[eruby str="��" text="�͂�"]�⑫�w������Ԃ��Ă�����S�ǂ����R���΂��B[KeyWait]

[Face storage="f_r004"]
�y�S�c�z[CR]
�u[i]���ق��A�S�a�P�̐��������I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�y�S�d�z[CR]
�u[i]���ɂ�����킹����I�I[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex55"]
[Face storage="f_a048"]
[Voice storage="a1352" buf=2]
�yHaruka�z[CR]
�u[v]�ӂ����I�@���Ђ�b�I�I�@�͂킟�������c�c���I[/v]�v[KeyWait]
[FaceOff]

[text]�����ɁA�҂��Ă܂����Ƒ��̃��c���ނ���Ԃ���āA����������𔇂킹�Ă����B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]��������J�����ςȂ����ȁB����������ł��`���|���킦���߂�񂶂�Ȃ��̂��H�@���̃I�}���R��[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1353" buf=3]
�yHaruka�z[CR]
�i[v]���A�����c�c�B�ӂ����c�c�M���A�W���W��Ⴢ�āc�c�����A���ꗬ���ɂȂ��Ăāc�c�B���܂񂱁A�����A�o�݁c�c���ςȂ����B���A�������A�r�߁c�c���Ă�B�܂��A�����܁A��񂶂Ⴄ�c�c[/v]�j[KeyWait]
[FaceOff]

[ExVoice1 storage="aex54"]
[Face storage="f_a048"]
[Voice storage="a1354" buf=2]
�yHaruka�z[CR]
�u[v]���q�B���I�I[/v]�v[KeyWait]
[FaceOff]

[text]�����S���ւƕs�ӑł��Ɏw���߂荞�܂���āA�댯�ȊÔ�������A�g���k�����B[KeyWait]
[text]�L�����ƁA��������܂�A���̎w��������Ɖ��֗U���������Ƃ���B[KeyWait]

[ExVoice1 storage="aex41"]
[Face storage="f_a048"]
[Voice storage="a1355" buf=2]
�yHaruka�z[CR]
�u[v]���ق������I[/v]�v[KeyWait]
[FaceOff]

;�C�x���g�G�\��
[CgSet storage="EV601g"]
[UpDate]

[text]����ǁA�킸���Ɍ����ɂ߂荞�񂾂����ŁA�w�͂����ɔ����o�Ă����Ă��܂����B[KeyWait]

;�b�f�P�U����(ev601g)

[ExVoice1 storage="aex24"]
[Face storage="f_a050"]
[Voice storage="a1356" buf=2]
�yHaruka�z[CR]
�u[v]�񂨁c�c�H�@���A�́c�c�����c�c�H[/v]�v[KeyWait]
[FaceOff]

[text]�����ɁA���Ȃ��ǂ��������Ҍ�����N���N�����Ă����B[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1357" buf=3]
�yHaruka�z[CR]
�i[v]�ȂɁc�c�H�@���܂́c�c�B��A�����c�c�ӂ������A���A�����c�c�B�S�́c�c�ӂ������������c�c���A���A�����c�c[/v]�j[KeyWait]
[FaceOff]

[text]����܂łƈ�����֒f���u���ɓ��f����B������x���܂̊��G���A������Ă݂����B[KeyWait]
[text]���肷��悤�ȕ\��ɂȂ��Ă��܂��A�S�g����k�����Ă���ƁA���܃{�N���S��������o���Z���Ȉ��t���w��ɗ��߂Ă؂���؂��Ⴕ��Ԃ�Ȃ���A���S�������ւ����悤�ɂ����B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]������Ǝw�������񂾂����ŁA�H�������肻���Ȑ����Œ��ߕt���Ă�����[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�j���珗�ɂȂ����΂���ŁA�����܂������Ȃ񂾂�H�@����Ȃ̂ɁA�I�}���R�͂ǂ����悤���Ȃ��D���ҏ����Ƃ͂ȃb�B�S�a�P�������ĕ���邺���I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�y�S�����z[CR]
�u[i]�����������͂��͂��͂��͂��́\�\�\�\�b�I[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex57"]
[Face storage="f_a060"]
[Voice storage="a1358" buf=2]
�yHaruka�z[CR]
�u[v]�ӂ����I�H�@���A�����c�c���A����ȁA�́c�c�B���A�����A���c�c[/v]�v[KeyWait]
[FaceOff]

[text]�����Ԃ����Ƃ��邪���t���o�Ȃ��B[KeyWait]
[text]����ǂ��납�A������x�w������ė~�������S�����L�����L�������z�����A�܂��܂��Z�x�𑝂������t�𐂂ꂱ�ڂ��B[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1359" buf=3]
�yHaruka�z[CR]
�i[v]�����c�c���������A���c�c���B���c�c�́A�����b�c�c�ρc�c����B���A���́c�c�~���������c�c�b[/v]�j[KeyWait]
[FaceOff]

;a1360
;[ExVoice1 storage="aex56"]
;�u�ӂ�����c�c��A���c�c��͂��c�c�͂����c�c���ӂ�A���c�c�͂��A�͂��c�c���A�͂��c�c��񂣁c�c�񂭂��A��񂣁c�c�͂���c�c��A�ӂ����c�c�͂���c�c�v

[text]�ӂƋC�����ƁA���X�Ɩu�N���Đ摖�����ꂳ����A�S�ǂ��̃y�j�X�����l�߂Ă��܂��Ă����B[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1361" buf=3]
�yHaruka�z[CR]
�i[v]�͂��c�c�����A���A����ȑ傫���c�c�u��������Ă那�c�c�B����A�{�N�ɁA�u�N���Ă�񂾁c�c����Ȃ́A�{�N�́A�����āc�c�B����Ȃ̃{�N�̐g�̂��A�M���āc�c�����ς��A����Ԃ��āc�c���܂񂱁A����Ԃ��āc�c�u�N�����񂾁c�c[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1362" buf=3]
�yHaruka�z[CR]
�i[v]����c�c�B���񂱁c�c�ςȖ��A�Ȃ̂Ɂc�c����Ȃ́A����Ԃ炳�ꂽ�c�c�B����Ȃ́A�C���c�c�Ȃ̂Ɂc�c����ȑ傫���c�c�u�N�A���āc�c[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1363" buf=3]
�yHaruka�z[CR]
�i[v]�����񂾁c�c�{�N�́A�Ɂc�c�{�A�{�N�́c�c���A���܂񂱂��A�Ɂc�c�B���A����c�c�B���A���������c�c[/v]�j[KeyWait]
[FaceOff]

[text]�ϑz���~�܂�Ȃ��B�S�����������L�����L������܂��ċ����ꂵ���قǍ���B[KeyWait]
[text]���t�g���g��������ςȂ����B[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1364" buf=3]
�yHaruka�z[CR]
�i[v]�w�Łc�c����ȁA������ƂŁc�c���A�C�����A�悩�����̂Ɂc�c�B����Ȃ́A����ȑ����́A������c�c����c�c�B����A���A����ȁA�ӁA�������c�c�ށA�����b�I[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1365" buf=3]
�yHaruka�z[CR]
�i[v]�ŁA�ł��A����A�S���A�{�N���S�A�ڈ�t�����āA�����ƁA�������܂܁B���ꂽ����I�I�I[/v]�j[KeyWait]
[FaceOff]

[Sound storage="se119" buf=0]
[text]�Ղ��ィ�������I�@�т�����A�Ԃ��ィ���������I�I[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601h"]
[UpDate]

;[ExtasyF]

[ExVoice1 storage="aex11"]
[Face storage="f_a048"]
[Voice storage="a1366" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ������������I�I�@�ӂЂ����A�ӂ��A�ӂ��������������c�c�b�I[/v]�v[KeyWait]
[FaceOff]

;[ExtasyCount]

[text]�ϑz�����Ōy���C�b���B�{����}������銴�G��z�����āA�����Ƃ����ԂɃC�b�Ă��܂����B[KeyWait]
[text]����ł��A�]���̖\���͎��܂�Ȃ��B[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601g"]
[UpDate]

[Face storage="f_a050"]
[Voice storage="a1367" buf=3]
�yHaruka�z[CR]
�i[v]���A���́A���񂱁c�c���ꂳ������A�ː����ꂿ�Ⴄ�c�c�B�{�N�́c�c[eruby str="�S��" text="�Ȃ�"]�ɂ��A�����A����A�ː��b�I[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1368" buf=3]
�yHaruka�z[CR]
�i[v]�񂭁c�c���A�͂��A�����A���A�͂��c�c�B�S���ɂ��c�c���A�o���ꂽ��c�c�o�����Ⴄ�A�̂��Ȃ��c�c�H�@���A�Ԃ����c�c�B�{�N�A���ɂȂ�����������c�c[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a048"]
[Voice storage="a1369" buf=3]
�yHaruka�z[CR]
�i[v]�Ƃ���āc�c�s�܂���āc�c�A�Ԃ����c�c�Y�܂���c�c���Ⴄ�b�I�@����Ȃ́c�c�B���A����ȁc�c�́A��A���_�c�c�B���������c�c[/v]�j[KeyWait]
[FaceOff]

[text]���Ȃ�ł͂̋��|�ɐg���k����B�Ȃ̂ɁA[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601h"]
[UpDate]

[ExVoice1 storage="aex41"]
[Face storage="f_a018"]
[Voice storage="a1370" buf=2]
�yHaruka�z[CR]
�u[v]����A��߂��I�@�Ђ����I�I�@�ӂ����I�H�@����A�����b�I[/v]�v[KeyWait]
[FaceOff]

[text]�G�ꏗ�A���܂�������Ô��ɁA���g�̓r�N�r�N���z�������ςȂ����B[KeyWait]
[text]�w��œ��ԕق������Ȃ���A�S���̐󂢂Ƃ�����ق��ق������ƁA�����Ɖ��ւ̎h�����~�����Ȃ��č�������オ��B[KeyWait]

[ExVoice1 storage="aex57"]
[Face storage="f_a017"]
[Voice storage="a1371" buf=2]
�yHaruka�z[CR]
�u[v]�ӂ������A�{�A�{�N���c�c�B�񂠂��A���A���A�͂�����������������b�I�I[/v]�v[KeyWait]
[FaceOff]

;a1372
;[ExVoice1 storage="aex57"]
;�u�͂������c�c����A��������I�@�ӂ��������c�c�͂��A�͂�����c�c���͂����A�͂���A���ӂ����c�c���c�c��A������c�c�͂��c�c�����A��ЂႠ�A��񂣁c�c�͂����A�͂��A����������c�c�v

[text]�}�����ꂸ�M���f�����R��A�ڂ͏��݁A�������j���B[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]���܂�˂��c�c[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�y�yOni C�z�z[CR]
�u[i]�����邺�c�c[/i]�v[KeyWait]
[FaceOff]

[text]���ꂪ��S�ǂ��̗������̂��낤�A�����𑝂��Ă̂����������̐���r�߉񂳂�A�S�g�����_���܂݂�łʂ�ʂ炵�Ă����B[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1373" buf=3]
�yHaruka�z[CR]
�i[v]���A����ȁc�c�́A�L���c�c�A�C���������c�c�̂ɁB�ǂ��c�c���āH�@�����A�ǂ����āc�c�H[/v]�j[KeyWait]
[FaceOff]

[ExVoice1 storage="aex52"]
[Face storage="f_a048"]
[Voice storage="a1374" buf=2]
�yHaruka�z[CR]
�u[v]��Ђ��I�@�ӂ����I�I�@���ӂ��A�ӂ��͂����������`�`�`���I[/v]�v[KeyWait]
[FaceOff]

[text]�����̎w�ɝs�ˉ񂳂�靚��Ȕ��[�ł́A����ɂ��������̐オ�E�����A�D�������悤�ɏ[�������]�����܂���B[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601g"]
[UpDate]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1375" buf=2]
�yHaruka�z[CR]
�u[v]�ق����I�@���A���������I�I�@���A���������c�c�σb�b�A�Ђ���Ȃ��ЂႤ����I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a1376" buf=3]
�yHaruka�z[CR]
�i[v]�j���c�c�C���������A�́c�c�قƂ�ǁA���񂱂΂���A�Ȃ̂Ɂc�c�B����Ȃ̂��炾���c�c�ǂ����A�S���c�c���A�C�����c�c�������I[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a1377" buf=3]
�yHaruka�z[CR]
�i[v]���A���A�����c�c���߁A�����c�c���I�@���̂܂܁A����c�c���A����c�c�����ꂿ�Ⴄ���I�I�@����āA���炦���Ⴄ���I[/v]�j[KeyWait]
[FaceOff]

[text]�������̂��C���Ȃ̂��������̂��A���������ł��悭������Ȃ��B[KeyWait]
[text]��S�ǂ��̖u�N�͂����A�����C���X�Ōł��҂苶���A�ԍ����[�����Ă����B[KeyWait]
[text]�����ڂɂ��āA���k���J��Ԃ��S������A�����ނ悤�ȔM�����ƂՂƂՕ������ڂ��B[KeyWait]

[Face storage="f_a017"]
[Voice storage="a1378" buf=3]
�yHaruka�z[CR]
�i[v]���c�c�����A�j�̂���ہA�������Ⴄ�g�̂ɁA�Ȃ���������񂾁c�c�B����A�������܂ꂽ��A�{�N���S���c�c���񂱁A�������Ⴄ�񂾁c�c�b[/v]�j[KeyWait]
[FaceOff]

[text]�����̐g�̂��A�j�ɔƂ���Ă��܂����̓��̂ɕς�������Ƃ����߂Ďv���m�����B[KeyWait]
[text]�ӎ�����Ƃ����ɃL���ƌҊԂ���܂��āA�S���ƁA���A��Ƃ΂���ɐK���̋eᰂ܂ł��������i��B[KeyWait]
[text]���̔����ɁA��S���������������B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�����A�������̌������~�������Ɍ��J���n�߂₪�����B���b���Ă��邺[/i]�v[KeyWait]
[FaceOff]

[text]�j�̎w�悪���A���痣���B[KeyWait]

[ExVoice1 storage="aex24"]
[Face storage="f_a050"]
[Voice storage="a1379" buf=2]
�yHaruka�z[CR]
�u[v]�ӂ��������I�H[/v]�v[KeyWait]
[FaceOff]

[text]�r�����ɁA�v�킸�ǂ��������č��������オ��B[KeyWait]
[text]���̓r�[�A[KeyWait]

[Sound storage="se108" buf=1]

[text]�ʂ�����b�B[KeyWait]

[ExVoice1 storage="aex52"]
[Face storage="f_a042"]
[Voice storage="a1380" buf=2]
�yHaruka�z[CR]
�u[v]�ق������b�A�����������I�H�@�ȁA�Ȃ��������b�I�I�H�H[/v]�v[KeyWait]
[FaceOff]

[text]���A�̉��ŘI��ɂȂ��Ă���e���ɁA�w�悪�������Ă�ꂽ�B[KeyWait]

[Sound storage="se111" buf=0]

;�b�f�P�U����(ev601i)
;�C�x���g�G�\��
[CgSet storage="EV601i"]
[UpDate]

[text]�Y�b�u�b�I[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a018"]
[Voice storage="a1381" buf=2]
�yHaruka�z[CR]
�u[v]�ق������I�H[/v]�v[KeyWait]
[FaceOff]

[text]���̂܂܃O�C�b�Ɠ���������Ă߂荞�܂���A���f�̏Ռ����P������B[KeyWait]
[text]�Y���Ɗ낤���Ռ������Ɍ�������u�œ������S�g��������[eruby str="�" text="����"]�ށB[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a017"]
[Voice storage="a1382" buf=2]
�yHaruka�z[CR]
�u[v]�ӂ����I�@���c�c���A�����A��߁A��A�͂������I�I�@����ȁA�Ƃ��A���ЁB���������I[/v]�v[KeyWait]
[FaceOff]

[text]�S����_����̂Ƃَ͈��̊�@���ɁA����؂���߂ĕK���ɍR���Ă݂��B[KeyWait]
[text]�e��̊O�ցA�ǂ��ɂ��w�������Ԃ��B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�܂�[eruby str="��" text="����"]����[/i]�v[KeyWait]
[FaceOff]

[text]�r�[�ɁA��S���s���������Ɋ�������߂��B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�������͂����Ƃ�Ƃ낾���Ă̂ɂ�[/i]�v[KeyWait]
[FaceOff]

[text]�������A�S�����ꂩ���鈤�t�������Ղ�Ǝw��ɗ��߂āA�ēx�̐N�������݂Ă���B[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a018"]
[Voice storage="a1383" buf=2]
�yHaruka�z[CR]
�u[v]�ւ����A���߂��I�@�\�\�\�\�b�b�b�I�I[/v]�v[KeyWait]
[FaceOff]

[Sound storage="se130" buf=1]

[text]��������I[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601j"]
[UpDate]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1384" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ����I�I[/v]�v[KeyWait]
[FaceOff]

[text]������x����؂���߂ċt��������ǃ_���������B[KeyWait]
[text]�����������\�ɔZ�x�𑝂����k���k���̉t�`���A����ȏ����𔭊������B[KeyWait]
[text]�ł���܂��Ă������Q���ՁX�Ɗɂ�ŁA�]�񂾖���Ɏw�悪���܂�B[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1385" buf=3]
�yHaruka�z[CR]
�i[v]�����c�c���c�c���A�K���c�c�B����c�c�ȁc�c[/v]�j[KeyWait]
[FaceOff]

[text]�����Ȃ��Ă��܂���������ǂ��ɂ��Ȃ�Ȃ��B[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a018"]
[Voice storage="a1386" buf=2]
�yHaruka�z[CR]
�u[v]���ʂ������������A�͂��A���������I�I�@�ӂ��c�c[/v]�v[KeyWait]
[FaceOff]

[text]�M���Ռ��ɍQ�ĂĐK����S�͂ōi�邪�A�����̑ٓ������ڂ����̉t�ɒo�܂����B[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a017"]
[Voice storage="a1387" buf=2]
�yHaruka�z[CR]
�u[v]�ӂ����A�́A��A�����b�I�I�@����Ȃ��A������c�c���A���A���c�c�ЁA�J���������I[/v]�v[KeyWait]
[FaceOff]

[Sound storage="se158" buf=0]

[text]�ʂ���A������A�˂��傿��c�c�B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]���\�L�c���A�P�c�������B������������ߕt�����ςȂ���[/i]�v[KeyWait]
[FaceOff]

[text]���肮����������ق����悤�Ɏw��ő~���񂳂�A�����Ă���悤�ɔM���u���ċ���ȒE�͊��������񂹂��B[KeyWait]
[text]�J�N�J�N���r�ɐk��������A�����ł��C�𔲂��ƁA�ӂ��A����傪�o�ށB[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a018"]
[Voice storage="a1388" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ����I�@�������I�I�@�Ȃ�A�ŁH�@�K���A���߂Ă�A�̂ɃC�B�C�C�B�b�I�I[/v]�v[KeyWait]
[FaceOff]

[Sound storage="se160" buf=1]

[text]�Y�u�b�I�I�@�k�u�k�u�k�u�b�A�Y�u�u�b�I[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�����A�ǂ�ǂ�����Ă������B�L�c�����ǁA�󂯓����C���X���B�����������S�a�P�̃P�c���b�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]��x�߂荞�񂾂�A�ǂ��܂ł����܂��Ă������܂������I�I�@��܂�����傾�Ȃ��I[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1389" buf=2]
�yHaruka�z[CR]
�u[v]�������I�@�Ӂc�c�������������I�I�@��A�������I�@�[�b�A���c�c�����A[eruby str="�}��" text="��"]���Ȃ��������I�I[/v]�v[KeyWait]
[FaceOff]

;a1390
;[ExVoice1 storage="aex58"]
;�u�͂������I�@��Ђ��A�͂��A��񂤂����I�@��͂��A�͂��A�񂭂��A��ӂ������I�@��͂��I�@�������I�@�͂��I�@��͂������������I�@�񂮂��I�@����A�ӂ����A���ЂႠ������I�v

[Face storage="f_a018"]
[Voice storage="a1391" buf=3]
�yHaruka�z[CR]
�i[v]�w�c�c�́A�߁c�c���������A�����b�c�c[eruby str="��" text="����"]���b�那�b�B���ӂ��A�����c�c���A���c�c�l�܂那�c�c�B�h���c�c�A���������B���A���ꂥ�c�c�K�����́c�c�����B�C�C�b�I[/v]�j[KeyWait]
[FaceOff]

[Sound storage="se159" buf=1]

[text]���Ղ��A���ɂ���A�������I[KeyWait]

[text]���ς�炸�eᰂ͊撣���ĕ��悤�Ƃ��Ă��邯��ǁA�h�����󂯂���������̟��ݏ`�����t�ƍ����荇���āA����Ɉٕ��̐i�s��⍲����B[KeyWait]
[text]���A���֐߂�P�荞��Œ��a�𑝂������S�̎w���A���ɍ��{�܂Ŋ��S�ɖ��ߍ��܂��B[KeyWait]

[Sound storage="se157" buf=1]

[text]���ނ���I�I[KeyWait]

[text]�w�̌ҕ������A�K���Ԃ������̂������ɒǓ˂����B[KeyWait]

[ExVoice1 storage="aex58"]
[Face storage="f_a017"]
[Voice storage="a1392" buf=2]
�yHaruka�z[CR]
�u[v]���c�c�c�c�b�A�ӂ��������������I�@�͂킠�����I�I�@�Ѓb�I�@�Ђ��₟�����������I�I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1393" buf=3]
�yHaruka�z[CR]
�i[v]�����A�������A�Ȃ�c�c���A����c�c���B���A�ꂵ�c�c���B�̂ɂ��A�ŁA���A���A���������c�c[/v]�j[KeyWait]
[FaceOff]

[text]�Ă����_��˂����܂ꂽ�悤�ȏՌ��Ȃ̂ɁA���������Ô����Q�������B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]���������A������ƃ}���`�h�荞�񂾂����ŁA�����Ƃ����Ԃɍ��{�܂Ŗ��܂����܂������I�@�����̃P�c���A���̓}���R�����܂肪�˂��񂶂�Ȃ����I�H[/i]�v[KeyWait]
[FaceOff]

[Sound storage="se161" buf=7 loop=true]

[text]������A�ʂ���A������A������A�Ԃ���[KeyWait]

[text]�Y�b�|�����܂����w��~���񂵂āA��S���}��B[KeyWait]

[ExVoice1 storage="aex21"]
[Face storage="f_a018"]
[Voice storage="a1394" buf=2]
�yHaruka�z[CR]
�u[v]������A�Ђ�����I�@�ق��͂��������I�I�@�������I�@��Ђ��I�@���ӂ��A�͂��A�ӂ͂��I�@�͂ЂႠ���I�@�񂬂��A�Ђ��I�@�ӂ��A���Ԃӂ������I�I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a018"]
[Voice storage="a1395" buf=3]
�yHaruka�z[CR]
�i[v]���c�c���A���K�c�c�Ȃ񂩂Ƀb�I�@�ӂ��A�����A�����Ƃ���A�Ȃ̂Ƀb�c�c�I�H�@����ȁA�Ƃ���c�c���炟�c�c�B����Ȋ������c�c�N���オ��A�Ȃ�āc�c�b[/v]�j[KeyWait]
[FaceOff]

[text]����Ȉ�a�����������Ŗc�ꂠ����A�ؔ������Ô��𐶂ݏo���B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�C�ɓ������悤���ȁI�@�܂񂴂�ł��Ȃ��c�����Ă₪��[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex58"]
[Face storage="f_a017"]
[Voice storage="a1396" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ����I�@���A����Ђ�c�c���B�c�c[/v]�v[KeyWait]
[FaceOff]

[text]�Q�ĂĐԂ�ފ��w���邪�A[KeyWait]

[Sound storage="se130" buf=0]

[text]��������B[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1397" buf=2]
�yHaruka�z[CR]
�u[v]�ق����A���������b[hearts][/v]�v[KeyWait]
[FaceOff]

[text]�w��ɒ��ǂ�P���ĊÂ��b�������o���B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]���ꂶ��A�j�̎��ɂ��A���z�������ɁA�P�c�@���܂����Ă悪���Ă��񂶂�Ȃ����H�@������Ȃ�ł����߂ĂŊ�����������I�H[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex58"]
[Face storage="f_a017"]
[Voice storage="a1398" buf=2]
�yHaruka�z[CR]
�u[v]�\�\�I�I�@���A�����c�c���A���A���A���������͂����I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1399" buf=3]
�yHaruka�z[CR]
�i[v]��k����Ȃ��\�\�\�b�B�g�̂��j�ł����ł��A�{�N�͏��ɂ��������Ȃ��B�c�c��A�������A�D���Ȃ񂾂�����I�@���܂����āA����ȘA���ɁA���A�g�́c�c�D�����肳��āc�c���A�C�F�����āc�c���܂�Ȃ��̂Ƀb[/v]�j[KeyWait]
[FaceOff]

[text]����������ɔ��_����������ǁA���̎h�����������Č��t�ɂȂ�Ȃ��B[KeyWait]

[SoundOut buf=7 time=2000]

[Face storage="f_c906"]
[Voice storage="c0148" buf=5]
�yRasetsu Douji�z[CR]
�u[v]���A�ȂɂȂɁI�H�@�ɂ��Ă���������������́H[/v]�v[KeyWait]
[FaceOff]

[text]�����A����T�c�c����A�������ڂ��L���L�������Ęb�ɐH�炢���Ă����B[KeyWait]
[text]�ق�ƁA�����Ă��������b�c�c�D���Ȃ񂾂���c�c�B[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0149" buf=5]
�yRasetsu Douji�z[CR]
�u[v]����͓n�ӁH�@����Ƃ�����H�@�܁A�܂����c�c�Y�Ӂc�c���Ă��Ƃ͂Ȃ����ˁB�����������炿����ƁA��������������c�c[/v]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex55"]
[Face storage="f_a050"]
[Voice storage="a1400" buf=2]
�yHaruka�z[CR]
�u[v]���A�N�ł��A�Ȃ����Ă΂��I�@�{�N�́A���A�j�Ȃ񂩂��A�͂������`�`�`�`���b�I�I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a050"]
[Voice storage="a1401" buf=3]
�yHaruka�z[CR]
�i[v]���A����T�̌����Őq�˂Ă��邩��A�������̂悤�ɕԂ������������Ȃ����c�c���B�����͗c�Ȃ��݂Ȃ񂩂���Ȃ��āA��������炨���Ƃ��Ă���׈��ȋS�_�Ȃ̂ɂ�[/v]�j[KeyWait]
[FaceOff]

;�C�x���g�G�\��
[CgSet storage="EV602a"]
[UpDate]
[ExVoice1Stop time=4000]

[Face storage="f_c902"]
[Voice storage="c0150" buf=5]
�yRasetsu Douji�z[CR]
�u[v]�Ӂ`��A�킽���́A�j�̎q�����̎q���A�ǂ���ł���������Ȃ񂾂��ǂȂ��c�c�B�j�̗ɂ��A���̂͂邩���A�D����c�c�B�ł��A���܈�ԍD���Ȃ̂́A���A��[hearts][/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1402" buf=2]
�yHaruka�z[CR]
�u[v]��c�c�����c�c[/v]�v[KeyWait]
[FaceOff]

[text]���c�̘r�̒��ł��܂��ӎ������߂����ɂ���g�S�ԕP�h����́A�ُ�ȗʂ̘B�C����ꂩ�����āA���F�̋P�����ɂ₩�ɉQ�������Ă����B[KeyWait]

;�b�f�P�V(ev602)

[Face storage="f_c906"]
[Voice storage="c0151" buf=2]
�yRasetsu Douji�z[CR]
�u[v]��ӂ��c�c�B���A�����c�c�B�����c�c[/v]�v[KeyWait]
[FaceOff]

[text]�����䖝�̌��E�ɋ߂��̂��낤�A�������q�͔ޏ��̖L���ȓ��[�𝆂ݘM������A���ɐO�𔇂킹�ė��ߑ���f�����肵�āA�؂Ȃ��Ȋ፷���𒍂��ł����B[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0152" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�����A�����c�c���Ă΂��c�c�B���̂����ς��A�̂���A�܂��������Ȃ��c�c[/v]�v[KeyWait]
[FaceOff]

[text]�S�̎p�ɂȂ��Ă����ς�炸�T���߂Ȏ����̋��Ƃ͑ΏƓI�ȁA���|�I�ȑ��݊��������A�����̝���ȓ��[�𝆂ݎn�߂��B[KeyWait]

[Face storage="f_b035"]
[Voice storage="b0125" buf=2]
�yYume�z[CR]
�u[v]��c�c�ӂ��c�c�A�͂��c�c���A���������c�c[/v]�v[KeyWait]
[FaceOff]

[text]�{�����[�����_�Ȗ[�������\���s�����悤�ȁA�������Ɩ��ՂȂ��s�ˉ񂷂悤�ȝ��ݕ��ɁA����ɏA���Ă��錋���̐O����A�����Țb�������ڂꂽ�B[KeyWait]
[text]�[�̒��ɐ[�X�Ɩ��܂荞��ł����w�𔲂��o���ē�����h������ƁA�����̂ۂ������C���Ȑg�̂��A�s�N���ƌy���ł��k�����B[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0153" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�����c�c�����������c�c�B�f�G�c�c[/v]�v[KeyWait]
[FaceOff]

;�C�x���g�G�\��
[CgSet storage="EV602b"]
[UpDate]

[text]�����ʂ̗l�q�řꂭ�ƁA�O�����킹�A���ڂꗎ����B�C�̖���������B[KeyWait]

[text]�\�\������B�ނ���A����ՁB[KeyWait]

[ExVoice1 storage="cex01"]
[Face storage="f_c906"]
[Voice storage="c0154" buf=2]
�yRasetsu Douji�z[CR]
�u[v]��c�c�c�c�A���Ӂc�c�A�͂����c�c[/v]�v[KeyWait]
[FaceOff]

[text]���܂��̋��ԂŊh�a�������t�̉��F�����r�ɖ苿�����B[KeyWait]

[ExVoice1 storage="cex02"]
[Face storage="f_c906"]
[Voice storage="c0155" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�ӂ����A�_�炩���āc�c�A�Â��A�O�c�c�B��c�c���Ӂc�c�A�͂ށc�c��c�c[/v]�v[KeyWait]
[FaceOff]

[text]�ۂ��Ă�Ƃ����ޏ��̐O���A�����̐O�ő��Ŋ��G���m���߂�B[KeyWait]

[ExVoice1 storage="cex01"]
[Face storage="f_c906"]
[Voice storage="c0156" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�������A�����́c�c���_���c�c[/v]�v[KeyWait]
[FaceOff]

;c0157
;[ExVoice1 storage="cex01"]
;�u�͂���c�c�邿��A�ʁA����c�c��ӂ��A�񂿂�A����ρA����ނ����c�c�񂿂��A����ρA�����c�c���A�͂ށA�ނ��イ�c�c�����A����ρA����c�c������A����ҁA�񂭂��イ�c�c�v

[text]�ʂ���A�����タ��A����ρA����ՁA�����c�c�B[KeyWait]

[text]���x�����̎q�̐O���m���������Ă͗���A�Â������ĉ��F��t�ł�B[KeyWait]
[text]����ɗ����̌��Â��͔Z�����𑝂��Ă䂫�A�����̌��o���ő~�������n�߂��B[KeyWait]

[ExVoice1 storage="cex07"]
[Face storage="f_c906"]
[Voice storage="c0158" buf=2]
�yRasetsu Douji�z[CR]
�u[v]���c�c�����c�c�f�c�c�G�c�c�B�����c�c�A�ӂ��c�c�́A�����c�c[/v]�v[KeyWait]
[FaceOff]

;c0159
;[ExVoice1 storage="cex02"]
;�u�񂿂��c�c����ρA����ҁc�c���c�c����ρA����c�c�ނ����A����ҁA�񂿂�A�͂ނ��ィ�c�c��c�c����ρA������A����c�c�͂ށc�c��A�����c�c����ρA�����A���c�c��ς��A�ӂ��A����A����ނӂ��c�c�v

[text]��Ɛオ���ݍ����A���t�̎��������ė���Ă͂܂����ށB[KeyWait]

[text]�����タ��A�����A����ρc�c�A�ʂ���c�c�A�҂��タ��c�c�B[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1403" buf=3]
�yHaruka�z[CR]
�i[v]�����A���A��c�c����āc�c�B�����Ɓc�c����T�c�c�A����A�����c�c[/v]�j[KeyWait]
[FaceOff]

[text]�s�ӂɗ����ɐO��D��ꂽ���G���]���ɑh�����B[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1404" buf=3]
�yHaruka�z[CR]
�i[v]�܂��c�c�{�N�����āA�����ƃL�X�������ƂȂ񂩁c�c�Ȃ��̂Ɂc�c[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1405" buf=3]
�yHaruka�z[CR]
�i[v]�����́c�c�L�X�c�c�B�{�N�̐O���c�c�D�����c�c[/v]�j[KeyWait]
[FaceOff]

[text]��Ɛ�Ƃ����ފ댯�ȐS�n�悳���v���Ԃ��A��l�𒭂߂Ă���ƁA���̒��ɉ����Ȃ����ǂ����������ݏグ�ė��Ă��܂��B[KeyWait]

[Face storage="f_a060"]
[Voice storage="a1406" buf=3]
�yHaruka�z[CR]
�i[v]���A�Ⴄ�c�c�A�{�N�́A�ʂɁc�c�ꏏ�ɁA�L�X�c�c�������킯����A�Ȃ��āc�c[/v]�j[KeyWait]
[FaceOff]

[ExVoice1 storage="cex08"]
[Face storage="f_c906"]
[Voice storage="c0160" buf=2]
�yRasetsu Douji�z[CR]
�u[v]��c�c���Ӂc�c�B�ӂ����c�c�B��c�c�c�c�c�c�b�B�ӂ��c�c[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_b035"]
[Voice storage="b0126" buf=2]
�yYume�z[CR]
�u[v]���Ӂc�c�A�ӂ��c�c�c�c�A��c�c�c�c�c�c�A�Ղ́c�c�c�c�c�c[/v]�v[KeyWait]
[FaceOff]

[text]���������͚����������A�����Ō����̐O���Â��Ă����B[KeyWait]
[text]�O�Ɛオ�t�ł�Y�܂����ȉ��F�ƁA�S�_�ƂȂ��������ƁA���@�ɂł����������݂����ɖ��葱���鏭�������܂��ڂ��b���������A��l�����̐��E���\�z���Čy�₩�ɋ����B[KeyWait]

[ExVoice1Stop time=2000]

[Face storage="f_a039"]
[Voice storage="a1407" buf=3]
�yHaruka�z[CR]
�i[v]���c�c�����m�ŁA�L�X�c�c�Ȃ�Ă��I[/v]�j[KeyWait]
[FaceOff]

[text]�܂�ŗc�Ȃ��݂Ə]�������Â������킵�Ă���悤�ȍ��o�Ɏ����A�h�L�h�L�Ƌ����������B[KeyWait]
[text]�������̒^���ȕ��͋C���Ԃ��󂷂悤�Ɂ\�\�\�A[KeyWait]

[ExVoice1 storage="aex61"]
[Sound storage="a0000" buf=2]
[seopt buf=4 volume=0]
[fadese buf=4 time=2000 volume=100]

;�C�x���g�G�\��
[CgSet storage="EV601j"]
[UpDate]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�����m�̗��݌��ċ������Ă�̂���H�@�}�ɐK���w���ߕt���Ă��₪�������A�Ƃ񂾃h�ϑԂ��Ȃ��I[/i]�v[KeyWait]
[FaceOff]

[text]�S������Ȃ��璼����~�������Ă���B[KeyWait]

[ExVoice1 storage="aex61"]
[Face storage="f_a050"]
[Voice storage="a1408" buf=2]
�yHaruka�z[CR]
�u[v]���A�����c�c���A��ȁc�c���A�ӂ����I�I[/v]�v[KeyWait]
[FaceOff]

[text]�g�̂����ɂȂ�������Ƃ͂����A�{�N���j�Ȃ̂ɁA�j�����ɌQ�����g�̂�M���܂����Ă���B[KeyWait]

[Face storage="f_a017"]
[Voice storage="a1409" buf=3]
�yHaruka�z[CR]
�i[v]�K�́A�����c�c�w�Łc�c���A�~���񂳂�Ă��A�C�����ǂ��Ěb��������Ă�b�I[/v]�j[KeyWait]
[FaceOff]

[ExVoice1 storage="aex41"]
[Face storage="f_a018"]
[Voice storage="a1410" buf=2]
�yHaruka�z[CR]
�u[v]�Ӄ��������������������I�@�͂������I�I�@���Ђ��I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]�����̘B�C���A���\�������������I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�S�a�P�Ȃ�āA�N�\�݂Ă��Ȗ����낤���Ďv���Ă����c�c�b�B�����ƁA�悪�点�ĘB�C�A�i��o���Ă�邺�I�I[/i]�v[KeyWait]
[FaceOff]

[text]�����̖��߂ŋS�ԕP����炦�Ȃ��������������A�{�N�ɂԂ��Ă���B[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601h"]
[UpDate]

[text]�A�i���ɍU�߂ǂ��낪�؂�ւ���ăK���󂫂ɂȂ��Ă������A�ɁA�������̐�悪�E�����Ă����B[KeyWait]

[ExVoice1 storage="aex58"]
[Face storage="f_a018"]
[Voice storage="a1411" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ�ւ��I�H�@��A��߂��I�I[/v]�v[KeyWait]
[FaceOff]

[text]��A�O�𗼑�������������A�����ρ[�A�Ə��A���L����B[KeyWait]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1412" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ����I�I�@�ЁA�L����Ȃ����I[/v]�v[KeyWait]
[FaceOff]

[Sound storage="se135" buf=0]

[text]�ƂՂƂՂƂՁA���ۂہc�c�B[KeyWait]

[text]�r�[���S������A�ʂ߂���������ꂩ�������B[KeyWait]

[Face storage="f_r003"]
�y�yOni C�z�z[CR]
�u[i]�`���`�`�`�`�`�`�`�b�I�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r004"]
�y�S�c�z[CR]
�u[i]�ӂ͂��\�\�I�I�@���܂�˂������������I[/i]�v[KeyWait]
[FaceOff]

[Sound storage="se140" buf=1]

[text]�҂���A����邶��邶���A����A������A������那�\�\�\�\���I�I[KeyWait]

[text]�����Ղ�̎����r�ߚT��Ȃ���A��S�ǂ��̐オ����ɉ��������Ă���B[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1413" buf=2]
�yHaruka�z[CR]
�u[v]���q�B�C�C�C�b�I�@���A���A�͂����������\�\�\�\�b�I�I�@�����A����Ȃ��A��x�ɃB���A�_���b�I�@�ӂ��������c�c�����ς��A������A�͂������������I�I[/v]�v[KeyWait]
[FaceOff]

[text]�S���֑������ɐオ���܂荞��ŁA�S����o�܂������r�ߐ����Ă䂭�B[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]���ց`�A���������I�@���܂񂱃g���g������˂����I�I�@�Ȃɂ��}�����ė~�����āA���܂�˂����Ċ�����忂��܂����Ă₪���[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex55"]
[Face storage="f_a017"]
[Voice storage="a1414" buf=2]
�yHaruka�z[CR]
�u[v]���Ђ��I�H�@�����ɂ�A��c�c�ӂ������������I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1415" buf=3]
�yHaruka�z[CR]
�i[v]�A�O�̂Ђ�Ђ�c�c�A���A�M���Ă���I�@�Ђ����A�����������I�I[/v]�j[KeyWait]
[FaceOff]

[text]���̓������S�O��S��������Ԃ��āA���E�ɉΉԂ��u�����B[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1416" buf=3]
�yHaruka�z[CR]
�i[v]�����`�`�A�N���c�c���A�����ꂿ��������I�@�����c�c�������Ⴄ�̂ɂ��I�I�@��b�A��������ŁA�]�����ꂽ��c�c�b�b�b�I[/v]�j[KeyWait]
[FaceOff]

[ExVoice1 storage="aex35"]
[Face storage="f_a018"]
[Voice storage="a1417" buf=2]
�yHaruka�z[CR]
�u[v]�ӂ��������A�����A�͂��Ђ��������I�@�C�b�A�񂟂������A���߂��A�C�b����c�c�Ӄb�A�͂����������\�\�\�\���I�I[/v]�v[KeyWait]
[FaceOff]

[text]�����������قǂ̉�������d�ɂ������񂹑�����B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�������̌��������傮���傾���B���ցA�ۂ��������J�����ςȂ��ŁA�������Ă₪��[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex54"]
[Face storage="f_a018"]
[Voice storage="a1418" buf=2]
�yHaruka�z[CR]
�u[v]�����b�I�I�@��A�₟�����I[/v]�v[KeyWait]
[FaceOff]

[text]�p���������w�E�ɍQ�ĂăA�i������߂悤�Ƃ������\�\�B[KeyWait]

[Sound storage="se172" buf=0]

[text]�Ԃ���Ԃ���т�ԂԂԂԂ��I[KeyWait]

[text]���t���A�����F���h��ɋ����Ă��܂����B[KeyWait]

[ExVoice1 storage="aex53"]
[Face storage="f_a018"]
[Voice storage="a1419" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ������I�@��c�c�₾���A�ق��������������I�I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�y�yOni C�z�z[CR]
�u[i]���������H�@���܂̕ςȉ��A���������ě��ł����������H[/i]�v[KeyWait]
[FaceOff]

[text]�S��������}�΂����т�����B[KeyWait]

[ExVoice1 storage="aex54"]
[Face storage="f_a017"]
[Voice storage="a1420" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ����I�I�@���A�Ⴄ�c�c�b�I�@���A���܂́c�c�Ⴄ������I[/v]�v[KeyWait]
[FaceOff]

[text]���K�̒���M�邩��A�ςȉ�����������������Ȃ̂Ɂc�c�B[KeyWait]
[text]�����ňӎ������ꂷ���ĂāA��肭�������o���Ȃ��B[KeyWait]
[text]����ł��ĐS���Ȃ��ɂ݊������܂炸�A���������ƒ���̂���K�����˂��ĉ�S�ǂ��̗����h������B[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�d���˂��ȁA���̎w�Ő����Ă�邼���I[/i]�v[KeyWait]
[FaceOff]

[Sound storage="se160" buf=1]
;�C�x���g�G�\��
[CgSet storage="EV601k"]
[UpDate]

[text]�ʂԂ��Ԃ��A���Ղ��I�I�@���ԂԂ��I�@�ʂԂ��I�I�@�ʂԂ��A�ʂ��ԂԂ��������I[KeyWait]

[text]���̔r���̌��ɁA��S�̎w����{�Z�߂Ă˂����܂ꂽ�B[KeyWait]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1421" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ���I�H�@���A�Ⴄ�c�c�b�I�@����A���A����A�ق����A�����ق������������������I�I[/v]�v[KeyWait]
[FaceOff]

;a1422
;[ExVoice1 storage="aex59"]
;�u�͂ЂႠ�����I�@�񂬂��A�����A�Ђ����������I�@�͂����A����A���������I�@��͂��A�͂��A�͂�����������I�@�������A���ӂ��A���͂����A�͂����A�͂�����I�@�񂮂����A����A�ӂ��A��ق������������I�v

[text]ᰌ����͂��؂�邩�Ǝv�����炢�ɉ����L�����āA����ȑ�����������ɖ��܂荞��ł���B[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a017"]
[Voice storage="a1423" buf=2]
�yHaruka�z[CR]
�u[v]���Ӂc�c�����������I�@�L�c�c�c�C�B�C�b�A���A�������������I�I�@�c�c�������A���b�I�@���߁A���A������b�I�I�@�������I�@�񂣂����������I�I[/v]�v[KeyWait]
[FaceOff]

[text]�s��Ȕr���~�Ƌ����������\�����ɂȂ��ĉ����񂹁A�]���Ă��ł������B[KeyWait]

;�C�x���g�G�\��
[CgSet storage="EV601l"]
[UpDate]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1424" buf=2]
�yHaruka�z[CR]
�u[v]�͂Ђ��A���߁c�c���A����Ȃ̂��I�@����ȁA�́c�c�����A�Ƃ������������������I�I[/v]�v[KeyWait]
[FaceOff]

[Sound storage="se119" buf=0]

[text]�тタ����I�I�@�Ղ�����I�@�т��ザ����I�I[KeyWait]

[text]�̂����悤�Ɏq�{�����ł��A���S�C�̂悤�Ɉ��t���򖗂��U�炵���B[KeyWait]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]�P�c�A������āA�܂��܂������Ă₪����A���̋S�a�P���I�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�y�yOni C�z�z[CR]
�u[i]�������Ȃ��B�����玟�ւƁA�`�A��ꂩ�����Ă��₪����I[/i]�v[KeyWait]
[FaceOff]

[Sound storage="se141" buf=1]

[text]�҂�����A����邶��邸�������������A�����A�������I�I[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]���O�炪�`�T��ƁA���������O�C�O�C���ߕt���Ă��邺�I[/i]�v[KeyWait]
[FaceOff]

[text]�j�����̐オ���̖��`��D�������ď��A���r�߉񂷒��A�K���[�����܂�����{�w��[eruby str="従�" text="����ǂ�"]���钼���ǂ𗐎G�ɑ~���񂷁B[KeyWait]

[text]�����タ����I�@�ʂ�����I�I�@����������I�@�ɂ�����A���������I�I�@������Ԃ��I[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a018"]
[Voice storage="a1425" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ����I�@���Ђ��I�I�@��c�c�������I�@�ӂ��������I�I�@�����c�c���A�K���c�c���܂񂱂��A���A���A�C�C�B�b�I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]�������A�������I�H�@�����Ɋy����ł������I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1426" buf=3]
�yHaruka�z[CR]
�i[v]�ӂ��c�c�Ⴄ���A���ȂɁ[�ƁA�Ⴄ���c�c�b�I�@�����Ɓc�c���A���A�������A���b���Ă那���I[/v]�j[KeyWait]
[FaceOff]

[text]�ɂ���A�ɂ���A������A������A����ς���ς��I�I[KeyWait]

[text]��S�����̐�g���ɑ��t���h�a������r�ȋ�����t�ł�B[KeyWait]
[text]���Ԃꂽ�����A�O��[eruby str="��" text="����"]�߂l�������r�߂܂����āA�����΂䂢�Ô��ō��𕂂��オ�点��B[KeyWait]

;a1427
;[ExVoice1 storage="aex60"]
;�u�Ђ�ӂ����I�@��͂��I�@�����͂������I�@�ӂЂ��A�Ђ��������A�Ђ������񂣁I�@��Ђ�͂��A�͂��A������I�@�񂬂��A�Ђ��A�Ђ�������������I�@�͂ӂ�A�����A���Ђ����I�@�Ђ����I�@�Ђ�����������I�v

[ExVoice1 storage="aex60"]
[Face storage="f_a018"]
[Voice storage="a1428" buf=2]
�yHaruka�z[CR]
�u[v]�����A����c�c�Ȃ��A���������I�I�@�������A�C�C�́A�����c�c�b�b�b�B�B����Ȃ��c�c����Ȃ́A���炾�c�c���A�����������A�C�����C�C�b�I�@�I�A�I�i�j�[�Ȃ񂩁A��ׂ��̂ɂȂ�Ȃ����炢�A���A�C�����C�C�b�I�I[/v]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1429" buf=2]
�yHaruka�z[CR]
�u[v]�������A�q�{����c�c�N�A�N���b�I�I�@�����炟�c�c�ȁA�Ȃɂ��A�傫���́c�c�����オ���Ă�����I�@�I�i�j�[�ł��A�C�N���c�c�������́A������c�c�����񂹂���A�����Ⴄ�b�I�I[/v]�v[KeyWait]
[FaceOff]

[text]���ꂪ���������ꂽ��ǂ��Ȃ��Ă��܂��̂��낤���H[KeyWait]
[text]�s���ƍD��S�ɋ������点�A���Ƒ��t�ł����傮����ɔG�ꂽ���g�����˂点��ƁA[KeyWait]

[Face storage="f_a050"]
[Voice storage="a1430" buf=3]
�yHaruka�z[CR]
�i[v]�Ђ��c�c����c�c�T���c�c[/v]�j[KeyWait]
[FaceOff]

[text]�������q�Ǝ��������ݍ������B[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0161" buf=5]
�yRasetsu Douji�z[CR]
�u[v]����[Hearts][/v]�v[KeyWait]
[FaceOff]

[text]���ɋ����ɂ����������ւƂ̂��|����A�͂���������������鋐���ւƐ�𔇂킹�Ă���B[KeyWait]
[text]�{�N�����悤�ɁA�d���ȏ΂݂𕂂��ׂ��B[KeyWait]

[ExVoice1 storage="aex55"]
[Face storage="f_a060"]
[Voice storage="a1431" buf=2]
�yHaruka�z[CR]
�u[v]�ق��c�c�b�I�@��c�c�߁A����A�͂ɂ��A�낧�c�c�B��Ђ��������I�H[/v]�v[KeyWait]
[FaceOff]

[text]������U��i��A�ɂ݂���B����ǁ\�\�\�B[KeyWait]

[Sound storage="se158" buf=1]

[text]�˂������I�I�@�ʂ������I�@������Ԃ��I�I[KeyWait]

[text]�����ɁA��悪�N���g���X�𗐖\�ɒe���A�����̕ǂ��w�悪�P��f�����B[KeyWait]

[ExVoice1 storage="aex59"]
[Face storage="f_a018"]
[Voice storage="a1432" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ����I�I�@�́A�͂���I�H[/v]�v[KeyWait]
[FaceOff]

[text]�q�{���u�����鋐��ȔM�򂪁A�����Ƌ��ɒe�����B[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1433" buf=3]
�yHaruka�z[CR]
�i[v]�ȁc�c�H�@��A���A�������A������I�@����b�I�@�����Ⴄ���I�I�@�q�B�b�A�����A�������������b�A���������A�_�����������b�I�I[/v]�j[KeyWait]
[FaceOff]

[text]�Ôg�̂悤�Ȋ�x�̏Ռ����A��u�őS�g�ɍL����A�]����͂̌���e���グ��[KeyWait]

[extasyF]

[ExVoice1 storage="aex63"]
[Face storage="f_a018"]
[Voice storage="a1434" buf=2]
�yHaruka�z[CR]
�u[v]�C�b�A���񂣁\�\�b�A�ӂ��������������b�A�C�b�b�b�b�b�A�N�����b�A�n�@�A�������`�`�`�`�`�b�b�b�b�I�@�ق����������������������������������b�b�b�I�I[/v]�v[KeyWait]
[FaceOff]

[ExtasyCount]
[Sound storage="se119" buf=0]

[text]�Ղ�����I�@�Ԃ���тイ�����I�I�@�тザ�ザ�ザ����I[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]���������A�C�b�����A���̒j�������I�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]�������A�P�c�ŃC�L�܂����Ă₪����I[/i]�v[KeyWait]
[FaceOff]

[text]�Ⓒ�̒��`���A����オ�����҂��炩�獂�X�ƕ����オ��A��S�����̓���ɍ~�蒍���ŖďL������Ƃ˂Ƃ˂ƂȔS��ł����ς��ɂ���B�������\�\�B[KeyWait]

[ExVoice1 storage="aex05"]
[Face storage="f_a018"]
[Voice storage="a1435" buf=2]
�yHaruka�z[CR]
�u[v]�ӁA���c�c�A���A�͂��b�A�񂠁A��c�c���߁A���c�c���A�R��c�c�B�����������b�A�n�@�A�A�b�I�I[/v]�v[KeyWait]
[FaceOff]

[Sound storage="se120" buf=1]

[text]�����`�`�`�A����ڂ��A����ڂ���ڂ���ڂ���ڂ���\�\�\�\���I�I[KeyWait]

[Face storage="f_r003"]
�y�yOni C�z�z[CR]
�u[i]���Ђ���A�����A�����ׂ�܂ŘR�炵�₪�������I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_a017"]
[Voice storage="a1436" buf=3]
�yHaruka�z[CR]
�i[v]�́c�c�����A�����A�����c�c�B�񂠂����A�ƁA�~�܂�Ȃ����I[/v]�j[KeyWait]
[FaceOff]

[text]���ɂȂ��Ă���䖝���o���Ȃ��Ȃ��������������A�����Ƃ����ԂɘR�ꂿ������B[KeyWait]
[text]�A�����j�A�L���J���A��S�ǂ��ڊ|���Ĕh��ɂԂ��܂��Ă��܂��B[KeyWait]

[Face storage="f_r004"]
�y�S�c�z[CR]
�u[i]���G�̋S�a�P���A�����������R�炵������I�I�@�����Ԃ�Ƃ��炵�˂��Ȃ��I[/i]�v[KeyWait]
[FaceOff]

[text]���炦����Ȃ��������ւ����S�ǂ��ɚ}�΂���B[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1437" buf=3]
�yHaruka�z[CR]
�i[v]�{�N�ɁA�����āc�c���̂���ہc�c����΁A�䖝�c�c�o�����c�c�B�ӂ��������c�c[/v]�j[KeyWait]
[FaceOff]

[text]���ꌩ�悪���ɓ˂��o���Ă��郄�c��̖u�N�y�j�X��A�܂����Ɍ��l�߂Ă���ƁA���A���q���N���Ɩ��ł��āA���������͏��Ȃ񂾂Ƃ������Ƃ��v���m�炳�ꂽ�A[KeyWait]

[ExVoice1 storage="aex06"]
[Face storage="f_a018"]
[Voice storage="a1438" buf=2]
�yHaruka�z[CR]
�u[v]���c�c�������I�@�����c�c�b�I�I�@��ӂ������A���ӂ��A���A�����c�c�B�C�L�c�c���ςȂ��Łc�c�A��͂��������I�@���Ӂc�c�������������c�c�b[/v]�v[KeyWait]
[FaceOff]

[text]�j�̐Ⓒ�ƈ���āA�˂��グ��ꂽ��x�����܂ł����葱�����B[KeyWait]
[text]��Ȃ��ɚb���Ȃ���A���܂���z���ɓ��[��e�܂���B���̎��̂ւƁA[KeyWait]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]���ւ������ƔZ���`�A�����Ղ肭��Ă�邺�I�I�@������A���킢�Ȃ��I[/i]�v[KeyWait]
[FaceOff]

[ExVoice1 storage="aex33"]
[Face storage="f_a017"]
[Voice storage="a1439" buf=2]
�yHaruka�z[CR]
�u[v]���Ђ������I�H[/v]�v[KeyWait]
[FaceOff]

[ExtasyM]

[Sound storage="se142" buf=0]
;�C�x���g�G�\��
[CgSet storage="EV601m"]
[UpDate]

[text]�ǂ҂�`���A�҂�����I�I�@�Ղ��ザ����I�@�ǂт�ǂт�ǂт�b�I�I[KeyWait]

[text]�����Ȃ���˂��t����ꂽ���c��̓{������A�Z���Ȑ��t����ĂɂԂ��܂���ꂽ�B[KeyWait]

[ExtasyF]

[ExVoice1 storage="aex10"]
[Face storage="f_a018"]
[Voice storage="a1440" buf=2]
�yHaruka�z[CR]
�u[v]�Ђ��������A�͂����A���������������\�\�\�\�b�I[/v]�v[KeyWait]
[FaceOff]

[text]�u���b�W�̂悤�Ɍ҂���𔗂�オ�点���ďL�����g�ɁA�ׂ���ׂ���Ƒ�ʂ̔������ւ΂�t���Ă���B[KeyWait]

[Face storage="f_a017"]
[Voice storage="a1441" buf=3]
�yHaruka�z[CR]
�i[v]�Ђ��c�c�A�����c�c�炟�c�c�B�����́A����ȂɁA�ԁA�Ԃ������c�c�āc�c[/v]�j[KeyWait]
[FaceOff]

[text]�����܂����J���L�L�ɓf���C�����ݏグ��B[KeyWait]
[text]�S��̋������t������`�����G���C�F�����Ă��܂�Ȃ��B������������\�\�B[KeyWait]

[Face storage="f_a018"]
[Voice storage="a1442" buf=3]
�yHaruka�z[CR]
�i[v]���c�c�����A�C�b������������I�@�C�b����A���߁A�Ȃ̂ɂ��B�����́A�B�C�c�c�����ς��A�Ȃ�����A���B�����c�c����A���Ⴄ�c�c[/v]�j[KeyWait]
[FaceOff]

[text]�ӎ����˂��グ��ꂽ�܂܍~��Ă��Ȃ��B�C�L����������ɗ܂�����B[KeyWait]

[Face storage="f_a017"]
[Voice storage="a1443" buf=2]
�yHaruka�z[CR]
�u[v]���c�c�ӁA���A���c�c���A���c�c���c�c[/v]�v[KeyWait]
[FaceOff]

[eval exp="sf.kaisouOpenFlag['12']=1"]


[text]�œ_�̍���Ȃ����ŗl�q�����������ƁA[KeyWait]

[ExVoice1Stop]
[Face storage="f_a039"]
[Voice storage="a1444" buf=2]
�yHaruka�z[CR]
�u[v]�ӂ����I�@���A�����c�c�B�͂������������c�c�I�I[/v]�v[KeyWait]
[FaceOff]

[HSceneEnd]

[eval exp="f.chaptertitle='Yume's Crisis'"]

;�w�i�F�R���r�j�q��
[BgSet storage="bg170"]
[ChrSet0 storage="b_b212l"]
[UpDate]

[text]�����͂��܂��ɖ���ɏA�����܂܁A�S�g�ɍ��F�̔Z���ȘB�C��Z���A�ӂ��Ƌ󒆂ɕ����яオ���Ă����B[KeyWait]
[text]���̖T��ŁA�S�_�A�������q�������Ƃ�ƌ��グ�Ă���B[KeyWait]

;�w�i�F�R���r�j�q��
[BgSet storage="bg091"]
[ChrSet0 storage="b_c901"]
[UpDate]

[Face storage="f_c911"]
[Voice storage="c0162" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�����A�Ȃ�āA�f���炵���c�c�B����Ȃɂ������ŋ��͂ŔZ���ȘB�C����ꂳ����Ȃ�āc�c�B�����c�c���Ȃ��́A�킽�������܂܂ŏo������ǂ̋S�ԕP�����f�G����[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1445" buf=2]
�yHaruka�z[CR]
�u[v]��c�c���T�c�c�B����A�S�c�c�b�B�S�_�c�c�A�����c�c���q�c�c�I[/v]�v[KeyWait]
[FaceOff]

[text]����͏������e�F�ɑ���፷���ł͂Ȃ������B[KeyWait]
[text]���̏�Ȃ��l������ɓ��ꂽ�A�l��炤�S�̊፷���B[KeyWait]

[Face storage="f_c901"]
[Voice storage="c0163" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�ɂɂ����������Ȃ�����ˁB���񂽂����̐g�̂ŁA�͂����Ȃ��C�L�܂����Ă��ꂽ�������ŁA����������Ȃɔ����������ɂȂ���[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a060"]
[Voice storage="a1446" buf=2]
�yHaruka�z[CR]
�u[v]�����c�c�b�I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_c902"]
[Voice storage="c0164" buf=2]
�yRasetsu Douji�z[CR]
�u[v]��S�����ɂ͋ɏ�̉��y��^�����܂܋ꂵ�܂��邱�ƂȂ����Ȃ�����炢�s�����悤�ɖ����Ă������[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�y��S�����z[CR]
�u[i]�O�D�b�t�b�t�b�t�b�t�D�\�\�b[/i]�v[KeyWait]
[FaceOff]

[text]���̌��t�ɁA���S�ǂ������~�ƐH�~�̓��荬�������፷���Ń{�N�����l�߂�B[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0165" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�����c�c�A�����c�c[/v]�v[KeyWait]
[FaceOff]

[ChrSet1 storage="b_b121" pos=c]
[UpDate]

[text]���̐F�̓��Ɏ��߂Ȃ��P�����h���A�S�_�����V���錋��������񂹂�B[KeyWait]
[text]���̗����̌ҊԂ���c�c�B[KeyWait]

[Face storage="f_a042"]
[Voice storage="a1447" buf=2]
�yHaruka�z[CR]
�u[v]�����I�H�@���A�����������b�I[/v]�v[KeyWait]
[FaceOff]

[ChrSet0 storage="b_c911"]
[ChrSet2 storage="b_c999" pos=c]
[UpDate]

[text]����痂����ӂ񂼂�Ԃ��ē��P�𗧔h�ɒ���o�������{�����Y�X�����������Ă����B[KeyWait]

[Face storage="f_a042"]
[Voice storage="a1448" buf=2]
�yHaruka�z[CR]
�u[v]�Ȃ��A����c�c�A����A�T�c�c�B�Ȃ�ŁA����ȁA���̂��I[/v]�v[KeyWait]
[FaceOff]

[text]�����Ń{�[�C�b�V����������T�͊ԈႢ�Ȃ����̎q�������̂ɁB[KeyWait]
[text]�ڂ̑O�̋S�_�́A�c�Ȃ��݂̂܂܂ł͂Ȃ��ƕ������Ă���̂ɍ��f���Ă��܂��B[KeyWait]

[Face storage="f_c902"]
[Voice storage="c0166" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�킽���A�����ꉤ�����͋S�_�B���ł����Ēj�ł����鑶�݂�����[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a059"]
[Voice storage="a1449" buf=2]
�yHaruka�z[CR]
�u[v]���A����ȁc�c�ŁA���c�c���Ƃ��c�c[/v]�v[KeyWait]
[FaceOff]

[text]�j�ł���Ȃ���A���̐g�̂ƂȂ��Ă��܂����{�N�B[KeyWait]
[text]���̎q�̐g�̂ɓ]���������A���̐��̂͗����̐���L����S�_�B[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0167" buf=2]
�yRasetsu Douji�z[CR]
�u[v]���߂�ˁ`�B�ɂ������̂��ƍD���Ȃ̂͒m���Ă����ǁA�킽���̂���Ō�����Ƃ����Ⴄ[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a042"]
[Voice storage="a1450" buf=2]
�yHaruka�z[CR]
�u[v]�Ȃ��I�@����c�c�Ȃ��B�Ȃɂ��c�c[/v]�v[KeyWait]
[FaceOff]

[text]���ꂪ�\�Ȃ̂��B�����t�Œ���A�̂����������ǁA���h�ȃy�j�X�������̋S�_�ɂ́B[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0168" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�A�z�̌����ɂāw�S�ԕP�x����炢�s�������Ƃ���������̖��x�B�킽����^�̋S�_�ւƏ��؂�����V���������[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a042"]
[Voice storage="a1451" buf=2]
�yHaruka�z[CR]
�u[v]��߁c�c�A��߂�c�c����T���A���O�����ƒ��ǂ������̂ɂ��I�@���c�c����Ȃ̂ŁA������Ƃ��Ȃ�Ă��I�I[/v]�v[KeyWait]
[FaceOff]

[text]�ޏ��A����A�ށH�@������L�̋S�_�̒��ɖ���A�����̈ӎ��ւƕK���ɑi��������B����ǁ\�\�\�A[KeyWait]

[Face storage="f_c910"]
[Voice storage="c0169" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�g����T�h�͂����Ɨɂ̂��ƍD���������̂ɁA�ɂ�����S�R�C�t���Ă���Ȃ��āA���������̂��Ƃ΂��茩�Ă�����c�c[/v]�v[KeyWait]
[FaceOff]

[text]�Ԃ��ė����̂́A�ǂ����₵���ȗ₽���Ί炾�����B[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0170" buf=2]
�yRasetsu Douji�z[CR]
�u[v]���E���E��A�킽�����S���A�󂵂Ă������[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a043"]
[Voice storage="a1452" buf=2]
�yHaruka�z[CR]
�u[v]����c�c�A�T�c�c�c�c�c�c�b�I�I[/v]�v[KeyWait]
[FaceOff]

[HSceneStart]

;EV602����
;�C�x���g�G�\��
[CgSet storage="EV602c"]
[UpDate]

;[text]���ɕ����Ԍ����̐g�̂�����񂹂��B[KeyWait]
[text]�����̐g�̂�G�ɕ��������B[KeyWait]
[text]���`������O���A�����̐O�ɏd�ˍ��킹��B[KeyWait]
[text]�S�_�̖����I�Ȏ��̂̌҂���ɖu�Y�X�����������A�����̌ҊԂւƉ������Ă���B[KeyWait]

[Face storage="f_a045"]
[Voice storage="a1453" buf=2]
�yHaruka�z[CR]
�u[v]����A��߂�b�I�@���A�����������c�c�c�c�b[/v]�v[KeyWait]
[FaceOff]

[text]���Ƃ��S���������c�Ȃ��݂��낤�ƁA�ޏ����q���Ȃ�ċ����Ȃ��B[KeyWait]

[Face storage="f_c906"]
[Voice storage="c0171" buf=2]
�yRasetsu Douji�z[CR]
�u[v]�񂭁c�c���ӁA�͂��c�c�����̐O�A�J���C�C�c�c�B�����A�B�C�A�����������c�c[/v]�v[KeyWait]
[FaceOff]

[text]�b���ɒo�񂾐O���z���āA���ǂ��Ȃ����t��H�点�Ȃ��病�������R�Ƃ���B[KeyWait]
[text]�܂����Ă��A�͂������u���E�X�����ꂽ������Ƃ��߂��ĝ���ł����B[KeyWait]

[Face storage="f_c911"]
[Voice storage="c0172" buf=2]
�yRasetsu Douji�z[CR]
�u[v]��c�c�͂��A�C�����A�C�C�c�c�B����A�����̒��ɁA���ꂽ��A�������A�C�C���낤�Ȃ��c�c�B�́A����A���͂��c�c[/v]�v[KeyWait]
[FaceOff]

[text]�J�E�p�[�ŉ����肷��T�����A�V���[�c�̏ォ�猋���̌ҊԂɎC����Ă���B[KeyWait]

[text]�ʂ���A������A�ɂ���A�ʂ��ʂ��ʂ��A�ʂ�[KeyWait]

[Face storage="f_b035"]
[Voice storage="b0127" buf=2]
�yYume�z[CR]
�u[v]��ӂ��c�c�A�ӂ��c�c�́c�c�����c�c��c�c[/v]�v[KeyWait]
[FaceOff]

[text]���₩�ȔG�ꉹ���t�ł���ƁA����ɏA�������̓f��������n�߂��B[KeyWait]
[text]�ڂ���������炵����ɍg�������A�S�n�悳�����ɔ��������B[KeyWait]

[Face storage="f_a069"]
[Voice storage="a1454" buf=3]
�yHaruka�z[CR]
�i[v]�{�N�̂������ɂ́A����ہA�Ȃ��Ȃ���������̂ɁI�@���́A�������ɂȂ���������̂ɂ��I�I[/v]�j[KeyWait]
[FaceOff]

[Face storage="f_a066"]
[Voice storage="a1455" buf=3]
�yHaruka�z[CR]
�i[v]�Ȃ̂Ɂc�c�A���̃y�j�X�ŁA�������q�����Ȃ�āA��΂Ƀ{�N�������Ȃ����I[/v]�j[KeyWait]
[FaceOff]

[text]�����������i�Ɠ{�肪�͂邩�̋��őł��k�����B[KeyWait]

[HSceneEnd]

[eval exp="f.chaptertitle='Rising Power'"]

;�w�i�F�R���r�j�q��
[BgSet storage="bg091"]
[ChrSet0 storage="b_r301"]
[UpDate]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]���ӂӁA�S�a�P���B������y���������I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]�Ⓒ�̂����ɋ����Ă�邺�B���������ɏ�̘B�C�𐶂݂����Ȃ��I�I[/i]�v[KeyWait]
[FaceOff]

[text]��S�ǂ����{�N�̏��̂�����̖z���ŋ��킹�Ȃ���A�Â��炨���Ǝ��t���Ă���B[KeyWait]

[BgmFadeOut time=1000]

[Face storage="f_a043"]
[Voice storage="a1456" buf=2]
�yHaruka�z[CR]
�u[v]�ӂ��A����c�c�Ȃ����I�I�@�G���ǂ����������b�I[/v]�v[KeyWait]
[FaceOff]

[Sound storage="se829" buf=0]
;�a�f�l�F�t�]
[playbgm storage="bgm008"]

[text]�h�N���A�ƐS���ƁA�����ĉ����̉����u����`����q�{�₪�傫�����łB[KeyWait]
[text]���̓r�[�ɁA�͂�����{�N�̑S�g���A����ȘB�C�Ŗ�������Ă����B[KeyWait]

[Face storage="f_a058"]
[Voice storage="a1457" buf=2]
�yHaruka�z[CR]
�u[v]�ǂ������������I�I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�y�yOni C�z�z[CR]
�u[i]���������������I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r004"]
�y�S�c�z[CR]
�u[i]�����������b�I�I[/i]�v[KeyWait]
[FaceOff]

[Sound storage="se213" buf=0]
[ChrReset0]
[UpDate]

[text]�܂Ƃ������U�蕥���ƁA�X���ȉ�S�ǂ����y�X�Ɛ�����񂾁B[KeyWait]

[ChrSet0 storage="b_r301"]
[UpDate]

[Face storage="f_r002"]
�yOni B�z[CR]
�u[i]���̃A�}�@�������I�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r001"]
�yOni A�z[CR]
�u[i]���ɑ��Ȃ��̂����ɘB�C�����I�H�@�������A���x�͉��l������t�����Ă����I[/i]�v[KeyWait]
[FaceOff]

[text]�{�N�̓ˑR�̔����ɁA����ɉ�S�ǂ�����т������Ă����B[KeyWait]

[Face storage="f_a058"]
[Voice storage="a1458" buf=2]
�yHaruka�z[CR]
�u[v]�n�@�A�A�b�I[/v]�v[KeyWait]
[FaceOff]

[Sound storage="se228" buf=0]
[ChrReset0]
[UpDate]

[Face storage="f_r001"]
�y�S�d�z[CR]
�u[i]���Ⴄ���I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
�y�S�e�z[CR]
�u[i]���Ђ����I�I[/i]�v[KeyWait]
[FaceOff]

[Face storage="f_r003"]
�y�S�f�z[CR]
�u[i]�Ђ��Ⴀ���I[/i]�v[KeyWait]
[FaceOff]

[text]���ガ�̉E�肪��M�����B[KeyWait]
[text]���̓r�[�A���ꂵ����S�ǂ����A�������̓��Ђɐ��f�����B[KeyWait]

[Face storage="f_a074"]
[Voice storage="a1459" buf=2]
�yHaruka�z[CR]
�u[v]���A�߂������I�@�͂��c�c�B�{�N�̗͂��b�I�I[/v]�v[KeyWait]
[FaceOff]

[Face storage="f_a057"]
[Voice storage="a1460" buf=2]
�yHaruka�z[CR]
�i[v]�������댯�����Ďv������c�c�B���������Ȃ�������āA�v������c�c�B���A�^�����c�c�Ȃ��āc�c�B�������͂��A�g�̂̉��c�c������I[/v]�j[KeyWait]
[FaceOff]

[text]��̐▽�̏�ԂŊ�]�̗͂��g�ɏh�����B�{�N�́A���̗͂��\�\�\�I[KeyWait]

;���y����3�z�i�S�a��̑����A�o�邩�A�o�Ȃ����H�j

;�`�U��i��B�y6-2 �o�Ȃ����[�g�ցz[CR]

;�a�W��������B�y6-3 �o�郋�[�g�ցz[CR]

[SelectStart option=2]
[SelectOption target=*�I�����P�� num=1 text="�w�U��i��x"]
[SelectOption target=*�I�����P�� num=2 text="�w�W��������x"]
[SelectEnd]

*�I�����P��
[OptionTarget num=1]
[jump storage="6-02.ks"]

*�I�����P��
[OptionTarget num=2]
[jump storage="6-03.ks"]


