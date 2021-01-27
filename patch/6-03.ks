
*scene6-03|
[eval exp="f.chaptertitle='Should I Attack the Gaki or Rasetsu?'"]

;êŠFƒRƒ“ƒrƒj‘qŒÉ
;ŠÔF•ú‰ÛŒã
;•‘•F—‡ƒj[ƒ\

[Face storage="f_a007"]
[Voice storage="a1549" buf=2]
yHarukaz[CR]
u[v]Haaaaaaah![/v]v[KeyWait]
[FaceOff]

[text]I focused the enormous Renki filling my body into my fist.[KeyWait]

[Sound storage="se009" buf=0]

[ChrSet0 storage="b_a241"]
[UpDate]

[Face storage="f_a026"]
[Voice storage="a1550" buf=2]
yHarukaz[CR]
u[v]Oooooooh![/v]v[KeyWait]
[FaceOff]

[text]After a blinding flash of Renki, a large, wide-bladed, blood-red sword appeared in my hand.[KeyWait]

[Sound storage="se219" buf=1]

[text]The moment I gripped its hilt, the necessary skills to fight against oni flowed into my mind.[KeyWait]

[Face storage="f_c904"]
[Voice storage="c0177" buf=2]
yRasetsu Doujiz[CR]
u[v]The Oni-Cutting Blade... Zanshou...[/v]v[KeyWait]
[FaceOff]

[text]Even the kijin seemed nervous when faced with my sword, which had an ominous miasma flowing out of it.[KeyWait]

[Face storage="f_r001"]
yOni Az[CR]
u[i]S-Shit... What the hell, i-it's the Oni-Cutting Blade![/i]v[KeyWait]
[FaceOff]

[Face storage="f_r002"]
yOni Bz[CR]
u[i]I ain't scared of that! C'mon, hurry up and suck my dick![/i]v[KeyWait]
[FaceOff]

[text]After looking worried for a second, the gaki all shouted and attacked me.[KeyWait]

[Face storage="f_a007"]
[Voice storage="a1551" buf=2]
yHarukaz[CR]
u[v]Foolish oni who dare to target Yume! I'll destroy you with Zanshou's blade! Prepare yourselves![/v]v[KeyWait]
[FaceOff]

;šy•ªŠò4zi—…™‹‚ÖUŒ‚H@G‹›‹S‚ğUŒ‚Hj

;‚`—…™‹“¶q‚ğUŒ‚By6-4 —ËJƒ‹[ƒg‚Öz[CR]

;‚a‰ì‹S‚ğUŒ‚By6-6 ³‹Kƒ‹[ƒg‚Öz[CR]

[SelectStart option=2]
[SelectOption target=*‘I‘ğˆ‚P‚ num=1 text="Attack Rasetsu Douji"]
[SelectOption target=*‘I‘ğˆ‚P‚‚ num=2 text="Attack the gaki"]
[SelectEnd]

*‘I‘ğˆ‚P‚
[OptionTarget num=1]
[jump storage="6-04.ks"]

*‘I‘ğˆ‚P‚‚
[OptionTarget num=2]
[jump storage="6-06.ks"]


