float hopx = 385;
float hopy = 575;
int fsd = 4;
int fsu = 4;
int fsl = 4;
int fsr = 4;



void setup() {

  size(770, 600);
}
void draw() {
  fill(10, 10, 50);
  background(75, 75, 255);
  fill(0, 250, 00);
  ellipse(hopx, hopy, 50, 50);
  
  /*Car a = new Car;
  Car b = new Car;
  Car c = new Car;
  Car d = new Car;
  Car e = new Car;
  Car f = new Car;
  Car g = new Car;
  display(a,b,c,d,e,f,g)
 */
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
  } else if (hopy <= 35 )
  hopy -= .50;
  else {
    fsu = 4;
  }
  if (fsr<4 && hopx != 745) {
    hopx += 20;
    delay(20);
    fsr++;
  

}

  else {
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
/*class Car{
 // Car(float cx, float cy, int csi, int csp){
  
  float cx;
  Car (float){    
    this.cx=0;
  }
    float cy;
  Car (float){    
    this.cy=0;
  }  float csi;
  Car (fint){    
    this.csi=0;
  }
      int csp;
  Car (int){    
    this.csp=0;
  }
  void display()
  {
    fill(0,255,0);
    rect(cx , cy,  csi, 50);
  }
  
    

}*/
