/* 
 class for the backgrounds, backgrounds have been downloaded from unsplash and are free to use.
 */

class Background { //background constructor

  PImage[] background = new PImage[13];
  int R12;



  Background() { // randomizing the background image and loads a background from the data folder
    R12 = int(random(1, 13));
    background[R12] = loadImage("background/background ("+ R12 +").jpg");
    background[R12].loadPixels();
  }

  void display() { // display function for the background
    image(background[R12], 0, 0);
    background[R12].resize(600, 800);
  }
}
