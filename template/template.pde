import java.util.Date;

// change these values
boolean DEBUG = true;
String NAME = "template";
int SIZE_X = 900, SIZE_Y = 900;
color bgColor = color(255, 225, 255);

// initalize
boolean save = false;
PGraphics pg;

/**
* runs before first frame
*/
void setup() {
  size(SIZE_X, SIZE_Y, P2D);
  smooth(8);
  pg = createGraphics(2160, 2160, P2D);
  pg.smooth(8);
  pg.beginDraw();
  pg.background(bgColor);
  pg.endDraw();
}

/**
* runs every frame
*/
void draw() {
  pg.beginDraw();
  pg.background(bgColor);
  
  // code here
  
  pg.endDraw();
  
  // save on click
  if (save) {
    pg.save(NAME + (new Date()).getTime() + ".png");
    save = false;
  }
  
  image(pg, 0, 0, width, height);
  if (DEBUG) println(frameRate);
}

/**
* Saves image on click
*/
void mouseClicked() {
  save = true;
}
