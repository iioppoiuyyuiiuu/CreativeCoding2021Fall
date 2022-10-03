float x0;
float y0;

void setup() {
  background(255);
  size(1470, 910);
  frameRate(1);
}

void draw(){ 
  background(255);
  stroke(255);
  line(70, 0, 70, 910);
  line(0, 70, 1470, 70);
  line(140, 0, 140, 910);
  line(0, 140, 1470, 140);
  for (int j = 0; j < 14; j++) {
    y0 =70*j +35;
    for (int i = 0; i < 22; i++) {
      x0 = 70*i +35;
      int  r = int(random(0, 4));
      if (r == 0) {
        drawArcDown();
      } else if (r == 1) {
        drawArcLeft();
      } else if (r == 2) {
        drawArcUp();
      } else {
        drawArcRight();
      }
    }
  }

}

void drawArcDown() {
  noFill();
  stroke(242, 231, 167);
  strokeWeight(2);
  arc(x0, y0, 70*sqrt(2), 70*sqrt(2), QUARTER_PI, HALF_PI+QUARTER_PI);
}

void drawArcLeft() {
  noFill();
  stroke(180);
  strokeWeight(2);
  arc(x0+35, y0+35, 70*sqrt(2), 70*sqrt(2), QUARTER_PI*3, HALF_PI+QUARTER_PI*3);
}

void drawArcUp() {
  noFill();
  stroke(13, 24, 88);
  strokeWeight(2);
  arc(x0, y0+70, 70*sqrt(2), 70*sqrt(2), QUARTER_PI*5, HALF_PI+QUARTER_PI*5);
}

void drawArcRight() {
  noFill();
  stroke(232, 93, 116);
  strokeWeight(2);
  arc(x0-35, y0+35, 70*sqrt(2), 70*sqrt(2), QUARTER_PI*7, HALF_PI+QUARTER_PI*7);
}
