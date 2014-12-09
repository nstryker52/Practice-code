
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

