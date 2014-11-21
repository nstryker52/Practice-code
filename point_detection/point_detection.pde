float sz = 100;
float sz2 = 100;
PVector loc, vel, acc;
PVector loc2, vel2, acc2;


void setup() {
  size(800, 700);
  loc = new PVector(width/2, height/2);
  vel = new PVector(1, 1);
  acc = new PVector(0, 0);
  loc2 = new PVector(200, 90);
  vel2 = new PVector(2, 2);
  acc2 = new PVector(0, 0);
}

void draw() {
  vel.add(acc);
  loc.add(vel);

  vel2.add(acc2);
  loc2.add(vel2);

  background(125);
  ellipse(loc.x, loc.y, sz, sz);
  ellipse(loc2.x, loc2.y, sz2, sz2);

  if ( loc.dist(loc2) < sz/2+sz2/2) {
    fill(0, 255, 255);

    if (loc.x <loc2.x) {
      vel.x = -abs(vel.x);
      vel2.x = abs(vel2.x);
    } else {
      vel.x = abs(vel.x);
      vel2.x = abs(vel2.x);
    }
    if (loc.y < loc2.y) {
      vel.y = -abs(vel.y);
      vel2.y = abs(vel2.y);
    } else {
      vel.y = abs(vel.y);
      vel2.y = -abs(vel2.y);
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
  if (loc2.x + sz2/2 > width) {
    vel2.x *= -1;
  }
  if (loc2.x - sz2/2 <0) {
    vel2.x *= -1;
  } 
  if (loc2.y + sz2/2 > height) {
    vel2.y *= -1;
  }
  if (loc2.y - sz2/2 <0) {
    vel2.y *= -1;
  }
}

