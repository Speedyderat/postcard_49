/* 
 subclass that animates the size of the letters 
 */

class subSize extends Letters { // variables for the letter sizing

  int frameCounter;
  boolean sizeDown;
  float scaler;


  subSize() { // Size constructor
    super(); //call information form superclass Letters
    frameCounter = 1; // frame counter to slow down animation
    sizeDown = true; 
    scaler = 100;
  }

  void changeSize(char letter, float xPos, float yPos, boolean still) {

    if (sizeDown && scaler>1 && frameCounter%20==0) { // if statement to decrease the letter size
      scaler--;
    } else if (frameCounter%20 ==0) { // increase the letter size
      sizeDown = false;
      scaler++;
      if (scaler>99) {
        sizeDown = true;
      }
    }
    textSize(scaler); // setting the text size to the scaler, will increase or decrease according to the if statement
    display(letter, xPos, yPos, still); // displaying the letters from superclass Letters
    frameCounter++;
  }
}
