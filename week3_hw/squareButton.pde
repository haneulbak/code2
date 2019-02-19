class squareButton {
  PVector pos;
  int size = 50;
  
  squareButton(){
    pos = new PVector(width/4*3,height/2);
  }
  
  void display(){
    fill(200);
    noStroke();
    rectMode(CENTER);
    rect(pos.x, pos.y, size, size);
  }
}
