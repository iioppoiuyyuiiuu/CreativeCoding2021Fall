float x1 = random(20, 100);
float x2 = random(x1+350, 450);
float x3 = 0;

float y1 = random(20, 150);
float y2 = 0;
float y3 = 0;



void setup() {
  background(255);
  size(600, 600);
  drawline();
  strokeWeight(20);
  line(0, 0, 600, 0);
  line(0, 0, 0, 600);
  line(0, 600, 600, 600);
  line(600, 0, 600, 600);
}

void draw() {
}

void drawline() {//画直线分割界面
  strokeWeight(5);
  line(x1, 0, x1, 600);
  line(0, y1, 600, y1);
  y2 = x2 - x1 + y1;
  line(0, y2, 600, y2);
  line(x2, y1, x2, 600);
  line(0, y1/2, x1, y1/2);
  rectMode(CORNERS);
  fill(0);
  rect(0, 0, x1, y1/2);
  fill(226, 52, 40);
  rect(x1, y1, x2, y2);
  line((600-x1)/2+x1, 0, (600-x1)/2+x1, y1);
  fill(58, 125, 185);
  rect((600-x1)/2+x1, 0, 600, y1);
  float x3 = random(x2+40, 600);
  float y3 = random(y2+40, 600);
  fill(246, 228, 80);
  rect(x2, y2, x3, 600);
  line(x3, y1, x3, 600);
  line(x2, y3, 600, y3);
  fill(58, 125, 185);
  rect(0, y3, x1, 600);
}
