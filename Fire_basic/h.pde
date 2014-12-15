// declare particle variables
class particle {
  PVector loc, vel, acc;
  float sz,alpha;

  // initialize particle variables
  particle(float tempx, float tempy, float tempsz) {
    sz = tempsz;
    vel = new PVector(random(5), 0);
    loc = new PVector(width/2,height-50);
    acc = new PVector(0,-1);
    alpha = 100;
  }

  // what the particle does

  void display() {
    fill(0,0,100,70);
    ellipse(loc.x, loc.y, sz, sz);
    alpha--;
    sz--;
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void collide(particle other) {
    if (loc.dist(other.loc) < sz/2 + other.sz/2) {
      vel = PVector.sub(loc, other.loc);
      vel.normalize();
    }
  }
}
