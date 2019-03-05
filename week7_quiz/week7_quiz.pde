//10 points: Have a circle move on screen
//25 points: have the circle bounce off the bottom and sides of the screen
//25 points: Simulate Gravity on the circle
//20 points: Reduce the circle's velocity when it hits the screen edges
//20 points: Catch & Release the circle with your mouse
//30 points: "Throw" the circle by moving and releasing your mouse quickly

Ball myBall;

void setup(){
  size(500,500);
  myBall = new Ball(new PVector(width/2,height/2));
}

void draw(){
  background(0);
  myBall.display();
  myBall.move();

  if (myBall.position.x <= width-myBall.size/2 || myBall.position.x > myBall.size/2) { 
  myBall.bounceX();
  }
  if (myBall.position.y > height-myBall.size/2 || myBall.position.y < myBall.size/2) { 
  myBall.bounceY();
  }
}
