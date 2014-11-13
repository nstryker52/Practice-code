void setup(){
  println(quad1(1,7,1),quad2(1,7,1));
  
}

void draw(){
  
}

float quad1(float a,float b,float c){
 float result = (-b + sqrt(sq(b)-4*a*c))/(2*a);
 return result; 
}

float quad2(float a,float b,float c){
 float result = (-b - sqrt(sq(b)-4*a*c))/(2*a);
 return result; 
}
