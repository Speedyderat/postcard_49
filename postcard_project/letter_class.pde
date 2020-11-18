
/* 
 class for the letters
 */

class Letters { // variables for the letters
  float tempX;
  
  Letters(){ // constrcutor for Letters
  }
  
  void display(char letter, float posX, float posY, boolean still){ 
    float shakespeed = 30;
      tempX = posX;
      if(still){
        tempX = posX;
      }else{
        tempX = tempX + random(-shakespeed,shakespeed);
      }   
      text(letter, tempX, posY);
    
  }  
}
