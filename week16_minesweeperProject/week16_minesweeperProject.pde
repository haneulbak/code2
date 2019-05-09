int margin;
int side;
int column;
int line;
int baby;
int near;
int find = 0;

float xPos1; 
float xPos2; 
float xPos3; 

float yPos1 = 205;
float yPos2 = 360;

float buttonCorner = 10;

float buttonWidth = 120;
float buttonHeight = 70;

color white = color(255);
color grey = color(120, 120, 120);
color red = color(255, 0, 0);
color orange = color(245, 119, 0);

color buttonClicked = white;

boolean lost = false;
boolean won = false;
boolean warning = false;
boolean start = false;

boolean [][] BB;
boolean [][] FLAG;
boolean [][] GOTCHA;
int [][] NEARBABY;

void settings() {
  size(900, 700);
}
void setup() {
  column=10;
  line=10;
  side=40;
  margin=width/3-(side*10)/2;
  baby=10;
}

void draw() {
  background(100, 150, 255);

  for (int i= 0; i<column; i++) {
    for (int j=0; j<line; j++) {

      if (FLAG[i][j]==true && GOTCHA[i][j]==false) {
        fill(orange); 
        drawSquare(i, j);
      } else {
        if (GOTCHA[i][j]==true) {

          if (BB[i][j]) {
            fill(white);
            drawSquare(i, j);
            drawBaby(i, j);
            lost = true;
          } else {
            drawNearBaby(i, j);

            if (NEARBABY[i][j] == 0) {

              openSquare(i, j);
              fill(white);
              openSquare(i, j);
            } else {
              fill(white);
              drawSquare(i, j);
              drawValue(i, j);
            }
            find++;
          }
        } else {
          fill(grey);
          drawSquare(i, j);
        }
      }
    }
  }
  if (lost==true) {

    for (int i= 0; i<column; i++) {
      for (int j=0; j<line; j++) {

        fill(white);
        openSquare(i, j);
        if (BB[i][j]==true) {
          drawBaby(i, j);
        }
      }
    }
    fill(red);
    textSize(150);
    textAlign(CENTER);
    text("PERDU !", width/2, height/2);
    textSize(30);
    fill(0);
    text("Appuyer sur la touche \" r \" pour recommencer", width/2, 600);
  }
  if (find==column*line-baby) {
    if (lost==false) {
      won =true;
      find=0;
    }
    find=0;
  }
  if (won==true) {
    background(100, 50, 155);
    // fill(green);
    textSize(150);
    textAlign(CENTER);
    text("YOU WON !", width/2, height/2);
    textSize(30);
    text("PRESS \"s\" to start over", width/2, 600);
  }
  find=0;
}


void mousePressed() {
  BB = new boolean [column][line];
  FLAG = new boolean [column][line];
  GOTCHA = new boolean[column][line];
  NEARBABY = new int[column][line];
  for (int i=0; i<column; i++) {
    for (int j=0; j<column; j++) {
      GOTCHA[i][j] = false;
    }
  }
  makeBaby();

  if (mouseButton == RIGHT) {
    if ((mouseX > margin && mouseY > margin) 
      && (mouseX < margin+column*side && mouseY < margin+line*side)) {
      int i = (int) map(mouseX, margin, margin+column*side, 0, column); 
      int j = (int) map(mouseY, margin, margin+line*side, 0, line); 

      if (!GOTCHA[i][j]) {
        if (FLAG[i][j]) {
          FLAG[i][j]=true;
        } else {
          FLAG[i][j]=false;
        }
      }
    }
  }

  if (mouseButton == LEFT) {

    if ((mouseX > margin && mouseY > margin) 
      && (mouseX < margin+(column*side) && mouseY < margin+(line*side))) {
      println("mouseX = "+mouseX, "mouseY = "+mouseY);
      int i = (int) map(mouseX, margin, margin+(column)*side, 0, column); 
      int j = (int) map(mouseY, margin, margin+(line)*side, 0, line); 
      println("i ="+i, "j ="+j);
      println("margin ="+margin, "side ="+side);
      println("line ="+line, "column ="+column);

      if (!FLAG[i][j]) {
        if (!GOTCHA[i][j]) {
          GOTCHA[i][j] = true;
        }
      }
    }
  }
}


void makeBaby() {

  int nb = 0; 
  while (nb < baby) {

    int x = (int) random(0, column); 
    int y = (int) random(0, line); 

    if ( BB[x][y] == false) {
      BB[x][y] = true; 
      nb++;
    }
  }
}

void drawBaby(int i, int j) {

  fill(red); 
  ellipse(i*side+margin+25, j*side+margin+25, side-20, side-20);
}

void drawSquare(int i, int j) {

  int x = i*side+margin+side/2; 
  int y = j*side+margin+side/2; 

  rect(x, y, side, side);
}

void drawNearBaby(int i, int j) {

  near = 0; 
  int X = i-1;
  int X1 = i+1;
  int Y = j-1;
  int Y1 = j+1;

  for (int x= X; x<=X1; x++) {
    for (int y=Y; y<=Y1; y++) {  

      if (( x>= 0 && y>=0 ) && ( x < column  && y < line)) {
        if (BB[x][y] == true ) {
          near++;
        }
      }
    }
  }
  NEARBABY[i][j] = near;
}

void drawValue(int i, int j) {

  textAlign(CENTER, CENTER);
  fill(0, 0, 255);
  textSize(20);
  text(near, margin+side/2+i*side, margin+side/2+j*side);
}

void openSquare(int i, int j) {

  int px = i-1;
  int py = j-1;
  int qx = i+1;
  int qy = j+1;

  for (int i1= px; i1<=qx; i1++) {
    for (int j1=py; j1<=qy; j1++) {

      if ((i1 >= 0 && j1 >= 0) && (i1 < column && j1 < line) && GOTCHA[i1][j1] 
        == false && BB[i][j]==false) {

        GOTCHA[i1][j1] = true;
      }
    }
  }
}
