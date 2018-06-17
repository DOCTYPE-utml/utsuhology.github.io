PImage pFrame;

void setup() {
  size(800,500);
  background(0);
  pFrame=get(0,0,width,height);
}

void draw() {
  imageMode(CENTER);
  image(pFrame,width/2.0,height/2.0,width-2,height-2);
  
  float r,g,b,size;
  r=random(255);
  g=random(255);
  b=random(255);
  size=random(100);
  
  noFill();
  stroke(r,g,b,100);
  strokeWeight(random(5));
  bezier(random(width),random(height),random(width),random(height),random(width),random(height),random(width),random(height));
  fill(0);
  noStroke();
  ellipse(random(width),random(height),size,size);
  
  fill(0);
  noStroke();
  ellipse(width/2.0,height/2.0,200,200);
  
  pFrame=get(0,0,width,height);
}