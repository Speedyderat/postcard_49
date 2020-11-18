
/* 
 PPC project - animated post card
 Made by: 
 Jasper Bosschart  (s2562685)
 Dennis Bitoiu     (s2491494)  
 Felipe Ramires    (s2486512) 
 Hans Nielen      (s2336693) 
 */

float xPos; // declaring classes and arrays
float yPos;
boolean still;
Background background;
Words word;
//Color color1;

void setup() { // assigning values to variables and parameters to classes
  size(600, 800);
  xPos = width/2;
  yPos = height/2;
  still = false;
  background = new Background();
  word = new Words(xPos, yPos);
 // color1 = new Color();
}

void draw() { // displaying the background and words
  background.display();
//  color1.changeColor();
  word.display(still);
 

}

void mousePressed(){ // method for words to stop shaking
  still = true;
}
void mouseReleased(){ // words shake again
  still = false;
}
