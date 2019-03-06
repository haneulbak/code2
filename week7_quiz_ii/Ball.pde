class Ball {

  PVector position;
  PVector speed;
  PVector gravity;
  float size = 100;

  Ball() {
    position = new PVector(random(size/2, width-size/2), random(size/2, height-size/2));
    speed = new PVector(1, 3);
    gravity = new PVector(0.1, 2);
  }

  void display() {
    noStroke();
    smooth();
    fill(random(0, 255), random(0, 255), random(0, 255));
    ellipse(position.x, position.y, size, size);
  }

  void move() {
    position.add(speed);
    speed.add(gravity);
  }

  void bounce() {
    if (position.x < size/2 || position.x > width-size/2) {
      speed.x = -speed.x;
    }
    if (position.y < size/2 || position.y > height-size/2) {
      speed.y = speed.y * -0.9;
    }
  }

  void play() {
    if (mousePressed == true) {
      position.x = pmouseX;
      speed.x = speed.x + 0.1;
      position.y = pmouseY;
      speed.y = speed.y + 0.1;
    }
  }
}
