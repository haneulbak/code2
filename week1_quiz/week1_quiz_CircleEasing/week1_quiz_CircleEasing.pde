float xPos, yPos;
float speed = 1;
float easeAmount =.05;

void setup() {
  size(600, 400);
  xPos = width*.5;
  yPos = height*.5;
}

void draw() {
  background(0);
  fill(255);
  ellipse(xPos, yPos, 50, 50);

  xPos = xPos + speed;
  if ((xPos>width)||(xPos<0)) {
    speed = speed * -1;
  }
  // reference to processing website Easing\examples
  float X = mouseX;
  float distanceX = X - xPos;
  xPos += distanceX * easeAmount;
  float Y = mouseY;
  float distanceY = Y - yPos;
  yPos += distanceY * easeAmount;
}
