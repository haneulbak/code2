//30 points: Make a square move on screen (v)
//75 points: Use buttons to move the square in 4 cardinal directions (v)
//5 points: A rollover state for each button (repeatable per button) (v)
//5 points: Build icons for each button to represent what it does (repeatable) (v)
//20 points: Make your square look like a vehicle (v)
//40 points: Add in vehicular movement 
//30 points: Add in an end state (v)

PVector carDirection, pos;
float speed, turnSpeed;
float carW, carH;
float d1, d2, d3, d4;
float buttonSize, buttonPosX, buttonPosY;

void setup() {
  size(800, 800);
  carDirection = new PVector(1,0);
  pos = new PVector(300,200);
  
  speed = .2;
  turnSpeed = 10; // in degrees
  turnSpeed *= TWO_PI/360; // in radians
  
  carW = 80;
  carH = 150;
  
  buttonSize=80;
  buttonPosX=width/4-100;
  buttonPosY=height/4-100;
}

void draw() {
  background(0);
  drawCar();
  moveCar();
  drawButtons();
}

void drawCar(){
  fill(204, 153, 0);
  stroke(0);
  pushMatrix();
  translate(pos.x,pos.y);
  rotate(carDirection.heading() + HALF_PI);
  rect(0, 0, carW, carH);
  rectMode(CENTER);
  popMatrix();
  //two wheels on the car
  fill(255);
  ellipse(pos.x-20, pos.y-55, 20, 20);
  ellipse(pos.x+20, pos.y-55, 20, 20);
  stroke(150);
  line(200, 30, 600, 30);

}

void moveCar() {
  PVector toMove = new PVector(carDirection.x, carDirection.y);
  toMove.mult(speed);
  pos.add( toMove );
}

void drawButtons(){
  
  if (pos.y < 30) {
    pos.x = width/2; 
    pos.y = height-60;
  }

  if (d1<buttonSize/2 && mousePressed) {
    pos.x-=10;
  }
  if (d2<buttonSize/2 && mousePressed) {
    pos.y+=10;
  } 
  if (d3<buttonSize/2 && mousePressed) {
    pos.x+=10;
  } 
  if (d4<buttonSize/2 && mousePressed) {
    pos.y-=10;
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
