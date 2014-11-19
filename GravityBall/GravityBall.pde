float sz=30;
float x=300;
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
   velY*=-.9;
   velX *= .9;
  } 
  if(x+sz/2 > width){

  velX *= -1;
  }
  if(x-sz/2 < 0){

   velX *= -1; 
  }
}

