class Square {
  float x, y, h, w, z;

  Square(float x, float y, float w, float h, float z) {
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    this.z = z;
  }

void drawButton() {
    rect(x, y, w, h, z);
  }

  boolean Selection() {

     return ((x-w/2) <= mouseX) && (mouseX <= (x+w/2) )
      && ((y-h/2) <= mouseY) && (mouseY <= (y + h/2));
  }
}
