PImage img;

void setup() {
  size(800, 500);
  background(0);
  img=get(0, 0, width, height);
}

void draw() {
  imageMode(CENTER);
  image(img, width/2.0, height/2.0, width+random(-400, 400), height+random(-400, 400));

  int size=(int)random(width/2.0);
  int r=(int)random(128), g=(int)random(128), b=(int)random(128);

  noFill();
  fill(255-r, 255-g, 255-b, 255);
  stroke(r, g, b, 255);
  strokeWeight(20);
  ellipse(random(width), random(height), size, size);

  img=get(0, 0, width, height);
}