class Color extends Letters{
  int r;
  int frameCounter;
  boolean colorDown;
  
  
  Color(){
    super();
    frameCounter = 1;
    r = 255;
    colorDown = true;
  }
  
  void changeColor(char letter, float xPos, float yPos, boolean still){
    if(colorDown && r>0 && frameCounter%20==0){
    
    r--;
    }
    else if(frameCounter%20 ==0){
      colorDown = false;
      r++;
      if(r>254){
        colorDown = true;
      }
    }
    fill(0,r,r);
    display(letter, xPos, yPos, still);
    frameCounter++;
      
  }
  
}
