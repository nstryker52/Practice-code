ArrayList<particle> asteroid = new ArrayList<particle>();
int max= 100;

void setup() {
  size(700, 600);
  frameRate(10);
  colorMode(HSB, 360, 100, 100, 100);
}
void draw() {
  background(0, 0, 0);
  asteroid.add(new particle(random(width), random(height), random(5, 15)));
  for (int i = asteroid.size () -1; i>0; i--) {
    particle a = asteroid.get(i);
    a.display();
    a.move();
    a.bounce();
    for (int j = i+1; j>0; j--) {
      particle a2 = asteroid.get(j);
      if (i!=j) {
         PVector dir = PVector.sub(a.loc,a2.loc);
         float  d = dir.mag();
         dir.normalize();
      }
    }
  }
  if (asteroid.size() > max) {
    asteroid.remove(0);
  }
}

