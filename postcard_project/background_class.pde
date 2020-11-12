/* 
 class for the backgrounds, backgrounds have been downloaded from unsplash and are free to use.
 */

class Background {

  PImage[] background = new PImage[13];

  int R12;

  Background() {
    R12 = int(random(1, 13));
    background[R12] = loadImage("background/background ("+ R12 +").jpg");
  }

  void display() {
    image(background[R12], 0, 0);
    background[R12].resize(600, 800);
  }
}
