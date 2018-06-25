// save a sequence of images based on 
// code from Multiplication modulo n visualization. by Jorge Miranda
// https://www.openprocessing.org/sketch/559927
// converted to java Processing code by Rupert Russell
// 25 June 2018

int p = 511;
int radius = 150;
float[] pointsX = new float[p];
float[] pointsY = new float[p];
int j = 1;

void setup() {
  frameRate(5);
  size(310, 310);
  background(0);
  float angle = TWO_PI/p;
  for (int i=0; i<=p-1; i++) {
    pointsX[i] = radius*sin(angle*i)+width/2;
    pointsY[i] = radius*cos(angle*i)+height/2;
  }
}
void draw() {
  background(0);
  strokeWeight(5);
 // rect(0, 0, width, height);
  for (int i=0; i<=p-1; i++) {
    strokeWeight(5);
    point(pointsX[i], pointsY[i]);
    int mod = (i*j)%p;
    strokeWeight(1);
    stroke(255);
    line(pointsX[i], pointsY[i], pointsX[mod], pointsY[mod]);
    textSize(30);
    //text(i,pointsX[i],pointsY[i]);
  }
  //text("k = " + j, 20, 70);
  //text("n = " + p, 20, 100);
  j = j+1;
  if (j % (p+1) == 0) {
    j=1;
    p=p+1;
    float angle = TWO_PI/p;
    for (int i=0; i<=p-1; i++) {
      pointsX[i] = radius*sin(angle*i)+width/2;
      pointsY[i] = radius*cos(angle*i)+height/2;
      //print(pointsX)
      //print(pointsY)
    }
  }
 saveFrame("###.png");
 println(frameCount);
 if(frameCount == 510){
   exit();
 }
 
}
