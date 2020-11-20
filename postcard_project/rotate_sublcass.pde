class Rotate extends Letters {
  float rotation;  //set variables for rotation
  boolean noShake;
  int frameCounter;


  Rotate() {
    super();  //call information from superclass
    rotation =0;  //set startvalue for variables
    frameCounter = 1;
    noShake = true;
  }

  void rotateLetters(char letter, float xPos, float yPos, boolean still) {
    xPos = xPos - textWidth(letter)/2;  //adjust x variable for rotation 
    textAlign(CENTER, CENTER);  //adjust drawing point of letter for rotation
    pushMatrix();  //push
    translate(xPos, yPos);  //translate to rotation point
    rotate(rotation);  //rotate
    display(letter, 0, 0, noShake);  //call letter display function
    popMatrix();  //pop
    if (frameCounter%4==0) {  //loop to slow down animation
      rotation = rotation + 0.025;  //increase rotation
    }
    if (still) {
      rotation = 0;  //stop rotation if mouse is clicked
    }
    frameCounter++;  //count frames
  }
}
