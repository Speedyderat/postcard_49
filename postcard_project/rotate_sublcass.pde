class Rotate extends Letters{
  float rotation;
  int frameCounter;

  
   Rotate(){
    super();
    rotation =0;  
    frameCounter = 1;
  }
  
  void rotateLetters(char letter, float xPos, float yPos, boolean still){
    xPos = xPos - textWidth(letter)/2;
    textAlign(CENTER);
    pushMatrix();
    translate(xPos, yPos);
    rotate(rotation);
    display(letter, 0, 0, still);
    popMatrix();
    if(frameCounter%4==0){
      rotation = rotation + 0.05;
    }
    if(still){
     rotation = 0; 
    }
    frameCounter++;
  }
  
 
}
