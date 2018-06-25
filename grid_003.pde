// Build a gridd of 10 x 10 images

PImage frame;  //  Create  variable to hold the 400 x 400 image
int numberOfSmallTiles = 510;
int units = 0;
int tens = 0;
int hundreds = 0;
int frameNumber = 0;
int counter = 0;
int sizeOfTiles = 310;

void setup() {
  size(7440, 6510);
  noLoop();
}
 
void draw() {
  // 10 x 10 Gird of random white tiles
  for (int i = 0; i < 24; i = i + 1) {
    for (int j = 0; j < 21; j = j + 1) {

      println("counter = " + counter);
      counter ++;
      getFrame();

      image(frame, i * sizeOfTiles, j * sizeOfTiles);
      if (counter == 510) {
        println("saving grid _008");
        save("grid_008.png");
        exit();
      }
    }
  }
}


void getFrame() {
  println(str(hundreds) + str(tens) + str(units));
  frame = loadImage(str(hundreds) + str(tens) + str(units) + ".png");  // load next frame
  if (units < 9) {
    units ++;
  } else {
    units = 0;
    if (tens < 9) {
      tens ++;
    } else {
      tens = 0;
      units = 0;
      hundreds++;
    }
  }
  frameNumber ++;
}

void keyPressed() {
  println("saving grid _008");
  save("grid_008.png");
  exit();
}
