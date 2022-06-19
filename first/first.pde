import java.util.Date;

// change these values
boolean debug = true;
String name = "first";

// initalize
boolean save = false;
float[] x = new float[2];
float[] y = new float[2];
float segLength = 50;

/**
* runs before first frame
*/
void setup() {
  size(640, 640);
  strokeWeight(20.0);
  stroke(255, 100);
}

/**
* runs every frame
*/
void draw() {
  background(0);
  dragSegment(0, mouseX, mouseY);
  dragSegment(1, x[0], y[0]);
}


void dragSegment(int i, float xin, float yin) {
  float dx = xin - x[i];
  float dy = yin - y[i];
  float angle = atan2(dy, dx);  
  x[i] = xin - cos(angle) * segLength;
  y[i] = yin - sin(angle) * segLength;
  segment(x[i], y[i], angle);
}

void segment(float x, float y, float a) {
  pushMatrix();
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
  popMatrix();
}
