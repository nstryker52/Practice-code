int count = 20;
PVector[] loc = new PVector[count];
PVector[] vel = new PVector[count];
PVector[] acc = new PVector[count];
float[] sz = new float[count];
float[] mass = new float[count];
int minDiam = 10;
int maxDiam = 60;


void setup() {
  size(800, 700);
  for (int i =0; i < count; i++) {
    sz[i] = random(minDiam, maxDiam); 
    loc[i] = new PVector(random(sz[i], width-sz[i]), random(sz[i], height - sz[i]));
    vel[i] = PVector.random2D();
    acc[i] = new PVector(0, 0);
    mass[i] = map(sz[i], minDiam, maxDiam, .1, 1.5);
  }
}

void draw() {
  background(125);
  for (int i =0; i < count; i++) {
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
    for (int t = 0; t < count; t++) {
      if (i!=t) {
        if ( loc[i].dist(loc[t]) < sz[i]/2+sz[t]/2) {
          fill(0, 255, 255);

          //          if (loc[i].x <loc[t].x) {
          //            vel[i].x = -abs(vel[i].x);
          //            vel[t].x = abs(vel[t].x);
          //          } else {
          //            vel[i].x = abs(vel[i].x);
          //            vel[t].x = abs(vel[t].x);
          //          }
          //          if (loc[i].y < loc[t].y) {
          //            vel[i].y = -abs(vel[i].y);
          //            vel[t].y = abs(vel[t].y);
          //          } else {
          //            vel[i].y = abs(vel[i].y);
          //            vel[t].y = -abs(vel[t].y);
          //          }
          vel[i] = PVector.sub(loc[i], loc[t]);
          vel[i].normalize(); 
          vel[i].div(mass[i]);
        }
      }
    }

    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
    if (loc[i].x + sz[i]/2 > width) {
      vel[i].x *= -1;
    }
    if (loc[i].x - sz[i]/2 <0) {
      vel[i].x *= -1;
    } 
    if (loc[i].y + sz[i]/2 > height) {
      vel[i].y *= -1;
    }
    if (loc[i].y - sz[i]/2 <0) {
      vel[i].y *= -1;
    }
  }
}

