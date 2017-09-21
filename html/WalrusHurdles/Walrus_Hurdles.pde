/* @pjs preload= "Sky.jpg,StartScreen.png,Hurdle.png,Walrus1.png,Walrus2.png,Cloud.png,Sun.png,End screen.png"*/


//Walrus hurdles!

//EvAn DuFfY
//Walrus hurdles is a fast pace, high intensity game in which a walrus must run and jump
//over hurdles in his way. The player can use the space bar to jump and the down arrow 
//to fast drop onto the ground instead of waiting for gravity to do the job. There will 
//be power up cubes similar to those in mario kart (ie. they give you a random powerup 
//when you pick them up) coming in the near future.
//P.s. Chansey=+NAN


void setup() {
  size(960, 640);
  background(150);
  Sky = loadImage("Sky.jpg");
  StartScreen = loadImage("StartScreen.png");
  Hurdle = loadImage("Hurdle.png");
  Walrus1 = loadImage("Walrus1.png");
  Walrus2 = loadImage("Walrus2.png");
  Cloud = loadImage("Cloud.png");
  Sun = loadImage("Sun.png");
  EndScreen = loadImage("End screen.png");
  //smooth();
}

void draw() {
  if (gamestate == start) {
    drawStartScreen();
  }
  if (gamestate == play) {
    background(150);
    hitDetect();
    drawTrack();
    drawHurdle();
    drawWalrus();
    printScore(round (meters/100));
    moveSun();
    drawClouds();
    moveClouds();
    moveHurdle();
    moveWalrus();
    textSize(12);
    //text(HX, 20, 20);
    meters = meters + HS;
  }
  if (gamestate == end) {
    background(150);
    drawTrack();
    drawHurdle();
    moveSun();
    drawWalrus();
    moveClouds();
    drawClouds();
    printScore(round (meters/100));
    drawEndScreen();
  }
  millisec++;
}

void drawWalrus() {
  fill(255);
  //rect(WX, WY, WW, WH);
  image(animate(Walrus1, Walrus2, 25), WX, WY, WW, WH);
}
void moveWalrus() {
  if (WY<=floor) {
    WY = WY-V;
  } 
  V=V-G;
}

void jump() {
  WY = WY-10;
  V = 4;
}
void moveSun() {
  SunY = SunY + SunDelta;

  if (SunY == 60)
    SunDelta = 1;
  if (SunY == SY-250)
    SunDelta = -1;
}

void drawClouds() {
  image(Cloud, C1X, C1Y);
  image(Cloud, C2X, C2Y);
}
void moveClouds() {
  C1Y = C1Y+C1D;
  C2Y = C2Y+C2D;
  if (C1Y == 50)
    C1D = -.5;
  if (C1Y == 40)
    C1D = .5;

  if (C2Y == 120)
    C2D = .5;
  if (C2Y == 130)
    C2D = -.5;
}


void drawHurdle() {
  image(Hurdle, HX, HY, HW, HH);
}
void drawTrack() {
  image(Sky, 0, -300);
  image(Sun, SunX, SunY, 200, 200);
  fill(150, 40, 40);
  stroke(0);
  rect (0, SY-50, SX, 40);
  rect (0, SY-75, SX, 25);
  rect (0, SY-95, SX, 20);
  fill(50, 130, 0);
  rect (0, SY-10, SX, 10);
  fill(0);

  fill(200);
  rect(-1, SY-300, SX+1, 205);
  textSize(50);
  fill(0);
  text("Walrus University", SX/2-201, SY-251);
  fill (150, 40, 40);
  text("Walrus University", SX/2-200, SY-250);
  fill(0);
  rect(SX/3, SY-200, SX/3, 70);
}

void drawStartScreen() {

  image(StartScreen, 0, 0, SX, SY);
}

void moveHurdle() {
  HX = HX-HS;
  if (HX<0-HW) {
    HX = SX+HW+(random(5, 400));
    if (HS<maxSpeed)
      HS = HS + 2;
  }
}

void printScore(int score) {
  fill(100, 250, 100);
  text("Meters: " + (score), SX/3+8, SY-140);
}
void drawEndScreen() {
  //slideIn("Game Over", SX/2-100, SY/2);
  /*textSize(50);
   fill(255, 0, 0);
   text("You Dun Goofed", SX/2-200, SY/2-100);
   text("R to Restart!", SX/2-160, SY/2-40);
   */
   float score = meters/100;
  fadeIn(EndScreen, "Score: " + score, 370, 220, 255, 0, 0, 30);
}

PImage animate (PImage p1, PImage p2, int m) {
  if (gamestate == play) {
    if (millisec % m == 0) {
      //////////////println("GO!");
      animationIndexF = animationIndexF* -1;
    }
    if (animationIndexF == (1)) {
      //////////////println("p1");
      displayImage1 = true;
      displayImage2 = false;
    }
    else if (animationIndexF == -1) {
      //////////////println("p2");
      displayImage2 = true;
      displayImage1 = false;
    }
    if (displayImage1 == true) {
      imageToReturn = p1;
    }
    else if (displayImage2 == true) {
      imageToReturn = p2;
    }
  }
  return imageToReturn;
}

int o = 0;
boolean fading1 = true;
void fadeIn(PImage s, String q, int sx, int sy, int r, int g, int b, int size) {
  if (fading1 == true) {
    tint(255, o);
    fill(245, 0, 121, o);
    textSize(size);
    image(s, 0, 0, SX, SY);
    text(q, sx, sy);
    //text(s, sx, sy);
    o=o+10;
  }
  if (o > 255) {
    fading1 = false;
    //text(mouseX + ", " + mouseY,20,20);
    fill(245, 0, 121, 255);
    textSize(size);
    image(s, 0, 0, SX, SY);
    text(q, sx, sy);
    text("Press R to Restart! Or esc to Quit", 120, 143*2);
  }
  noTint();
}

int play = 1;
int end = 0;
int start = 2;
int gamestate = start;
PImage Sky;
PImage StartScreen;
PImage Hurdle;
PImage Walrus1;
PImage Walrus2;
PImage Cloud;
PImage EndScreen;
PImage imageToReturn;
PImage Sun;
float V = 0;
float G = .1;
int WW = 150;
int WH = 75;
int SX = 960;
int SY = 640;
int WX = 150;
float WY = SY - 125;
int C1X = 200;
float C1Y = 50;
int C2X = SX-250;
float C2Y = 120;
float C1D = -1;
float C2D = 1;
int SunX = 100;
int SunY = SY-200;
int SunDelta = -1;
float floor = WY;
int HH = 40;
int HW = 25;
float HX = SX + HW + 5;
int HY = SY-(50 + HH);
int HS = 4;
int meters = 0;
int maxSpeed = 16;
int animationIndexF = 1;
boolean displayImage1 = true;
boolean displayImage2 = false;
int millisec = 0;
void hitDetect(){
  if (HX>WX&&HX<WX+WW&&HY>WY&&HY<WY+WH){
    gamestate = end;
  }
}
void keyPressed() {
  if (key == ' '&&WY>=floor) {
    jump();
  }
  if (key == 'p' && gamestate == start) {
    gamestate = play;
  }
  if (key == 'r' && gamestate == end) {
    gamestate = start;
    V = 0;
    WW = 150;
    WH = 75;
    WX = 150;
    WY = SY - 125;
    HH = 40;
    HW = 25;
    HX = SX + HW + 5;
    HY = SY-(50 + HH);
    HS = 4;
    meters = 0;
    maxSpeed = 14;
    animationIndexF = 1;
    displayImage1 = true;
    displayImage2 = false;
    o = 0;
    noTint();
    fading1 = true;
    millisec = 0;
  }
  if (keyCode == DOWN && gamestate == play) {
    V = -8;
  }
}


