class Ball {
  
  PVector position;
  float xSpeed,ySpeed;
  float size = 100;
  
  Ball(PVector _position) {
    position = _position;
    xSpeed = random(-10,5);
    ySpeed = random(-5,10);
  }
  
  void display(){
    noStroke();
    fill(255);
    ellipse(position.x,position.y,size,size);
  }
  
  void move(){
    position.x = pmouseX;
    position.y = pmouseY;
  }
  
  void bounceX(){
    xSpeed = -xSpeed;
  }
  
  void bounceY(){
    ySpeed = -ySpeed;
  }
}
