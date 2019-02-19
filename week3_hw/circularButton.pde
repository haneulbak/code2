class circularButton {
  PVector pos;
  int size = 50;
  
  circularButton(){
    pos = new PVector(width/4,height/2);
  }
  
  void display(){
    fill(200);
    noStroke();
    ellipse(pos.x, pos.y, size, size);
  }
}
