float   b = 250;
int flap = 0;
boolean jump = false;
float startGravity = 1;
float gravityInc = .15;
float gravity = startGravity;
float flapSpeed = 0;
float flapdie = 7.5;
int lowerX;
int lowerY;
int biggerX;
int biggerY;
int gap = 75;
float Xpipe = 500;
int Ypipe = 500;
int HYpipe = 0;
int LYpipe = 175+150;
int HHpipe = 175;
int hp = 175;
int lp = 175;
int z = 0;
float sped = 2;
int score = 0;


void setup() {
  size (500, 500);  
}
void draw() {
  background(025, 100, 200);
  fill(0, 0, 0);
  text("Score" + score, 20, 0);
  Loser();
  fill(#f5bd1f);
  stroke(0, 0, 0);
  ellipse(250, b, 60, 50);
  if (Xpipe <= 190) {
    Xpipe = Xpipe - sped;
    sped += .01;
    score += 1;
  }
  if (Xpipe < -60) {
    Xpipe = 500;
    int Ypip = (int) random(100, 400);
    hp = (int) random(125, 300);
    lp = hp + 300;
    LYpipe = hp + 150;
    HYpipe = 0;
  }
  Xpipe = Xpipe - sped;
  b=b+gravity;
  gravity+=gravityInc;
  b -= flapSpeed;
  if (jump == true) {
    flapSpeed -= flapdie; 
    if (flapSpeed < 0) {
      flapSpeed = 0;
      jump = false;
    }
  }
  fill(0, 250, 0);
  rect(Xpipe, LYpipe, 60, lp);
  rect(Xpipe, HYpipe, 60, hp);
} 
void keyPressed() {
  if (key == 32) {
    jump = true;
    flapSpeed = 30;
    gravity = startGravity;
  }
}
void Loser() {
  if (b >= 525 || b <= -25) {
    noLoop();
    textSize(100);
    background(0, 0, 0);
    fill(250, 0, 0);
    text("YOU LOST", 0, 250);
  }
}
