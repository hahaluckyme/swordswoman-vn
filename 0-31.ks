;[fadeoutse buf=0 time=500]
;[wf]

[eval exp="tf.nowBgmMode=0"]
[eval exp="tf.nowSelectedBgm=1"]
[eval exp="tf.nowPlaying=0"]
[eval exp="tf.nowPausing=0"]
[eval exp="tf.bgmtitle=''"]

[freeimage layer=1 page=back]
[freeimage layer=3 page=back]
[position layer="message3" page=back left=0 top=0 width=800 height=600 color=0x000000 margint=0 marginl=0 opacity=0 frame="omake_bgm_bg"]
[current  layer="message3" page=back]


*start
[rclick jump=true target="*exit" enabled=true]
[er]

[locate x=255 y=184][button graphic="omake_bgm_item01a" target=*play01 rightclick=*exit cond="tf.nowSelectedBgm!=1"]
[locate x=255 y=184][button graphic="omake_bgm_item01b" target=*play01 rightclick=*exit cond="tf.nowSelectedBgm==1"]

[locate x=255 y=244][button graphic="omake_bgm_item02a" target=*play02 rightclick=*exit cond="tf.nowSelectedBgm!=2"]
[locate x=255 y=244][button graphic="omake_bgm_item02b" target=*play02 rightclick=*exit cond="tf.nowSelectedBgm==2"]

[locate x=255 y=304][button graphic="omake_bgm_item03a" target=*play03 rightclick=*exit cond="tf.nowSelectedBgm!=3"]
[locate x=255 y=304][button graphic="omake_bgm_item03b" target=*play03 rightclick=*exit cond="tf.nowSelectedBgm==3"]

[locate x=255 y=364][button graphic="omake_bgm_item04a" target=*play04 rightclick=*exit cond="tf.nowSelectedBgm!=4"]
[locate x=255 y=364][button graphic="omake_bgm_item04b" target=*play04 rightclick=*exit cond="tf.nowSelectedBgm==4"]

[locate x=255 y=424][button graphic="omake_bgm_item05a" target=*play05 rightclick=*exit cond="tf.nowSelectedBgm!=5"]
[locate x=255 y=424][button graphic="omake_bgm_item05b" target=*play05 rightclick=*exit cond="tf.nowSelectedBgm==5"]

[locate x=255 y=484][button graphic="omake_bgm_item06a" target=*play06 rightclick=*exit cond="tf.nowSelectedBgm!=6"]
[locate x=255 y=484][button graphic="omake_bgm_item06b" target=*play06 rightclick=*exit cond="tf.nowSelectedBgm==6"]


[locate x=691 y=184][button graphic="omake_bgm_item07a" target=*play07 rightclick=*exit cond="tf.nowSelectedBgm!=7"]
[locate x=691 y=184][button graphic="omake_bgm_item07b" target=*play07 rightclick=*exit cond="tf.nowSelectedBgm==7"]

[locate x=691 y=244][button graphic="omake_bgm_item08a" target=*play08 rightclick=*exit cond="tf.nowSelectedBgm!=8"]
[locate x=691 y=244][button graphic="omake_bgm_item08b" target=*play08 rightclick=*exit cond="tf.nowSelectedBgm==8"]

[locate x=691 y=304][button graphic="omake_bgm_item09a" target=*play09 rightclick=*exit cond="tf.nowSelectedBgm!=9"]
[locate x=691 y=304][button graphic="omake_bgm_item09b" target=*play09 rightclick=*exit cond="tf.nowSelectedBgm==9"]

[locate x=691 y=364][button graphic="omake_bgm_item10a" target=*play10 rightclick=*exit cond="tf.nowSelectedBgm!=10"]
[locate x=691 y=364][button graphic="omake_bgm_item10b" target=*play10 rightclick=*exit cond="tf.nowSelectedBgm==10"]

[locate x=691 y=424][button graphic="omake_bgm_item11a" target=*play11 rightclick=*exit cond="tf.nowSelectedBgm!=11"]
[locate x=691 y=424][button graphic="omake_bgm_item11b" target=*play11 rightclick=*exit cond="tf.nowSelectedBgm==11"]

[locate x=691 y=484][button graphic="omake_bgm_item12a" target=*play12 rightclick=*exit cond="tf.nowSelectedBgm!=12"]
[locate x=691 y=484][button graphic="omake_bgm_item12b" target=*play12 rightclick=*exit cond="tf.nowSelectedBgm==12"]


[locate x=577 y=596][button graphic="omake_bgm_rwd"  recthit=false rightclick=*exit target=*rwd]
[locate x=714 y=596][button graphic="omake_bgm_fwd"  recthit=false rightclick=*exit target=*fwd]

[locate x=653 y=582]
[if exp="tf.nowPlaying==1 && tf.nowPausing==0"]
	[button graphic="omake_bgm_pause" recthit=false rightclick=*exit target=*play]
[else]
	[button graphic="omake_bgm_play"  recthit=false rightclick=*exit target=*play]
[endif]

[locate x=507 y=594][button graphic="omake_bgm_stop" recthit=false rightclick=*exit target=*stop]
;[locate x=168 y=502][button graphic="omake_bgm_exit" recthit=false rightclick=*exit target=*exit]
[locate x=860 y=680][button clickse=sys_decide graphic="omake_exit" recthit=false rightclick=*exit target=*exit]

[if exp="sf.bgmVolume!=0"]
	[locate x=811 y=603]
	[button graphic="omake_bgm_down" recthit=false rightclick=*exit target=*volume_down]
[else]
	[locate x=811 y=592]
	[graph  storage="omake_bgm_down2" char=false rightclick=*exit]
[endif]

[if exp="sf.bgmVolume!=10"]
	[locate x=868 y=603]
	[button graphic="omake_bgm_up" recthit=false rightclick=*exit target=*volume_up]
[else]
	[locate x=868 y=592]
	[graph  storage="omake_bgm_up2" char=false rightclick=*exit]
[endif]


[trans method=crossfade time=500 cond="tf.nowBgmMode==0"]
[trans method=crossfade time=0   cond="tf.nowBgmMode==1"]
[DisableClick][wt][EnableClick]

[eval exp="tf.nowBgmMode=1"]

[s]

*exit

[rclick jump=false]
[freeimage page=back layer=1]
[freeimage page=back layer=2]
[eval exp="kag.clickCount=0"]
[eval exp="f.回想モードページ表示中=0"]
[return]


*play01
[playbgm storage="bgm001"]
[eval exp="tf.nowSelectedBgm=1"]
[eval exp="tf.nowPlaying=1"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]

*play02
[playbgm storage="bgm002"]
[eval exp="tf.nowSelectedBgm=2"]
[eval exp="tf.nowPlaying=1"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]

*play03
[playbgm storage="bgm003"]
[eval exp="tf.nowSelectedBgm=3"]
[eval exp="tf.nowPlaying=1"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]

*play04
[playbgm storage="bgm004"]
[eval exp="tf.nowSelectedBgm=4"]
[eval exp="tf.nowPlaying=1"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]

*play05
[playbgm storage="bgm005"]
[eval exp="tf.nowSelectedBgm=5"]
[eval exp="tf.nowPlaying=1"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]

*play06
[playbgm storage="bgm006"]
[eval exp="tf.nowSelectedBgm=6"]
[eval exp="tf.nowPlaying=1"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]

*play07
[playbgm storage="bgm007"]
[eval exp="tf.nowSelectedBgm=7"]
[eval exp="tf.nowPlaying=1"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]

*play08
[playbgm storage="bgm008"]
[eval exp="tf.nowSelectedBgm=8"]
[eval exp="tf.nowPlaying=1"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]

*play09
[playbgm storage="bgm009"]
[eval exp="tf.nowSelectedBgm=9"]
[eval exp="tf.nowPlaying=1"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]

*play10
[playbgm storage="bgm010"]
[eval exp="tf.nowSelectedBgm=10"]
[eval exp="tf.nowPlaying=1"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]

*play11
[playbgm storage="bgm011"]
[eval exp="tf.nowSelectedBgm=11"]
[eval exp="tf.nowPlaying=1"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]

*play12
[playbgm storage="bgm012"]
[eval exp="tf.nowSelectedBgm=12"]
[eval exp="tf.nowPlaying=1"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]

*play13
[playbgm storage="bgm013"]
[eval exp="tf.nowSelectedBgm=13"]
[eval exp="tf.nowPlaying=1"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]


*play
[jump target="*pause" cond="tf.nowPlaying==1 && tf.nowPausing==0"]
[jump target="*resume" cond="tf.nowPlaying==1 && tf.nowPausing==1"]

[jump target="*play01" cond="tf.nowSelectedBgm==1"]
[jump target="*play02" cond="tf.nowSelectedBgm==2"]
[jump target="*play03" cond="tf.nowSelectedBgm==3"]
[jump target="*play04" cond="tf.nowSelectedBgm==4"]
[jump target="*play05" cond="tf.nowSelectedBgm==5"]
[jump target="*play06" cond="tf.nowSelectedBgm==6"]
[jump target="*play07" cond="tf.nowSelectedBgm==7"]
[jump target="*play08" cond="tf.nowSelectedBgm==8"]
[jump target="*play09" cond="tf.nowSelectedBgm==9"]
[jump target="*play10" cond="tf.nowSelectedBgm==10"]
[jump target="*play11" cond="tf.nowSelectedBgm==11"]
[jump target="*play12" cond="tf.nowSelectedBgm==12"]
[jump target="*play13" cond="tf.nowSelectedBgm==13"]

[eval exp="tf.nowPlaying=1"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]


*pause
[pausebgm]
[eval exp="tf.nowPausing=1"]
[jump target="*start"]


*resume
[resumebgm]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]


*stop
[stopbgm]
[eval exp="tf.nowPlaying=0"]
[eval exp="tf.nowPausing=0"]
[jump target="*start"]


*volume_down
[eval exp="sf.bgmVolume -= 1" cond="sf.bgmVolume > 0"]
[bgmopt gvolume=&"f.volumeMatrix[sf.bgmVolume]"]
[jump target="*start"]

*volume_up
[eval exp="sf.bgmVolume += 1" cond="sf.bgmVolume < 10"]
[bgmopt gvolume=&"f.volumeMatrix[sf.bgmVolume]"]
[jump target="*start"]


*rwd
[jump target=*rwd2 cond="tf.nowPausing==0"]
[stopbgm]
[eval exp="tf.nowPlaying=0"]
[eval exp="tf.nowPausing=0"]

*rwd2
[eval exp="tf.nowSelectedBgm=(+tf.nowSelectedBgm!=1)? (string)(+tf.nowSelectedBgm - 1) : 12"]
[jump target="&('*play' + ((+tf.nowSelectedBgm<10)? '0' + tf.nowSelectedBgm : tf.nowSelectedBgm))" cond="tf.nowPlaying==1"]
[jump target="*start"]


*fwd
[jump target=*fwd2 cond="tf.nowPausing==0"]
[stopbgm]
[eval exp="tf.nowPlaying=0"]
[eval exp="tf.nowPausing=0"]

*fwd2
[eval exp="tf.nowSelectedBgm=(+tf.nowSelectedBgm!=12)? (string)(+tf.nowSelectedBgm + 1) : 1"]
[jump target="&('*play' + ((+tf.nowSelectedBgm<10)? '0' + tf.nowSelectedBgm : tf.nowSelectedBgm))" cond="tf.nowPlaying==1"]
[jump target="*start"]

