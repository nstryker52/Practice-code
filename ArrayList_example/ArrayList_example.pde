ArrayList<Gball> ball = new ArrayList<Gball>();
float max = 150;

void setup() {
  noStroke();
  noCursor();
  size(800, 600);
}

void draw() {
  background(125);
  ball.add(new Gball());
  for (int i = 0; i <ball.size (); i++) {
    Gball b = ball.get(i);
    b.display();
    b. move();
    b.bounce();
    for (int j = 0; j < ball.size (); j++) {
      if (i!=j) {
        Gball b2= ball.get(j);
        b.collideWith(b2);
      }
    }
  }
  if (ball.size() > max) {
    ball.remove(0);
  }
}

