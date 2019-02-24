class circularButton {
  float pos = 200;
  int size = 100;
  color CC;
  float d;

  void display() {
    fill(200);
    noStroke();
    ellipse(pos, pos, size, size);
    fill(CC);
    stroke(255);
    ellipse(pos+100, pos+100, size, size);
  }

  void action() {

    if (d<size/2 && mousePressed) {
      CC=255;
    } else {
      CC=0;
    }

    d = (int(dist(pos, pos, mouseX, mouseY)));
  }
}
