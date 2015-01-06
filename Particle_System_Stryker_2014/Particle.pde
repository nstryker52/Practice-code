// declare particle variables
class particle {
  PVector loc, vel, acc;
  float sz, alpha;

  // initialize particle variables
  particle(float tempx, float tempy, float tempsz) {
    sz = tempsz;
    vel = new PVector(random(-5,5),random(-5,5));
    loc = new PVector(random(width), random(height));
    acc = new PVector(random(-5,5),random(-5,5));
    alpha = 100;
  }

  // what the particle does
  //appearence
  void display() {
    fill(0, 99, 99, 70);
    ellipse(loc.x, loc.y, sz, sz);
    alpha--;
    //sz--;
  }
  //movement
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
   void bounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
  void collide(particle other) {
    if (loc.dist(other.loc) < sz/2 + other.sz/2) {
      vel = PVector.sub(loc, other.loc);
      vel.normalize();
    }
  }
}

