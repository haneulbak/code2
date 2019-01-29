//80 points: Program an object that moves to your mouse over time.
//30 points: Have the object move over 3 seconds, no matter what the distance is
//20 points: Have the object ease in to your mouse position

float xPos = 0, yPos = 0;
float xEasing = .05, yEasing = .025;

void setup() {
  size(1000, 500);
  frameRate(25);
}

void draw() {  
  background(0);
  fill(255);
  rectMode(CENTER);
  rect(xPos, yPos, 50, 50);
  float X = mouseX - xPos;
  xPos += X * xEasing;
  float Y = mouseY - yPos;
  yPos += Y * yEasing;
}
