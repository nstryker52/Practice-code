void setup(){
  println(quadratic(23,71,89));
  
}

void draw(){
  
}

float[] quadratic(float a, float b, float c) {
 float[] results = new float[2];
 results[0] = (-b + sqrt(sq(b)-4*a*c))/(2*a);
 results[1] = (-b - sqrt(sq(b)-4*a*c))/(2*a);
 return results;
}

