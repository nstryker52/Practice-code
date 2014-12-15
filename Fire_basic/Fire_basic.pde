ArrayList<particle> fire = new ArrayList<particle>();
int max = 15;
PVector base = new PVector(width/2,height-50);

void setup() {
  size(700, 600);
//  noCursor();
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);

}

void draw() {
  background(0, 0, 0);
  fire.add(new particle(base.x, base.y,15));
  for (int i = fire.size() -1; i >0; i--) {
    particle f = fire.get(i);
    f.display();
    f.move();
  }
  
  if (fire.size() > max) {
    fire.remove(0);
  }
}
