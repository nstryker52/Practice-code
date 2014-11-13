void setup() {
  size(1100, 700);
  background(125);
}

void draw() {
  noCursor();
  noStroke();
  blueSquare(mouseX-25, mouseY-25, 50);
  blueSquare(mouseX-25, height-mouseY-25, 50);
  blueSquare(width-mouseX-25, mouseY-25, 50);
  blueSquare(width-mouseX-25, height-mouseY-25, 50);
  blueSquare(mouseX-25, height/2, 50);
  blueSquare(width-mouseX-25, height/2, 50);
  blueSquare(width/2, mouseY-25, 50);
  blueSquare(width/2, height-mouseY-25, 50);
}

void blueSquare(int x, int y, int sz) {
  fill(0, 150, 255, 30);
  rect(x, y, sz, sz);
}
//

