
/* 
 class for the letters
 */

class Letters { // variables for the letters
  float tempX;
  float shakespeed = 5;

  Letters() { // constrcutor for Letters
  }

  void display(char letter, float posX, float posY, boolean still) { 
    tempX = posX;
    if (still) {
      tempX = posX;
    } else {
      tempX = tempX + random(-shakespeed, shakespeed);
    }   
    text(letter, tempX, posY);  //draw letter
  }
}
