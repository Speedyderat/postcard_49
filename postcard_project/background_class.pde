/* 
 class for the backgrounds, backgrounds have been downloaded from google backgrounds and fall under OFL.
 */

class Background {

  PImage[] background = new PImage[13];

  int R12;

  Background() {
    R12 = int(random(1, 12));
    background[R12] = loadImage("background/background ("+ R12 +").jpg");
  }

  void display() {
    image(background[R12], 0, 0);
    background[R12].resize(600, 800);
  }
}
