////define a function to draw a blue circle at mouse
//data_type name(parameters) {
// //do something 
//}
void setup(){
 size(600,700); 
}

void draw(){
circle(width/2,height/2,50);
}
//example
void blueCircle() {
  fill(0,100,255);
 ellipse(mouseX,mouseY,30,30); 
}

void randomCircle(){
 fill(random(255),random(255),random(255)); 
 float sz=random(3,50);
 ellipse(random(width),random(height),sz,sz);
}

void circle(int x, int y, int sz){
 ellipse(x,y,sz,sz);
}
