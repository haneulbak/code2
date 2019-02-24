class circularButton {
  float pos = 200;
  int size = 100;
  color BB = 200, CC = 0;
  float d, d2;

  void display() {
    fill(BB);
    noStroke();
    ellipse(pos, pos, size, size);
    fill(CC);
    stroke(255);
    ellipse(pos+100, pos+100, size, size);
  }

  void mouseClicked() {

    if (d<size/2) {
      CC=255;
    } else {
      CC=0;
    }

    d = (int(dist(pos, pos, mouseX, mouseY)));
  }


  void mousePressed() {
    if (CC==0 && d2<size/2) {
      BB = color(175, 100, 220);
    }
    
    d2 = (int(dist(pos+100, pos+100, mouseX, mouseY)));
  }
}
