/* 
 class for the backgrounds, backgrounds have been downloaded from unsplash and are free to use.
 */

class Background { //background constructor

  PImage[] background = new PImage[13];
  int R12;
  boolean checkFlashlight = false;
  int x;
  int y;
  int pixelLoc;
  float red;
  float green;
  float blue;
  float distance;
  float factor;
  boolean turnItOff=false;


  Background() { // randomizing the background image
    R12 = int(random(1, 13));
    background[R12] = loadImage("background/background ("+ R12 +").jpg");
    loadPixels();
    background[R12].loadPixels();
    checkFlashlight=false;
    turnItOff=false;
  }

  void display() { // displaying the background 
    image(background[R12], 0, 0);
    background[R12].resize(600, 800);
    if (checkFlashlight == false && turnItOff==false)
      for (x=0; x<width; x++)
      {
        for ( y=0; y<height; y++)
        {
          pixelLoc = x+y*width;
          red = red(background[R12].pixels[pixelLoc]);
          green = green(background[R12].pixels[pixelLoc]);
          blue = blue(background[R12].pixels[pixelLoc]);
          distance = dist (width/2, 70, x, 200);
          factor = map(distance, 0, 200, 3, 0);
          pixels[pixelLoc] = color(red*factor, green*factor, blue*factor);
        }
      }
    updatePixels();
  }

  void turnOn()
  {
    checkFlashlight=true;
  }

  void setToNormal()
  {
    checkFlashlight=false;
    turnItOff=false;
  }

  void turnItOff()
  {
    turnItOff=true;
    checkFlashlight=false;
  }
  void turnedOn()
  {
    loadPixels();
    background[R12].loadPixels();
    if (checkFlashlight==true)
    {
      for (x=0; x<width; x++)
      {
        for (y=0; y<height; y++)
        {
          pixelLoc = x+y*width;
          red = red(background[R12].pixels[pixelLoc]);
          green = green(background[R12].pixels[pixelLoc]);
          blue = blue(background[R12].pixels[pixelLoc]);
          distance = dist (mouseX, mouseY, x, y);
          factor = map(distance, 0, 250, 1, 0);
          pixels[pixelLoc] = color(red*factor, green*factor, blue*factor);
        }
      }
    }
    updatePixels();
    word.display(still);
  }

  void turnOff()
  {
    loadPixels();
    background[R12].loadPixels();
    if (turnItOff==true &&  checkFlashlight==false)
    {
      image(background[R12], 0, 0);
      background[R12].resize(600, 800);
      for (x=0; x<width; x++)
      {
        for ( y=0; y<height; y++)
        {
          pixelLoc = x+y*width;
          red = red(background[R12].pixels[pixelLoc]);
          green = green(background[R12].pixels[pixelLoc]);
          blue = blue(background[R12].pixels[pixelLoc]);
          distance = dist (mouseX, mouseY, x, 200);
          factor = map(distance, 0, 200, 0, 0);
          pixels[pixelLoc] = color(red*factor, green*factor, blue*factor);
        }
      }
    }
    updatePixels();
  }
}
