class Rain{
  PVector pos;
  PVector vel;
  PVector accel;
  int size = 20;
  
  Rain(){
    pos = new PVector(random(size/2,width-size/2),random(size/2,height-size/2));
    vel = new PVector(random(1,2),random(2,5));  
    accel = new PVector(0,.8);
  }

  void move(){
    pos.add(vel);
    accel.add(accel);
  }
    
  void generate(){
    if(pos.y > height-size/2){
      pos.y = 0;
    }
  }
    
  void display(){
    fill(175, 100, 220);
    ellipse(pos.x, pos.y, size, size);
  }
}
