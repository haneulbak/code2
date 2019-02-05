class Cloud {
  PVector pos;
  PVector vel;
  PVector accel;
  int size = 20;

  Cloud() {
    pos = new PVector(random(size/2, width-size/2), random(size/2, height-size/2));
    vel = new PVector(random(1, 2), 0);  
    accel = new PVector(0, .8);
  }

  void move() {
    pos.add(vel);
    accel.add(accel);
  }

  void presence() {
    if (pos.x > height-size/2 || pos.x < size/2) {
     vel.x = -vel.x;
    }
  }
  
  void display() {
    fill(200);
    noStroke();
    ellipse(pos.x, pos.y, size, size);
    ellipse(pos.x-2, pos.y-2, size+50, size+20);
    ellipse(pos.x+2, pos.y+2, size, size);
  }
}
