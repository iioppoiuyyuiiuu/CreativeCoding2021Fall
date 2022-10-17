PImage img;
void setup() {
  size(6000, 4000);
  background(255);
  img=loadImage("colorful.jpg");
}

//void draw() {
//  fill(255);
//  rect(0,0,1000,1000);
//  print("\n0");
//  delay(2000);
//  for (int i=0; i<width; i+=10) {
//    for (int j=0; j<height; j+=10) {
//      color c= img.get(i*10, j*10);
//      fill(c);
//      noStroke();
//      ellipseMode(CORNER);
//      ellipse(i, j, 10, 10);
//    }
//  }
//  print("\n1");
//  delay(2000);
//  for (int i=0; i<width; i+=1) {
//    for (int j=0; j<height; j+=1) {
//      color c= img.get(i*10, j*10);
//      fill(c);
//      noStroke();
//      ellipseMode(CORNER);
//      ellipse(i, j, 1, 1);
//    }
//  }
//  print("\n2");
//  delay(2000);
//}


void draw() {
  int sw = int(50/frameCount);
  print(sw);
  for (int i=0; i<width; i+=sw) {
    for (int j=0; j<height; j+=sw) {
      color c= img.get(i, j);
      fill(c);
      noStroke();
      ellipse(i, j, 5000/frameCount*random(0.4,1), 5000/frameCount*random(0.4,1));
    }
  }
  saveFrame();
}
