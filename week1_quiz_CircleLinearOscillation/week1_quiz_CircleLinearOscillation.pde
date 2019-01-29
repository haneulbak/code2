float xPos, yPos;
float speed = 10;

void setup() {
  size(600, 400);
  xPos = width*.5;
  yPos = height*.5;
  //frameRate(10);
}

void draw() {
  background(0);
  fill(255);
  ellipse(xPos, yPos, 50, 50);
  xPos = xPos + speed;
  if ((xPos>width)||(xPos<0)) {
    speed = speed * -1;
  }
}
