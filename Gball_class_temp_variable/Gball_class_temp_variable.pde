Gball b;
Gball b1;
Gball b2;

void setup() {
  frameRate(600);
  size(800, 700);
  b = new Gball(10);
  b1 = new Gball(30);
  b2 = new Gball(50);
}
void draw() {
  background(125);
  b.display();
  b.move();
  b.bounce();
  b1.display();
  b1.move();
  b1.bounce();
  b2.display();
  b2.move();
  b2.bounce();
}

class Gball {
  float sz;
  PVector loc, vel;

  Gball(float tempsz) {
    sz = tempsz;
    loc = new PVector(width/2, height/2);
    vel = PVector.random2D();
  }
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }  
  void move() {
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
}

