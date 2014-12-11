class Gball {
  float sz;
  PVector loc, vel, acc;

  Gball() {
    sz = 30;
    loc = new PVector(width/2, height/2);
    vel = PVector.random2D();
    acc = new PVector();  
}
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }  
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

  void collideWith(Gball Other) {
    if (loc.dist(Other.loc) < sz/2 + Other.sz/2) {
      vel = PVector.sub(loc, Other.loc);
      vel.normalize();
      // vel.setMag(speed);
    }
  }
  void isSuckedIn(BlackHole doom) {
    acc = PVector.sub(doom.loc, loc);
    acc.setMag(.1);
  }
   void teleport() {
    loc.set(mouseX, mouseY);
    vel = PVector.random2D();
  }
}

