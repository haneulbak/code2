class TimerButton {
  float buttonX, buttonY, buttonSize;
  color normal, rollover, inactive;
  int STATE = 0;
  int ACTIVE_STATE = 0;
  int INACTIVE_STATE = 1;
  int ROLLOVER_STATE = 2;
  int startTime, endTime, total;
  char characterCode;

  boolean overButton = false;

  TimerButton() {
    buttonX = random(300, 500);
    buttonY = random(200, 600);
    buttonSize = random(50, 100);
    normal = color(255, 255, 255);
    rollover = color(100, 100, 100);
  }

  void display() {
    stroke(255);s
    rectMode(CENTER);
    fill(normal);
    rect(buttonX, buttonY, buttonSize, buttonSize);
    rect(buttonX+200, buttonY-200, buttonSize, buttonSize);
    rect(buttonX+200, buttonY+100, buttonSize, buttonSize);
    rect(buttonX+120, buttonY-120, buttonSize, buttonSize);
    rect(buttonX-200, buttonY+100, buttonSize, buttonSize);
    rect(buttonX-200, buttonY-150, buttonSize, buttonSize);
  }

  void colorChange() {
    
  boolean overButton(
    if (mouseX >= buttonX && mouseX <= buttonX+width &&
      mouseX >= buttonY && mouseY <= buttonY+height &&
      mouseX >= buttonX+200 && mouseX <= buttonX+200+width &&
      mouseX >= buttonY-200 && mouseY <= buttonY-200+height &&
      mouseX >= buttonX+200 && mouseX <= buttonX+200+width &&
      mouseX >= buttonY+100 && mouseY <= buttonY+100+height &&
      mouseX >= buttonX+120 && mouseX <= buttonX+120+width &&
      mouseX >= buttonY-120 && mouseY <= buttonY-120+height &&
      mouseX >= buttonX-200 && mouseX <= buttonX-200+width &&
      mouseX >= buttonY+100 && mouseY <= buttonY+100+height &&
      mouseX >= buttonX-200 && mouseX <= buttonX-200+width &&
      mouseX >= buttonY-150 && mouseY <= buttonY-150+height  ) {
      return true;
    } else {
      return false;
    }
  }
}
