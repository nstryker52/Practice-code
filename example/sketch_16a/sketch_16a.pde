int run = 0;

void setup() {
  size(800, 600);
  textSize(50);
}

void draw() {
  if (run == 0) {
    background(0);
    fill(255);
    text("space", width/2, height/2);
  } else {
    fill(random(255), random(255), random(255));
    ellipse(random(width), random(height), 20, 20);
  }
  if (keyPressed && key == ' ') {
    run = 1;
  }
}

