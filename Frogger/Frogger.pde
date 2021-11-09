float hopx = 385;
float hopy = 575;
int fsd = 4;
int fsu = 4;
int fsl = 4;
int fsr = 4;
int score = 0;
PImage back;
PImage carLeft;
PImage carRight;
PImage frog;
String lose = "You slapped a car but it was harder than chedder cheese so you combusted. D=";
int canmove = 0;
ArrayList < Car > cars;

Car first, second, third, fourth, fith, sixth, seventh;

void setup() {
  first = new Car(25, 70, 50, 4);
  second = new Car(745, 140, 50, -3.5);
  third = new Car(745, 210, 50, -5.5);
  fourth = new Car(25, 280, 50, 5.5);
  fith = new Car(745, 350, 50, -4.5);
  sixth = new Car(25, 420, 50, 5);

  cars = new ArrayList < Car >( );
  cars.add(first);
  cars.add(second);
  cars.add(third);
  cars.add(fourth);
  cars.add(fith);
  cars.add(sixth);
  size(770, 600);
  back = loadImage("froggerBackground.png");
  carLeft = loadImage("carLeft.png");
  carLeft.resize(160, 100);
  carRight = loadImage("carRight.png");
  carRight.resize(160, 100);
  frog = loadImage("frog.png");
  frog.resize(75, 75);
  back.resize(770, 600);
}
void draw() {
  fill(10, 10, 50);
  background(75, 75, 255);
  fill(0, 250, 00);
  // ellipse(hopx, hopy, 50, 50);

  background(back);
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
    hopx = 385;
    hopy = 575;
    score +=1;
    if (second.csp < 0) {
      second.csp -= 1;
    } else {
      second.csp += 1;
    }
    if (first.csp < 0) {
      first.csp -= 1;
    } else {
      first.csp += 1;
    }
    if (third.csp < 0) {
      third.csp -= 1;
    } else {
      third.csp += 1;
    }
    if (fourth.csp < 0) {
      fourth.csp -= 1;
    } else {
      fourth.csp += 1;
    }
    if (fith.csp < 0) {
      fith.csp -= 1;
    } else {
      fith.csp += 1;
    }
    if (sixth.csp < 0) {
      sixth.csp -= 1;
    } else {
      sixth.csp += 1;
    }
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

  if (intersects()) {
    Lose();
  }


  image (frog, hopx, hopy);
}




boolean intersects() {
  for (Car car : cars) {
    if ((hopy > car.getY() && hopy < car.getY()+50) &&
      (hopx > car.getX() && hopx < car.getX()+car.getSize())) {
      return true;
    }
  }

  return false;
}


void keyPressed() {


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
    if (cx < -100) {
      csp -= csp*2 ;
    }
    if (cx > 885) {
      csp -= csp*2;
    }
  }
  void display() {

    fill(0, 255, 0);


    if (csp >0) {
      image (carRight, cx, cy);
    } else {
      image (carLeft, cx, cy);
    }
  }
  float getX() {
    return cx;
  }
  float getY() {
    return cy;
  }
  int getSize() {
    return csi;
  }
}
void Lose() {

  background(0, 0, 0);
  text(lose, 300, 300);
  text(score, 300, 121);
  //wwwww

  noLoop();
}
