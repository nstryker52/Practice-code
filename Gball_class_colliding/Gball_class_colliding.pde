
Gball[] g = new Gball[250];

void setup() {
  noStroke();
  frameRate(500);
  size(600, 600);
  for (int i = 0; i < g.length; i++) {
    g[i] = new Gball();
  }
}
void draw() {
  background(125);
  for (int i = 0; i < g.length; i++) {
    g[i].display();
    g[i].move();
    g[i].bounce();
    for (int j = 0; j<g.length; j++) {
      if (i!=j) {
        g[i].collideWith(g[j]);
        
      }
    }
  }
}
class Gball {
  float sz;
  PVector loc, vel;

  Gball() {
    sz = 30;
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

void collideWith(Gball Other) {
  if (loc.dist(Other.loc) < sz/2 + Other.sz/2) {
    vel = PVector.sub(loc, Other.loc);
    vel.normalize();
   // vel.setMag(speed);
  }
}}

