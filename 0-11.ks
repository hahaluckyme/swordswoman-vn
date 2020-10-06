
[iscript]

tf.offset = kag.fore.messages[2].lineSpacing;

var cg_col = 4;
var cg_row = 3;
var cg_page_num = 5;
var background = ["omake_cg_bg01","omake_cg_bg02","omake_cg_bg03","omake_cg_bg04","omake_cg_bg05"];

var cglocate = [
	[
		["EV101a","EV101b","EV101c"],
		["EV102"],
		["EV103a","EV103b"],
		["EV104a","EV104b","EV104c","EV104d","EV104e"],
		["EV201a","EV201b","EV201c","EV201d"],
		["EV202a","EV202b","EV202c","EV202d","EV202e","EV202f","EV202g"],
		["EV203a","EV203b","EV203c","EV203d"],
		["EV301a","EV301b","EV301c"],
		["EV302a","EV302b","EV302c","EV302d"],
		["EV303"],
		["EV304a","EV304b","EV304c","EV304d","EV304e"],
		["EV401a","EV401b","EV401c"]
	],[
		["EV402a","EV402b","EV402c","EV402d"],
		["EV403a","EV403b","EV403c","EV403c2","EV403d","EV403e","EV403f","EV403g","EV403h"],
		["EV404a","EV404b"],
		["EV501"],
		["EV502a","EV502b","EV502c","EV502d","EV502d2","EV502e","EV502f"],
		["EV601a","EV601b","EV601c","EV601d","EV601e","EV601f","EV601g","EV601h","EV601i","EV601j","EV601k","EV601l","EV601m"],
		["EV602a","EV602b","EV602c"],
		["EV603a","EV603b"],
		["EV604a","EV604b","EV604c","EV604d","EV604e","EV604f","EV604f2","EV604g","EV604h","EV604i","EV604j"],
		["EV500","EV605a","EV605b","EV605c","EV605d","EV605e"],
		["EV606a"],
		["EV606b","EV606c","EV606d","EV606e","EV606f","EV606g","EV606h"]
	],[
		["EV607a","EV607b","EV607c"],
		["EV608a","EV608b","EV608c"],
		["EV609a","EV609a2","EV609a3","EV609b","EV609c"],
		["EV700"],
		["EV701a","EV701b","EV701c"],
		["EV702a","EV702b","EV702c","EV702c2","EV702d","EV702e","EV702f","EV702g","EV702h","EV702i","EV702j","EV702k","EV702l","EV702m","EV702n","EV702o","EV702p"],
		["EV703"],
		["EV801a","EV801b","EV801c","EV801c2","EV801d","EV801e","EV801e2","EV801f"],
		["EV802"],
		["EV803a","EV803b","EV803c"],
		["EV804a","EV804b","EV804c","EV804d"],
		["EV805a","EV805b","EV805c"]
	],[
		["EV806a","EV806b","EV806c"],
		["EV807a","EV807b","EV807c","EV807d"],
		["EV808a","EV808b","EV808c"],
		["EV809a","EV809b","EV809c","EV809d","EV809e","EV809f"],
		["EV810a","EV810b","EV810c"],
		["EV811a","EV811b","EV811c"],
		["EV812a","EV812b"],
		["EV813a","EV813b","EV813c","EV813d","EV813e"],
		["EV813f"],
		["EV814a","EV814b","EV814c","EV814d","EV814d2","EV814e","EV814f"],
		["EV815a","EV815b","EV815c","EV815d","EV815e","EV815e2","EV815f"],
		["EV816a","EV816b","EV816c"]
	],[
		["EV817a","EV817b"],
		[],
		[],
		[],
		[],
		[],
		[],
		[],
		[],
		[],
		[],
		[]
	]
];


tf.thumbnailfileheader = "omake_cg_thumb_";

function cgOpenCheck(page,loc){

	var i;
	var tmp=(cglocate[page][loc].count!=0)?1:0;

	for(i=0;i<cglocate[page][loc].count;i++)
	{
		tmp *= (sf.cgOpenFlag[cglocate[page][loc][i].toLowerCase()]!==void)?sf.cgOpenFlag[cglocate[page][loc][i].toLowerCase()]:0;
	}
	return tmp;

}


function getCgNum(page,loc){

	return (cglocate[page][loc][0]!==void)?cglocate[page][loc][0].substring(2,3):null;

}


function cgNext(page,loc,count){

	var cgsubnum = cglocate[page][loc].count;
	var cgnum = cglocate[page].count;
	var pagenum = cglocate.count;

	if (count < cgsubnum-1){
		tf.cgsubnum++;
		return;
	}else{
		tf.cgsubnum = 0;

		do{
			loc++;
			if (loc == cgnum){
				loc = 0;
				page++;
				if (page == pagenum){
					page = 0;
				}
			}
		}while(cgOpenCheck(page,loc)==0);

		f.cgModePage = page + 1;
		tf.cgnum = loc;

		return;
	}
}


function cgBack(page,loc,count){

	var cgsubnum = cglocate[page][loc].count;
	var cgnum = cglocate[page].count;
	var pagenum = cglocate.count;

	if (tf.cgsubnum > 0){
		tf.cgsubnum--;
		return;
	}else{

		do{
			loc--;
			if (loc < 0){
				page--;
				if (page < 0){
					page = pagenum-1;
				}
				loc = cglocate[page].count-1;
			}
		}while(cgOpenCheck(page,loc)==0);

		f.cgModePage = page + 1;
		tf.cgnum = loc;
		tf.cgsubnum = cglocate[page][tf.cgnum].count - 1;

		return;
	}
}


function checkTransMethod(filename){
	
	if(filename!=""){
		if(filename.substring(filename.length - 1 , 1) == '_'){
			return 1;
		}else{
			return 0;
		}
	}
	return 0;

}


var cgModeConductor = new CgModeConductor(kag,kag.tagHandlers);

[endscript]

*init
[eval exp="tf.fadeControl=500"]

*start
[eval exp="f.inCgMode=1"]
[eval exp="tf.tmp=''"]
[rclick jump=true target="*exit" enabled=true]
[er]
;[trans method=crossfade time=0][wt]

;
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;

*page_make
[freeimage layer=1 page=back]
[freeimage layer=3 page=back]
[position layer="message3" page=back left=0 top=0 width=800 height=600 color=0x000000 margint=0 marginl=0 opacity=0 frame="&background[f.cgModePage-1]"]
[current  layer="message3" page=back]

[eval exp="tf.y=0"]
*page1_loop1
[if exp="tf.y>=cg_row"][jump target="*page1_loop1end"][endif]
[eval exp="tf.x=0"]
*page1_loop2
[if exp="tf.x>=cg_col"][jump target="*page1_loop2end"][endif]
[eval exp="tf.cgindex = tf.x+tf.y*cg_col"]
[eval exp="tf.cgOpenCheck = cgOpenCheck(f.cgModePage-1,tf.cgindex)"]
[eval exp="tf.cgnum = getCgNum(f.cgModePage-1,tf.cgindex)"]
[eval exp="tf.thumb = tf.thumbnailfileheader+cglocate[f.cgModePage-1][tf.cgindex][0]"]

[locate x=&(244*tf.x+202) y=&(150*tf.y+149) cond="tf.cgOpenCheck==1&&tf.cgnum!=null"]
[cgmodebutton clickse=sys_decide graphic=&(tf.thumb) target=&("*clicked"+tf.cgindex) rightclick=*exit cond="tf.cgOpenCheck==1&&tf.cgnum!=null"]
[eval exp="tf.x++"]
[jump target="*page1_loop2"]
*page1_loop2end
[eval exp="tf.y++"]
[jump target="*page1_loop1"]
*page1_loop1end

[locate x=384  y=609][button clickse=sys_decide2 graphic=omake_cg_mode1a rightclick=*exit target=*toVoicePlayMode1 cond="sf.cgModeVoicePlay != 1"]
[locate x=384  y=609][button clickse=sys_decide2 graphic=omake_cg_mode1b rightclick=*exit target=*toVoicePlayMode0 cond="sf.cgModeVoicePlay == 1"]

[locate x=384  y=637][button clickse=sys_decide2 graphic=omake_cg_mode2a rightclick=*exit target=*toSequenceMode1 cond="sf.cgModeContinuous != 1"]
[locate x=384  y=637][button clickse=sys_decide2 graphic=omake_cg_mode2b rightclick=*exit target=*toSequenceMode0 cond="sf.cgModeContinuous == 1"]

[locate x=193  y=593][button clickse=sys_decide graphic="omake_pageback" rightclick=*exit target="*pageback"]
[locate x=1004 y=593][button clickse=sys_decide graphic="omake_pagenext" rightclick=*exit target="*pagenext"]
[locate x=860  y=680][button clickse=sys_decide graphic="omake_exit" recthit=false rightclick=*exit target=*exit]

[locate x=193  y=700][button2 clickse=sys_decide graphic=general_button1 color=0xffffff text="デバッグ用ＣＧオープン" rightclick=*exit target="*cgOpen" cond="tf.debugMode==1"]

[trans method=crossfade time=&(tf.fadeControl)]
[DisableClick][wt][EnableClick]
[eval exp="tf.fadeControl=150"]

[jump target="*menu"]


;
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;


*menu
[s]


*toSequenceMode1
[eval exp="sf.cgModeContinuous = 1"]
[jump target=*start]


*toSequenceMode0
[eval exp="sf.cgModeContinuous = 0"]
[jump target=*start]



*toVoicePlayMode1
[eval exp="sf.cgModeVoicePlay = 1"]
[jump target=*start]


*toVoicePlayMode0
[eval exp="sf.cgModeVoicePlay = 0"]
[jump target=*start]


*pageback
[eval exp="f.cgModePage--"]
[if exp="f.cgModePage==0"]
	[eval exp="f.cgModePage=cg_page_num"]
[endif]
[jump target="*start"]


*pagenext
[eval exp="f.cgModePage++"]
[if exp="f.cgModePage>cg_page_num"]
	[eval exp="f.cgModePage=1"]
[endif]
[jump target="*start"]


;
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;

*cgShow
[eval exp="f.inCgMode=0"]
[eval exp="f.nowShowingCgInCgMode=1"]
[eval exp="tf.fadeControl=500"]
[rclick jump=true target="*start" enabled=true]
;[position layer="message3" page=back left=0 top=0 width=800 height=600 color=0x000000 margint=0 marginl=0 opacity=0 frame="&(cglocate[f.cgModePage-1][tf.cgnum][tf.cgsubnum])"]
[position layer="message3" page=back left=0 top=0 width=800 height=600 color=0x000000 margint=0 marginl=0 opacity=0 frame=""]
[eval exp="tf.cgName = cglocate[f.cgModePage-1][tf.cgnum][tf.cgsubnum]"]

[eval exp="tf.cgName2 = tf.cgName"]
;アヘ顔の処理
[if exp="sf.アヘ顔表示無し==true"]
	[eval exp="tf.cgName2 += '$'" cond="Storages.isExistentStorage(tf.cgName + '$.png')==true"]
[endif]

[image layer=1 page=back storage=&tf.cgName2 left=0 top=0]
[layopt layer=1 page=back visible=true]

;翔子の眼鏡無し用処理
[if exp="Storages.isExistentStorage(tf.cgName2 + '@.png')==true"]
	[image layer=3 page=back visible=true  left=0 top=0 storage="&(tf.cgName2 + '@')" cond="sf.翔子眼鏡無し==true"]
	[image layer=3 page=back visible=false left=0 top=0 storage="&(tf.cgName2 + '@')" cond="sf.翔子眼鏡無し==false"]
[else]
	[freeimage layer=3 page=back]
	[eval exp="kag.back.layers[3].type = ltAlpha"]
	[eval exp="kag.back.layers[3].fillRect(0,0,800,600,0)"]
[endif]

;陰毛表示処理
[if exp="Storages.isExistentStorage(tf.cgName2 + '#.png')==true"]
	[image layer=4 page=back visible=true  left=0 top=0 storage="&(tf.cgName2 + '#')" cond="sf.陰毛表示無し==true"]
	[image layer=4 page=back visible=false left=0 top=0 storage="&(tf.cgName2 + '#')" cond="sf.陰毛表示無し==false"]
[else]
	[freeimage layer=4 page=back]
	[eval exp="kag.back.layers[4].type = ltAlpha"]
	[eval exp="kag.back.layers[4].fillRect(0,0,800,600,0)"]
[endif]

;トランジション
[wt cankip=false]
[if exp="(tf.cg_nextAction==1)||(tf.cg_nextAction==0)||(tf.cg_nextAction===void)"]
	[trans method=crossfade time=500 cond="checkTransMethod(cglocate[f.cgModePage-1][tf.cgnum][tf.cgsubnum])==0"]
	[trans method=scroll from=bottom stay=nostay time=1000 cond="checkTransMethod(cglocate[f.cgModePage-1][tf.cgnum][tf.cgsubnum])==1"]
[endif]
[if exp="(tf.cg_nextAction==-1)"]
	[trans method=crossfade time=500 cond="checkTransMethod(tf.tmp)==0"]
	[trans method=scroll from=top stay=nostay time=1000 cond="checkTransMethod(tf.tmp)==1"]
[endif]
[wt cankip=false]


[iscript]

	if(+sf.cgModeVoicePlay==1 && Storages.isExistentStorage(tf.cgName + ".ks")){
		cgModeConductor.loadScenario(tf.cgName + ".ks");
		cgModeConductor.stopping = false;
		cgModeConductor.running = true;
		cgModeConductor.clearCallStack();
		cgModeConductor.startProcess(true);
	}

[endscript]

;入力待ち
[waittrig name="cg_trigger" canskip="true" onskip="tf.cg_nextAction=1"]
[eval exp="cgModeConductor.stop()"]
[eval exp="cgModeConductor.clear()"]
[fadeoutse buf=0 time=500]
[fadeoutse buf=1 time=500]
[fadeoutse buf=2 time=500]
[fadeoutse buf=3 time=500]
[fadeoutse buf=4 time=500]
[fadeoutse buf=5 time=500]
[fadeoutse buf=6 time=500]
[fadeoutse buf=7 time=500]
[fadeoutse buf=8 time=500]


[eval exp="f.nowShowingCgInCgMode=0"]
[if exp="tf.cg_nextAction==1"]

	[jump target=*start cond="sf.cgModeContinuous==0 && cglocate[f.cgModePage-1][tf.cgnum][tf.cgsubnum+1]===void"]

	[eval exp="tf.tmp=cglocate[f.cgModePage-1][tf.cgnum][tf.cgsubnum]"]
	[eval exp="cgNext(f.cgModePage-1,tf.cgnum,tf.cgsubnum)"]

	[if exp="sf.cgModeContinuous==0"]
		[if exp="tf.cgnum==0 && tf.cgsubnum==0"]
			[eval exp="cgBack(f.cgModePage-1,tf.cgnum,tf.cgsubnum)"]
			[jump target=*start]
		[endif]
		[if exp="tf.cgsubnum==0"]
			[jump target=*start]
		[endif]
	[endif]

	[if exp="tf.tmp==cglocate[f.cgModePage-1][tf.cgnum][tf.cgsubnum]"]
		[jump target=*start]
	[endif]
	
[endif]

[if exp="tf.cg_nextAction==0"]
	[jump target=*start]
[endif]

[if exp="tf.cg_nextAction==-1"]

	[if exp="tf.cgsubnum==0&&sf.cgModeContinuous==0"]
		[jump target=*start]
	[endif]

	[eval exp="tf.tmp=cglocate[f.cgModePage-1][tf.cgnum][tf.cgsubnum]"]
	[eval exp="cgBack(f.cgModePage-1,tf.cgnum,tf.cgsubnum)"]

	[if exp="tf.tmp==cglocate[f.cgModePage-1][tf.cgnum][tf.cgsubnum]"]
		[jump target=*start]
	[endif]

[endif]



[jump target=*cgShow]

*exit

[DisableClick]

[eval exp="tf.tmp=''"]
[rclick jump=false]
[eval exp="kag.clickCount=0"]
[eval exp="f.inCgMode=0"]
[eval exp="tf.fadeControl=500"]
[return]

;
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;

*clicked0
[eval exp="tf.cgnum=0"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked1
[eval exp="tf.cgnum=1"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked2
[eval exp="tf.cgnum=2"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked3
[eval exp="tf.cgnum=3"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked4
[eval exp="tf.cgnum=4"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked5
[eval exp="tf.cgnum=5"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked6
[eval exp="tf.cgnum=6"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked7
[eval exp="tf.cgnum=7"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked8
[eval exp="tf.cgnum=8"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked9
[eval exp="tf.cgnum=9"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked10
[eval exp="tf.cgnum=10"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked11
[eval exp="tf.cgnum=11"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked12
[eval exp="tf.cgnum=12"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked13
[eval exp="tf.cgnum=13"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked14
[eval exp="tf.cgnum=14"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked15
[eval exp="tf.cgnum=15"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked16
[eval exp="tf.cgnum=16"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked17
[eval exp="tf.cgnum=17"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked18
[eval exp="tf.cgnum=18"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]

*clicked19
[eval exp="tf.cgnum=19"]
[eval exp="tf.cgsubnum=0"]
[jump target=*cgShow]


;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;

*cgOpen

[iscript]

for(var y=0 ; y<cg_row ; y++){
	for(var x=0 ; x<cg_col ; x++){
		for(var i=0 ; i<cglocate[f.cgModePage-1][y*cg_col+x].count ; i++){
			sf.cgOpenFlag[cglocate[f.cgModePage-1][y*cg_col+x][i].toLowerCase()] = 1;
		}
	}
}

[endscript]
[jump target="*start"]


;
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;


