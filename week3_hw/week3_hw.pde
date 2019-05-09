//10 points: Make a circular button (V)
//10 points: Make a square button (v)
//30 points each: Create a class for your circular button and another for your square button OR
//80 points: Make one class that has the option for circular or square buttons in its constructor statement (V)
//30 points: Have a button that's inactive until you press another button (V)
//50 points: Have a button that launches some fireworks
//50 points: Have different "spaces" or "screens" with separate buttons for each one (repeatable)
//75 points: Make a button that doesn't activate until it is dragged to a certain location
//20 - ?? points: Make buttons that do cool effects (repeatable)
//10 - ?? points (per button): Cool Button Icons

Button buttons;

void setup(){
  size(800, 800);
  background(0);
  buttons = new Button();
}

void draw(){
  buttons.display();
  buttons.mousePressed();
}
