int count = 100;
float[] x = new float[count];
float[] y = new float[count];

void setup() {

  noStroke();
  size(1600, 1700);
  for (int i = 0; i< count; i++) {
    x[i] = width/2;
    y[i] = height/2;
  }
}

void draw() {
  background(0);
  x[count-1] = mouseX;
  y[count-1] = mouseY;
  for ( int i=0; i<count-1; i++) {
    x[i]= x[i+1];
    y[i]= y[i+1];
  }
  for (int i =0; i<count; i++) {
    ellipse(x[i], y[i], 5+i*2, 5+i*2);
  }
}

