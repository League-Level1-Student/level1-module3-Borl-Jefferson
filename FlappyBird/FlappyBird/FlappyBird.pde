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

void setup() {
  size (500, 500);  
  background(025, 100, 200);
}
void draw() {
  background(025, 100, 200);
  Loser();
  fill(#f5bd1f);
  stroke(0, 0, 0);
  ellipse(250, b, 60, 50);
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
rect(250, 0, 60, 175);
rect(250, 325, 60, 175);
} 
void keyPressed() {
  if (key == 32) {
    jump = true;
    flapSpeed = 30;
   gravity = startGravity;
   
  }
}
void Loser(){
 if (b >= 525 || b <= -25){
    noLoop();
    textSize(100);
        background(0, 0, 0);
        fill(250,0,0);
    text("YOU LOST", 0, 250);

    
    
    
  }
}
