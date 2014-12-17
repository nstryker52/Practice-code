// declare particle variables
class particle {
  PVector loc, vel, acc;
  float sz, alpha;

  // initialize particle variables
  particle(float tempx, float tempy, float tempsz) {
    sz = tempsz;
    vel = new PVector(0, -5);
    loc = new PVector(width/2, height-50);
    acc = new PVector(0, -.5);
    alpha = 100;
  }

  // what the particle does
  //appearence
  void display() {
    fill(0, 99, 99, 70);
    ellipse(loc.x, loc.y, sz, sz);
    alpha--;
    sz--;
  }
  //movement
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
}

