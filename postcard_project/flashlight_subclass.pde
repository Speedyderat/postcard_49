class Flashlight extends Background {

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


  Flashlight() {
    super();
    checkFlashlight=false;
    turnItOff=false;
     loadPixels();
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
          pixelLoc = x+y*width; //calculates the lcoation of a pixel
          red = red(background[R12].pixels[pixelLoc]); //takes the red value of a certain pixel
          green = green(background[R12].pixels[pixelLoc]);//takes the green value of a certain pixel
          blue = blue(background[R12].pixels[pixelLoc]);//takes the blue value of a certain pixel
          distance = dist (mouseX, mouseY, x, y);  //calculates the distance between mouseX, mouseY and x and y
          factor = map(distance, 0, 250, 1, 0); //the distance has a value between 0-250. Then it maps this value between 1 and 0.
          pixels[pixelLoc] = color(red*factor, green*factor, blue*factor); //creates the flashlight effect, without changing the color of a pixel
        }
      }
    }
    updatePixels();
  }

  void turnOff()
  {
    loadPixels();
    background[R12].loadPixels();
    if (turnItOff==false &&  checkFlashlight==false)
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
          blue = blue(background[R12].pixels[pixelLoc]);         //Same comments as the previous ones.
          distance = dist (mouseX, mouseY, x, 200);
          factor = map(distance, 0, 200, 0, 0);
          pixels[pixelLoc] = color(red*factor, green*factor, blue*factor);   //Since the distance gets mapped between 0 and 0, the color of the pixels will be black. 
        }
      }                                                                     //For instance, the red value of a pixel gets multiplied by 0, turning the red value  
     }                                                                      //of the pixel to 0
    updatePixels();
  }
}
