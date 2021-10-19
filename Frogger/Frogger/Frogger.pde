float hopx = 385;
float hopy = 575;
int fsd = 4;
int fsu = 4;
int fsl = 4;
int fsr = 4;
int canmove = 0;
Car first,second,third,fourth,fith,sixth,seventh;

void setup() {
   first = new Car(25, 70, 50, 4);
   second = new Car(745, 140, 50, -3.5);
   third = new Car(745, 210, 50, -5.5);
   fourth = new Car(25, 280, 50, 5.5);
   fith = new Car(745, 350, 50, -4.5);
   sixth = new Car(25, 420, 50, 5);
   
  size(770, 600);
}
void draw() {
  fill(10, 10, 50);
  background(75, 75, 255);
  fill(0, 250, 00);
  ellipse(hopx, hopy, 50, 50);

first.display();
second.display();
third.display();
fourth.display();
fith.display();
sixth.display();

first.move();
second.move();
third.move();
fourth.move();
fith.move();
sixth.move();

  if (fsd<4 && hopy != 575) {
    hopy += 20;
    delay(20);
    fsd++;
  } else {
    fsd = 4;
  }
  if (fsu<4 && hopy >= 35) {
    hopy -= 20;
    delay(20);
    fsu++;
  } else if (hopy <= 35 ) {
    hopy -= .50;
    canmove += 99999;
  } else {
    fsu = 4;
  }
  if (fsr<4 && hopx != 745) {
    hopx += 20;
    delay(20);
    fsr++;
  } else {
    fsr = 4;
  }

  if (fsl <4 && hopx != 25) {
    hopx -= 20;
    delay(20);
    fsl++;
  } else {
    fsl = 4;
  }
}
void keyPressed()
{

  if (keyCode == UP && canmove == 0|| key == 'w' && canmove == 0) {
    fsu = 1;
  } else if (keyCode == DOWN && canmove == 0|| key == 's' && canmove == 0) {
    fsd = 1;
  } else if (keyCode == RIGHT && canmove == 0|| key == 'd' && canmove == 0) {
    fsr = 1;
  } else if (keyCode == LEFT && canmove == 0|| key == 'a' && canmove == 0) {
    fsl = 1;
  }
}
class Car {
  float cx;
  float cy;
  int csi;
  float csp;
  Car(float cx, float cy, int csi, float csp) {
    this.cx = cx;
    this.cy = cy;
    this. csi = csi;
    this. csp = csp;
 
  }
void move() {
     cx = cx + csp;
     if (cx < -75){
       csp -= csp*2 ;
     }
     if (cx > 860){
      csp -= csp*2; 
     }
}
  void display() {

    fill(0, 255, 0);
    rect(cx, cy, csi, 50);
  }
}
