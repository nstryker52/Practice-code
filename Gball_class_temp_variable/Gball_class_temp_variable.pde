Gball b;
Gball b1;
Gball b2;

void setup() {
  frameRate(600);
  size(800, 700);
  b = new Gball(random(100));
  b1 = new Gball(random(100));
  b2 = new Gball(random(100));
  colorMode(HSB, 360,100,100,100);
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
  float z,x,c,v;

  Gball(float tempsz) {
    sz = tempsz;
    loc = new PVector(width/2, height/2);
    vel = PVector.random2D();
    z=random(360);
    x=random(100);
    c=random(100);
    v=random(100);
  }
  void display() {
    fill(z,x,c,v);
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

