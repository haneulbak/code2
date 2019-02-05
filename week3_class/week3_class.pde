float lineX = 100;
float rectX = 150, rectY = 120;
float rectWidth = 40, rectHeight = 60;
color bgColor = color(220, 100, 200);
boolean buttonIsClicked = false;

void setup() {
  size(300, 500);
}

void draw() {
  if (buttonIsClicked) {
    bgColor = color(0, 100, 200);
  } else {
    bgColor = color(220, 100, 200);
  }
  background(bgColor);
  line(lineX, 0, lineX, height);
  rect(rectX, rectY, rectWidth, rectHeight);
}

void mouseClicked() {
  if (mouseX > rectX && 
    mouseX < rectX + rectWidth && 
    mouseY > rectY && 
    mouseY < rectY + rectHeight) {
    buttonIsClicked = false;
  } else {
    buttonIsClicked = true;
  }
  buttonIsClicked = !buttonIsClicked;
  println(buttonIsClicked);
}
