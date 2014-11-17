float sz=30;
float x=width/2;
float y=sz*2;
float velY=2;
float velX=3;
float GeorgeClooney=.5;
float xclX=0;

void setup() {
  size(800, 800);
}

void draw() {
  background(125);
  velY+=GeorgeClooney;
  velX+=xclX;
  y+=velY;
  x+=velX;

  ellipse(x, y, sz, sz);
  if(y+sz/2>height){
   y=height-sz/2;
   velY*=-1;
  }
}

