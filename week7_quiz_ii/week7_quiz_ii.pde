//10 points: Have a circle move on screen (V)
//10 points: Use better colors than Ben (V)
//25 points: have the circle bounce off the bottom and sides of the screen (V)
//25 points: Simulate Gravity on the circle (V)
//20 points: Reduce the circle's velocity when it hits the screen edges (V)
//20 points: Catch & Release the circle with your mouse (v)
//30 points: "Throw" the circle by moving and releasing your mouse quickly (V)

Ball ball;

void setup(){
  size(1000,1000);
  ball = new Ball();
}

void draw(){
  background(0);
  ball.display();
  ball.move();
  ball.bounce();
  ball.play();
}
