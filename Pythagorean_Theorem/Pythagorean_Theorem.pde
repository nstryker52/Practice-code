void setup(){
  size(800,800);
  textSize(50);
  background(125);
}

void draw(){
  triangle(200,200,200,500,600,500);
  text(pytho(500-200,600-200),width/2-125,height/2-200);
}

float pytho(float a, float b){
  float c = sqrt(sq(a) + sq(b));
  return c;
}
