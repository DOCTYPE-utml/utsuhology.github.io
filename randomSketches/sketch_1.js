let p5Canvas;

let pFrame;

function setup(){
  p5Canvas=createCanvas(800,500);
  p5Canvas.parent("field");
  document.querySelector("#field").style.width=width+"px";

  background(0);
}

function draw() {
    let a = random(128);
    let b = random(128);
    let c = random(128);
    let size = random(width);
    let op = 5;

    if (mouseIsPressed) {
        fill(a, b, c, op);
        stroke(255 - a, 255 - b, 255 - c, op)
    } else {
        fill(255 - a, 255 - b, 255 - c, op);
        stroke(a, b, c, op);
    }
    strokeWeight(random(20));

    ellipse(mouseX, mouseY, size, size);
    ellipse(width - mouseX, mouseY, size, size);
    ellipse(mouseX, height - mouseY, size, size);
    ellipse(width - mouseX, height - mouseY, size, size);

    ellipse(mouseY, mouseX, size, size);
    ellipse(width - mouseY, mouseX, size, size);
    ellipse(mouseY, height - mouseX, size, size);
    ellipse(width - mouseY, height - mouseX, size, size);
}
