TimerButton buttons;


void setup() {
  size(800, 800);
  background(0);
  buttons = new TimerButton();
  
}

void draw(){
  buttons.display();
  buttons.colorChange();
}
