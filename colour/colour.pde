int R1 = 0;
int G1 = 0;
int B1 = 0;
int RRR = 127;
int GGG = 127;
int BBB = 127;
int DR = 127;
int DG = 127;
int DB = 127;
int RR = 0;
int RG = 0;
int RB = 0;
int RM = 127;
int GM = 127;
int BM = 127;
int SC = 99;
int[] R = new int[512];
int[] G = new int[512];
int[] B = new int[512];



void setup()
{
  size(1200, 800);
  background(255);
  textSize(30);
  textMode(CENTER);
  noLoop();
  R1 = int(random(0, 255));
  G1 = int(random(0, 255));
  B1 = int(random(0, 255));
}

void draw() {
      print(SC);
  if (SC < 40 && SC > -40) {
    fill(255);
    rect(800,460,1200,800);
    fill(255,0,0);
    text("YOU WIN!", 942, 500);
  } else {
    RRR = RM;
    GGG = GM;
    BBB = BM;
    for (int j = 1; j < 5; j++) {
      for (int i = 1; i < 5; i++) {
        R[10*j+i] = int(random(RRR-DR, RRR+DR));
        G[10*j+i] = int(random(GGG-DG, GGG+DG));
        B[10*j+i] = int(random(BBB-DB, BBB+DB));
        fill(R[10*j+i], G[10*j+i], B[10*j+i]);
        noStroke();
        rect((i-1)*200, (j-1)*200, i*200, j*200);
      }
    }
    fill(255);
    rect(800, 0, 1200, 800);
    fill(R1, G1, B1);
    ellipse(1000, 400, 100, 100);
    fill(0);
    text("Bring up this color!", 885, 500);
  }
}


void mousePressed() {
  //print(int(mouseY/200)+1);
  //print(",");
  //print(int(mouseX/200)+1);
  //print("!!!");
  //print("\n");
  int imgC = get(mouseX, mouseY);
  RM = (imgC >> 16) & 0xFF;
  GM = (imgC >> 8) & 0xFF;
  BM = imgC & 0xFF;
  //println("Current position color: Red = "+RM+", Green = "+GM+", Blue = "+BM);
  DR = RM - RRR + 60;
  DG = GM - GGG + 60;
  DB = BM - BBB + 60;
  SC = RM + GM + BM - R1 - G1 - B1;
  redraw();
}
