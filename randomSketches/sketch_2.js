let p5Canvas;
let canvasDom,canvasDomRect;

let hSpan,vSpan,lSpan;
let hSlider,vSlider,lSlider

let h=0,v=0,l=0;
let rgb;

function setup() {
  p5Canvas=createCanvas(800,500,WEBGL);
  p5Canvas.parent("field");
  document.querySelector("#field").style.width=width+"px";
  document.querySelector("#field").style.height=height+"px";

  canvasDom=document.getElementById("defaultCanvas0");
  canvasDomRect=canvasDom.getBoundingClientRect();

	hSpan=createSpan();
	hSpan.position(canvasDomRect.left+110,canvasDomRect.top+10);
	hSpan.style("color","#ffffff");
	hSpan.style("user-select","none");
	vSpan=createSpan();
	vSpan.position(canvasDomRect.left+110,canvasDomRect.top+60);
	vSpan.style("color","#ffffff");
	vSpan.style("user-select","none");
	lSpan=createSpan();
	lSpan.position(canvasDomRect.left+110,canvasDomRect.top+110);
	lSpan.style("color","#ffffff");
	lSpan.style("user-select","none");

	hSlider = createSlider(0, 255, random(255));
  hSlider.position(canvasDomRect.left+10, canvasDomRect.top+10);
  hSlider.style('width', '80px');
	vSlider = createSlider(0, 255, random(255));
  vSlider.position(canvasDomRect.left+10, canvasDomRect.top+60);
  vSlider.style('width', '80px');
	lSlider = createSlider(0, 255, random(255));
  lSlider.position(canvasDomRect.left+10, canvasDomRect.top+110);
  lSlider.style('width', '80px');

	rgb=getRGBFromHVL(h,v,l);
}

function draw() {
	background(100);
	h=hSlider.value(); v=vSlider.value(); l=lSlider.value();
	hSpan.html("h:"+h); vSpan.html("v:"+v); lSpan.html("l:"+l);
	rgb=getRGBFromHVL(h,v,l);

	perspective();
	push();
	draw3D();
	pop();
}

//---------------------------------
function draw3D(){
	translate(0,0,-height);
	rotateX(radians(180)); rotateY(radians(frameCount));

	translate(-height/2,-height/2,-height/2);
	drawGround();

	noStroke(); fill(rgb.r,rgb.g,rgb.b);
	plotSphere(rgb.r/255*height,rgb.g/255*height,rgb.b/255*height,20);
	plotSphere(height/2,height/2,height/2,40);

	stroke(0);
	line(0,0,0,rgb.realR/255*height,0,rgb.realB/255*height);
	line(rgb.realR/255*height,0,rgb.realB/255*height,rgb.realR/255*height,rgb.realG/255*height,rgb.realB/255*height);
	line(0,0,0,rgb.realR/255*height,rgb.realG/255*height,rgb.realB/255*height);

	noStroke(); fill(rgb.r,rgb.g,rgb.b);
	plotSphere(rgb.realR/255*height,rgb.realG/255*height,rgb.realB/255*height,10);

	//----------------

	function drawGround(){
		strokeWeight(2);
		stroke(255,0,0); line(0,0,0,height,0,0);
		stroke(0,255,0); line(0,0,0,0,height,0);
		stroke(0,0,255); line(0,0,0,0,0,height);
		stroke(150);
		line(height,0,0,height,0,height); line(height,0,0,height,height,0);
		line(0,height,0,height,height,0); line(0,height,0,0,height,height);
		line(0,0,height,height,0,height); line(0,0,height,0,height,height);
		line(0,height,height,height,height,height); line(height,0,height,height,height,height); line(height,height,0,height,height,height);
		stroke(255); fill(20,20,20);
  	box(50, 50, 50);
	}

	//--

	function plotSphere(x,y,z,size){
		push();
		translate(x,y,z);
		sphere(size);
		pop();
	}
}

function getRealHVLParamsFromHVL(h,v,l){
	let result={
		h: radians(h/255*90),
		v: radians(90-v/255*90),
		l: l*pow(3,0.5)
	}
	return result;
}

function getRGBFromHVL(h,v,l){
	let realHVLParams=getRealHVLParamsFromHVL(h,v,l);
	let r,g,b,realR,realG,realB;
	realR=realHVLParams.l*sin(realHVLParams.v)*cos(realHVLParams.h);
	realG=realHVLParams.l*cos(realHVLParams.v);
	realB=realHVLParams.l*sin(realHVLParams.v)*sin(realHVLParams.h);
	r=realR; if(r>255) r=255;
	g=realG; if(g>255) g=255;
	b=realB; if(b>255) b=255;
	let result={
		r: r,
		g: g,
		b: b,
		realR: realR,
		realG: realG,
		realB: realB
	};
	return result;
}
