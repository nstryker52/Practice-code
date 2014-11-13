boolean x=true;
void setup() {
  size(800, 500);
    background(125);
}
void draw() {
  if (x==true) {
    fill(255,0,0);
    rect(random(width), random(height), 30, 30);
  } else {
    fill(0,0,255);
    ellipse(random(width), random(height), 30, 30);
  }
}
void mousePressed(){
  x=!x;
  background(125);
}

