PImage intro = new PImage();
int frame;

int hiFrame = 11;
int hiSpeed = 8;
PImage[] hi = new PImage[hiFrame];

int flyFrame = 11;
int flySpeed = 8;
PImage[] fly = new PImage[flyFrame];

int shakeFrame = 11;
int shakeSpeed = 8;
PImage[] shake = new PImage[shakeFrame];

int INTRO = 0;
int HI = 1;
int FLY = 2;
int SHAKE = 3;
int STATE = INTRO;

void setup() {
  size(500, 500);

  intro = loadImage("intro.png");

  hi[0] = loadImage("hi_1.png");
  hi[1] = loadImage("hi_2.png");
  hi[2] = loadImage("hi_3.png");
  hi[3] = loadImage("hi_2.png");
  hi[4] = loadImage("hi_4.png");
  hi[5] = loadImage("hi_5.png");
  hi[6] = loadImage("hi_4.png");
  hi[7] = loadImage("hi_1.png");
  hi[8] = loadImage("hi_2.png");
  hi[9] = loadImage("hi_3.png");
  hi[10] = loadImage("hi_2.png");

  fly[0] = loadImage("fly_1.png");  
  fly[1] = loadImage("fly_2.png");
  fly[2] = loadImage("fly_3.png");
  fly[3] = loadImage("fly_4.png");
  fly[4] = loadImage("fly_3.png");
  fly[5] = loadImage("fly_4.png");
  fly[6] = loadImage("fly_5.png");
  fly[7] = loadImage("fly_4.png");
  fly[8] = loadImage("fly_3.png");
  fly[9] = loadImage("fly_2.png");
  fly[10] = loadImage("fly_1.png");

  shake[0] = loadImage("shake_1.png");
  shake[1] = loadImage("shake_2.png");
  shake[2] = loadImage("shake_3.png");
  shake[3] = loadImage("shake_2.png");
  shake[4] = loadImage("shake_1.png");
  shake[5] = loadImage("shake_2.png");
  shake[6] = loadImage("shake_3.png");
  shake[7] = loadImage("shake_4.png");
  shake[8] = loadImage("shake_5.png");
  shake[9] = loadImage("shake_4.png");
  shake[10] = loadImage("shake_5.png");
}

void draw() {
  background(255);
  frame = frame++;
  switch (STATE) {
  case 0:
  default:
    image(intro, 100, 100);
    break;
  case 1:
    hi();
    break;
  case 2:
    fly();
    break;
  case 3:
    shake();
    break;
  }
}

void keyTyped() {
  switch(key) {
  case 'h':
    STATE = HI;
    break;
  case 'f':
    STATE = FLY;
    break;
  case 's':
    STATE = SHAKE;
    break;
  }
}

void hi() {
  image(hi[hiFrame], 100, 100);
  if (frameCount % hiSpeed == 0) {
    hiFrame++;
    if (frame >= hiFrame) {
      STATE = INTRO;
    }
  }
}

void fly() {
  image(fly[flyFrame], 100, 100);
  if (frameCount % flySpeed == 0) {
    flyFrame++;
    if (frame >= flyFrame) {
      STATE = INTRO;
    }
  }
}

void shake() {
  image(shake[shakeFrame], 100, 100);
  if (frameCount % shakeSpeed == 0) {
    shakeFrame++;
    if (frame >= shakeFrame) {
      STATE = INTRO;
    }
  }
}
