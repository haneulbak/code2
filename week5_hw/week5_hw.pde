PImage intro = new PImage();
int frame;

int hiFrame = 11;
int hiSpeed = 11;
PImage[] hi = new PImage[hiFrame];

int flyFrame = 11;
int flySpeed = 15;
PImage[] fly = new PImage[flyFrame];

int shakeFrame = 11;
int shakeSpeed = 11;
PImage[] shake = new PImage[shakeFrame];

int INTRO = 0;
int HI = 1;
int FLY = 2;
int SHAKE = 3;
int STATE = INTRO;

void setup() {
  size(500, 500);

  intro = loadImage("hi_1.jpg");

  hi[0] = loadImage("hi_1.jpg");
  hi[1] = loadImage("hi_2.jpg");
  hi[2] = loadImage("hi_3.jpg");
  hi[3] = loadImage("hi_2.jpg");
  hi[4] = loadImage("hi_4.jpg");
  hi[5] = loadImage("hi_5.jpg");
  hi[6] = loadImage("hi_4.jpg");
  hi[7] = loadImage("hi_1.jpg");
  hi[8] = loadImage("hi_2.jpg");
  hi[9] = loadImage("hi_3.jpg");
  hi[10] = loadImage("hi_2.jpg");

  fly[0] = loadImage("fly_1.jpg");  
  fly[1] = loadImage("fly_2.jpg");
  fly[2] = loadImage("fly_3.jpg");
  fly[3] = loadImage("fly_4.jpg");
  fly[4] = loadImage("fly_3.jpg");
  fly[5] = loadImage("fly_4.jpg");
  fly[6] = loadImage("fly_5.jpg");
  fly[7] = loadImage("fly_4.jpg");
  fly[8] = loadImage("fly_3.jpg");
  fly[9] = loadImage("fly_2.jpg");
  fly[10] = loadImage("fly_1.jpg");

  shake[0] = loadImage("shake_1.jpg");
  shake[1] = loadImage("shake_2.jpg");
  shake[2] = loadImage("shake_3.jpg");
  shake[3] = loadImage("shake_2.jpg");
  shake[4] = loadImage("shake_1.jpg");
  shake[5] = loadImage("shake_2.jpg");
  shake[6] = loadImage("shake_3.jpg");
  shake[7] = loadImage("shake_4.jpg");
  shake[8] = loadImage("shake_4.jpg");
  shake[9] = loadImage("shake_5.jpg");
  shake[10] = loadImage("shake_5.jpg");
}

void draw() {
  background(255);
  frame = frame++;
  switch (STATE) {
  case 0:
  default:
    image(intro, 30, 30);
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
  frame = 0;
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
  image(hi[frame], 30, 30);
  if (frameCount % hiSpeed == 0) {
    frame++;
  }
  if (frame >= hiFrame) {
    STATE = INTRO;
  }
}

void fly() {
  image(fly[frame], 30, 30);
  if (frameCount % flySpeed == 0) {
    frame++;
  }
  if (frame >= flyFrame) {
    STATE = INTRO;
  }
}

void shake() {
  image(shake[frame], 30, 30);
  if (frameCount % shakeSpeed == 0) {
    frame++;
    if (frame >= shakeFrame) {
      STATE = INTRO;
    }
  }
}
