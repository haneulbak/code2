//30 points: Make a square move on screen (v)
//75 points: Use buttons to move the square in 4 cardinal directions (v)
//5 points: A rollover state for each button (repeatable per button) (v)
//5 points: Build icons for each button to represent what it does (repeatable) (v)
//20 points: Make your square look like a vehicle (v)
//40 points: Add in vehicular movement 
//30 points: Add in an end state (v)

int xPos, yPos;
int d1, d2, d3, d4;
int buttonSize, buttonPosX, buttonPosY;

void setup() {
  size(800, 800);
  xPos=width/2;
  yPos=height/2;
  buttonSize=80;
  buttonPosX=width/4-100;
  buttonPosY=height/4-100;
}

  void draw() {
    background(0);
    fill(204, 153, 0);
    rect(xPos, yPos, 80, 150);
    rectMode(CENTER);
    stroke(0);
    fill(255);
    ellipse(xPos-20, yPos-55, 20, 20);
    ellipse(xPos+20, yPos-55, 20, 20);
    stroke(150);
    line(200, 30, 600, 30);

    if (yPos < 30) {
      xPos = width/2; 
      yPos = height-60;
    }

  if (d1<buttonSize/2 && mousePressed) {
    xPos-=10;
  }
  if (d2<buttonSize/2 && mousePressed) {
    yPos+=10;
  } 
  if (d3<buttonSize/2 && mousePressed) {
    xPos+=10;
  } 
  if (d4<buttonSize/2 && mousePressed) {
    yPos-=10;
  }

  d1=(int(dist(buttonPosX, buttonPosY, mouseX, mouseY)));
  d2=(int(dist(buttonPosX, buttonPosY*2, mouseX, mouseY)));
  d3=(int(dist(buttonPosX, buttonPosY*3, mouseX, mouseY)));
  d4=(int(dist(buttonPosX, buttonPosY*4, mouseX, mouseY)));

  fill(150);
  ellipse(buttonPosX, buttonPosY, buttonSize, buttonSize);
  ellipse(buttonPosX, buttonPosY*2, buttonSize, buttonSize);
  ellipse(buttonPosX, buttonPosY*3, buttonSize, buttonSize);
  ellipse(buttonPosX, buttonPosY*4, buttonSize, buttonSize);

  fill(255);
  triangle(buttonPosX, buttonPosY-30, buttonPosX-30, buttonPosY, buttonPosX, buttonPosY+30);
  triangle(buttonPosX+30, buttonPosY*2, buttonPosX-30, buttonPosY*2, buttonPosX, buttonPosY*2+30);
  triangle(buttonPosX, buttonPosY*3-30, buttonPosX+30, buttonPosY*3, buttonPosX, buttonPosY*3+30);
  triangle(buttonPosX, buttonPosY*4-30, buttonPosX-30, buttonPosY*4, buttonPosX+30, buttonPosY*4);
}
