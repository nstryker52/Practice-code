float sz = 30;
PVector loc;
PVector mouse;
PVector vel;
PVector acc;

void setup() {
  size(700, 700);
  loc = new PVector(width/2, height/2);
  mouse = new PVector();
  vel = new PVector(1, 1);
  acc = new PVector(0, 0);
}

void draw() {
  vel.add(acc);
  loc.add(vel);
  background(125);
  ellipse(loc.x, loc.y, sz, sz);
  mouse.set(mouseX, mouseY);
  if ( loc.dist(mouse) < sz/2) {
    fill(0, 255, 255);

    if (loc.x <mouse.x) {
      vel.x = -abs(vel.x);
    } else {
      vel.x = abs(vel.x);
    }
    if (loc.y < mouse.y) {
      vel.y = -abs(vel.y);
    } else {
      vel.y = abs(vel.y);
    }
  }
  if (loc.x + sz/2 > width) {
    vel.x *= -1;
  }
  if (loc.x - sz/2 <0) {
    vel.x *= -1;
  } 
  if (loc.y + sz/2 > height) {
    vel.y *= -1;
  }
  if (loc.y - sz/2 <0) {
    vel.y *= -1;
  }
}

