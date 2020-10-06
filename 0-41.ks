[if exp="typeof(global.intoro_object) == 'undefined'"]
[iscript]

var intoro_thumb_left = 0;
var intoro_thumb_top = 0;
var intoro_thumb_width = 1366;
var intoro_thumb_height = 768;

class IntoroLayerPlugin extends KAGPlugin{

	var hidingLayer;
	var showingLayer;
	var hidingDelta = 0;
	var showingDelta = 0;
	var timer;

	function IntoroLayerPlugin(){
		timer = new Timer(onTimer,'');
		timer.enabled = false;
		timer.interval = 10;

	}

	function init(){

		var par = kag.fore.base;

		hidingLayer = new Layer(kag, par);
		hidingLayer.width = par.width;
		hidingLayer.height = par.height;
		hidingLayer.visible= false;
		hidingLayer.absolute = 2000000;
		hidingLayer.hitThreshold = 256;

		showingLayer = new Layer(kag, par);
		showingLayer.width = par.width;
		showingLayer.height = par.height;
		showingLayer.visible= false;
		showingLayer.absolute = 2001000;
		showingLayer.hitThreshold = 256;

		hidingLayer.fillRect( 0, 0, intoro_thumb_width, intoro_thumb_height, 0x00000000);
		showingLayer.fillRect(0, 0, intoro_thumb_width, intoro_thumb_height, 0x00000000);

	}

	function onEnter(num){

		if(showingLayer===void)return;

		var storage = (num<10) ? "intoro_mille-feuille_0"+num : "intoro_mille-feuille"+num;

		showingLayer.left = intoro_thumb_left;
		showingLayer.top  = intoro_thumb_top;
		showingLayer.loadImages(storage);
		showingLayer.opacity = 0;
		showingLayer.visible = true;
		showingDelta = 10;

		timer.enabled = true;

	}

	function onLeave{

		showingLayer.visible = false;

		hidingLayer.colorRect(0, 0, intoro_thumb_width, intoro_thumb_height, 0 ,hidingLayer.opacity-255);
		hidingLayer.pileRect(0, 0, showingLayer, 0, 0, showingLayer.width, showingLayer.height, showingLayer.opacity);
		hidingLayer.left = intoro_thumb_left;
		hidingLayer.top  = intoro_thumb_top;
		hidingLayer.opacity = 255;
		hidingLayer.visible = true;
		hidingDelta = -10;

		showingLayer.fillRect(0, 0, intoro_thumb_width, intoro_thumb_height, 0x00000000);
		showingLayer.opacity = 0;
		showingDelta = 0;

		timer.enabled = true;
	}

	function onTimer(){

		if(hidingDelta!=0){
			var opa;
			opa = hidingLayer.opacity + hidingDelta;
			if(opa > 255){
				opa = 255;
				hidingDelta = 0;
			}
			if(opa < 0){
				opa = 0;
				hidingDelta = 0;
				hidingLayer.visible = false;
				hidingLayer.fillRect(0, 0, intoro_thumb_width, intoro_thumb_height, 0x0000000);
			}
			hidingLayer.opacity = opa;
		}

		if(showingDelta!=0){
			var opa;
			opa = showingLayer.opacity + showingDelta;
			if(opa > 255){
				opa = 255;
				showingDelta = 0;
			}
			if(opa < 0){
				opa = 0;
				showingDelta = 0;
				showingLayer.visible = false;
			}
			showingLayer.opacity = opa;
		}

		if(hidingDelta==0 && showingDelta==0){
			timer.enabled = false;
		}

	}

	function intoroHide(){
		hidingLayer.visible = false;
		showingLayer.visible = false;

//		kag.fore.layers[1].loadImages(%[storage:"_tr"]);
//		kag.fore.layers[1].width = 800;
//		kag.fore.layers[1].height = 600;
		kag.fore.layers[1].operateRect(intoro_thumb_left, intoro_thumb_top, hidingLayer, 0, 0, intoro_thumb_width , intoro_thumb_height,omAlpha, hidingLayer.opacity);
		kag.fore.layers[1].operateRect(intoro_thumb_left, intoro_thumb_top, showingLayer, 0, 0, intoro_thumb_width, intoro_thumb_height,omAlpha, showingLayer.opacity);
		kag.fore.layers[1].visible = true;

		hidingLayer.opacity = 0;
		showingLayer.opacity = 0;

	}

}


kag.addPlugin(global.intoro_object = new IntoroLayerPlugin(kag));


[endscript]
[endif]

[return]

