
/* 
 PPC project - animated post card
 Made by: 
 Jasper Bosschart  (s2562685)
 Dennis Bitoiu     (s2491494)  
 Felipe Ramires    (s2486512) 
 Hans Nielen      (s2336693) 
 
 press the F button to open the flashlight, and b to stop it again, the rest is all randomized, click your mouse to stop the animation.
 */

float xPos, yPos; // declaring classes and arrays
boolean still;
Flashlight flashlight;
Background background;
Words word;



void setup() { // assigning values to variables and parameters to classes
  size(600, 800);
  xPos = width/2;
  yPos = height/2;
  still = false;
  flashlight = new Flashlight();
  background = new Background();
  word = new Words(xPos, yPos);
}

void draw() { // displaying the background and words
  background.display();
  flashlight.turnedOn();
  if (flashlight.checkFlashlight==true)
  {
    word.display(still);
  }
  flashlight.turnOff();
}

void mousePressed() { // method for words to stop shaking
  still = true;
}
void mouseReleased() { // words shake again
  still = false;
}

void keyPressed()
{
  if (key=='f')
  {
    flashlight.turnOn();
  } else if (key=='b')
  {
    flashlight.setToNormal();
  } 

  if (key=='g' )
  {
    flashlight.turnItOff();
  }
}
