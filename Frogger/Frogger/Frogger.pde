float hopx = 400;
float hopy = 575;
int fsd = 4;
int fsu = 4;
int fsl = 4;
int fsr = 4;

void setup() {

  size(800, 600);
}
void draw() {
  fill(10, 10, 50);
  background(75, 75, 255);
  fill(0, 250, 00);
  ellipse(hopx, hopy, 50, 50);
  
  if (hopy <0 || hopy >600 || hopx <0 || hopx >800){
    
  }
  
 if (fsd<4) {
    hopy += 20;
    delay(20);
    fsd++;
  } else {
    fsd = 4;
  }
  if (fsu<4) {
    hopy -= 20;
    delay(20);
    fsu++;
  } else {
    fsu = 4;
  }
  if (fsr<4) {
    hopx += 20;
    delay(20);
    fsr++;
  } else {
    fsr = 4;
  }
  if (fsl <4) {
    hopx -= 20;
    delay(20);
    fsl++;
  } else {
    fsl = 4;
  }
}
void keyPressed()
{

  if (keyCode == UP || key == 'w') {
    fsu = 1;
  } else if (keyCode == DOWN || key == 's') {
    fsd = 1;
  } else if (keyCode == RIGHT || key == 'd' ) {
    fsr = 1;
  } else if (keyCode == LEFT || key == 'a') {
    fsl = 1;
  }
}
