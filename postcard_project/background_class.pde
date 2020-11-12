/* 
 class for the backgrounds, backgrounds have been downloaded from google backgrounds and fall under OFL.
 */

class Background {

  PImage[] background = new PImage[13];

  int R11;

  Background() {
    R11 = int(random(1, 12));
    background[R11] = loadImage("background/background ("+ R11 +").jpg");
  }

  void display() {
    image(background[R11], 0, 0);
    background[R11].resize(600, 800);
  }
}
