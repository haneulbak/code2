import java.util.Arrays;

PImage rose, roseSorted;
int boop = 10;
int[] rosePixels;

void setup() {
  rose = loadImage("Funeral_Parade_of_Roses.jpg");

  println(rose.width, rose.height);
  size(614, 528);

  rosePixels = rose.pixels.clone();
  Arrays.sort(rosePixels);

  roseSorted = createImage(rose.width, rose.height, RGB);

  roseSorted.pixels = rosePixels;
}

void draw() {
  image(rose, 0, 0);
  image(roseSorted, rose.width, 0);
}
