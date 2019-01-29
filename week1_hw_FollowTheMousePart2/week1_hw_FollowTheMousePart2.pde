//30 points: Have the object only move to your mouse when you click. (V)
//20 points: Create character art for your object (V)
//30 points: Animate your character (V)

color colorChange;
int positionA, positionB, positionC;
float xPos = 500, yPos = 500;
float speed = 10;
float xEasing = .1, yEasing = .1;

void setup() {
  size(1000, 1000);
}

void draw() {  

  background(colorChange);
  colorChange = color(positionA, positionB, positionC);
  positionA = int(map(mouseX, 0, width, 0, 900));
  positionB = int(map(mouseY, 0, height, 0, 500));
  positionC = int(map(0, mouseX, mouseY, 100, 10));
  fill(0);
  rect(xPos, yPos, 240, 240);
  fill(255);
  rect(xPos, yPos, 220, 220);
  fill(colorChange);
  rect(xPos, yPos, 200, 200);
  fill(0);
  rect(xPos, yPos, 180, 180);
  fill(255);
  rect(xPos, yPos, 160, 160);
  fill(colorChange);
  rect(xPos, yPos, 140, 140);
  fill(0);
  rect(xPos, yPos, 120, 120);
  fill(255);
  rect(xPos, yPos, 100, 100);
  fill(colorChange);
  rect(xPos, yPos, 80, 80);
  fill(0);
  rect(xPos, yPos, 60, 60);
  fill(255);
  rect(xPos, yPos, 40, 40);
  fill(colorChange);
  rect(xPos, yPos, 20, 20);
  rectMode(CENTER);
  noStroke();
  if (mousePressed == true) {
    float X = mouseX - xPos;
    xPos += X * xEasing;
    float Y = mouseY - yPos;
    yPos += Y * yEasing;
  }
}
