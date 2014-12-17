ArrayList<particle> asteroid = new ArrayList<particle>();
int max= 300;

void setup() {
  size(700, 600);
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
//    for (int j = asteroid.size () -1; j>0; j--) {
//      if (i!=j) {
//        a(i).collide(a(j));
//      }
//    }
  }
  if (asteroid.size() > max) {
    asteroid.remove(0);
  }
}

