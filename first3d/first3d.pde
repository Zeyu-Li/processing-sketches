import java.util.Date;

// change these values
color bgColor = color(255, 255, 211);
boolean debug = true;
String name = "first3d";

// initalize
boolean save = false;
PGraphics pg;

/**
* runs before first frame
*/
void setup() {
  size(900, 900, P3D);
  fill(204);
}

/**
* runs every frame
*/
void draw() {
  lights();
  background(0);
  
  // Change height of the camera with mouseY
  camera(30.0, mouseY, 220.0, // eyeX, eyeY, eyeZ
         0.0, 0.0, 0.0, // centerX, centerY, centerZ
         0.0, 1.0, 0.0); // upX, upY, upZ
  
  noStroke();
  box(90);
  stroke(255);
  line(-100, 0, 0, 100, 0, 0);
  line(0, -100, 0, 0, 100, 0);
  line(0, 0, -100, 0, 0, 100);
  
  if (debug) println(frameRate);
}

/**
* Saves image on click
*/
void mouseClicked() {
  save = true;
}
