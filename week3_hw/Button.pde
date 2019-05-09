class Button {
  float pos = 200;
  int size = 100;
  color AA = 0, BB = 155, CC = 255; 
  float d1, d2;

  void display() {
    fill(AA);
    noStroke();
    ellipse(pos, pos, size, size);
    
    fill(BB);
    stroke(0);
    rectMode(CENTER);
    rect(pos*3, pos*3, size, size);
    
    fill(CC);
    noStroke();
    ellipse(pos+100, pos+100, size, size);
  }

  void mousePressed() {
    
    if (AA==0 && d1<size/2) {
      AA = 255;
    } else {
      AA = 0;
    } 
    d1 = (int(dist(pos, pos, mouseX, mouseY)));
  
    if (CC==255 && d2<size/2) {
      BB = color(155);
    } else {
      BB = color(0,0,0);
    }
    d2 = (int(dist(pos+100, pos+100, mouseX, mouseY)));
  }
}
