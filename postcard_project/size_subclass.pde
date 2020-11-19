class subSize extends Letters{
  
  

  int frameCounter;
  boolean sizeDown;
  float scaler;
  
  subSize(){
    super();
    
    frameCounter = 1;

    sizeDown = true;
    scaler = 100;
    
  }
  
  
  
  void changeSize(char letter, float xPos, float yPos, boolean still) {
  
    if(sizeDown && scaler>1 && frameCounter%20==0){
    
    scaler--;
    }
    else if(frameCounter%20 ==0){
      sizeDown = false;
      scaler++;
      if(scaler>99){
        sizeDown = true;
      }
    }
    textSize(scaler);
    display(letter, xPos, yPos, still);
    frameCounter++;
      
  }
  
  
  
}
