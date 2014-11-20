float sz = 30;
PVector loc;
PVector mouse;

void setup() {
  size(700, 700);
  loc = new PVector(width/2, height/2);
  mouse = new PVector();
}

void draw() {
  background(125);
  ellipse(loc.x, loc.y, sz, sz);
  mouse.set(mouseX, mouseY);
  if ( loc.dist(mouse) < sz/2) {
    loc.set(random(width), random(height));
    fill(0,255,255);
  } else {
    fill(255, 0, 255);
  }
}

