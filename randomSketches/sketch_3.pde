PImage pFrame;
int dotLineLength=30;

void setup() {
  size(800, 500);
  background(0);
  pFrame=get(0, 0, width, height);
}

void draw() {
  imageMode(CENTER);
  pushMatrix();
  translate(width/2.0, height/2.0);
  rotate(PI/3.0);
  image(pFrame, 0, 0, width*0.7, height*0.7);
  popMatrix();

  noStroke();
  for (int i=1; i<=dotLineLength; i++) {
    fill(255*(i/(float)dotLineLength), 100);
    if (i%2==0) {
      ellipse(mouseY*(0.1*i), mouseX*(0.1*i), 20, 20);
    } else {
      ellipse(mouseX*(0.1*i), mouseY*(0.1*i), 20, 20);
    }
  }

  pFrame=get(0, 0, width, height);
}