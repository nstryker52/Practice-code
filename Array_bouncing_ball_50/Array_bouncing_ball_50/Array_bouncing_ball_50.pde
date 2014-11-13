float[] x= new float[50];
float[] y= new float[50];
float[] sz= new float[50];
float[] Xspeed= new float[50];
float[] Yspeed= new float[50];


void setup() {
  size(850, 850);
  for (int i=0; i< x.length; i++) {
    x[i] = width/2; 
    y[i] = height/2; 
    Xspeed[i] = random(-5, 5); 
    Yspeed[i] = random(-5, 5); 
    sz[i] = 5+i;
    frameRate(60);
}
}

void draw() {
  background(125);
  for (int i =0; i<x.length; i++) {
    x[i]+=Xspeed[i]; 
    y[i]+=Yspeed[i]; 
    ellipse(x[i], y[i], sz[i], sz[i]); 

    if (x[i]+sz[i]/2>=width || x[i]-sz[i]/2<=0) {
      Xspeed[i]*=-1;
    } 
    if (y[i]+sz[i]/2>=height || y[i]-sz[i]/2<=0) {
      Yspeed[i]*=-1;
    }
  }
}

