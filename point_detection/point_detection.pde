float sz = 30;
float sz2 = 45;
PVector loc, vel, acc;
PVector loc2, vel2, acc2;


void setup() {
  size(700, 700);
  loc = new PVector(width/2, height/2);
  vel = new PVector(1, 1);
  acc = new PVector(0, 0);
  loc2 = new PVector(200,90);
  vel2 = new PVector(2,2);
  acc2 = new PVector(0,0);
}

void draw() {
  vel.add(acc);
  loc.add(vel);
  
  vel2.add(acc2);
  loc2.add(vel2);
  
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

