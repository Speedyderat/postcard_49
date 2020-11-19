class Rotate extends Letters{
  float rotation;
  boolean noShake;
  int frameCounter;

  
   Rotate(){
    super();
    rotation =0;  
    frameCounter = 1;
    noShake = true;
  }
  
  void rotateLetters(char letter, float xPos, float yPos, boolean still){
    xPos = xPos - textWidth(letter)/2;
    textAlign(CENTER, CENTER);
    pushMatrix();
    translate(xPos, yPos);
    rotate(rotation);
    display(letter, 0, 0, noShake);
    popMatrix();
    if(frameCounter%4==0){
      rotation = rotation + 0.025;
    }
    if(still){
     rotation = 0; 
    }
    frameCounter++;
  }
  
 
}
