float locx=width/2;
float locy=height/2;
float velx=1;
float vely=1;
float accx=0;
float accy=0;
int sz = 31;

void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
}

void draw() {
  fill(frameCount%360, 100, 100, 100);
  accx=random(-2, 2);
  accy=random(-2, 2);
  locx += velx;
  locy += vely;
  velx += accx;
  vely += accy;


  ellipse(locx, locy, sz, sz);
  if (locx - sz/2 > width) {
    locx = -sz/2 ;
  }
  if (locx + sz/2 < 0) {
    locx = width + sz/2 ;
  }
  if (locy - sz/2 > height) {
    locy = -sz/2 ;
  }
  if (locy + sz/2 < 0) {
    locy = height + sz/2 ;
  }
}

