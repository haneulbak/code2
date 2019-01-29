float xPos, yPos;
float xSpeed = 6;

void setup() {
  size(600, 400);
  xPos = width*.5;
  yPos = height*.5;
  frameRate(100);
}

void draw(){
  background(0);
  fill(255);
  ellipse(xPos, yPos, 50, 50);
   xPos = xPos + xSpeed;
  if ((xPos>width)||(xPos<0)) {
    xSpeed = xSpeed * -1;
  }
}
