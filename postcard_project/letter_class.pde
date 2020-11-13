
/* 
 class for the letters
 */

class Letters {
  int lengt;
  float widt;
  float tempX;
  char[] characters = new char[30];
  
  Letters(){
  lengt = 0;
  widt = 0;
  }
  
  void display(String word, float posX, float posY, boolean still){
    lengt = word.length();
    widt = textWidth(word);
    posX = posX-(widt/2);
    float shakespeed = 30;
    for(int i =0; i<lengt; i++){
      characters[i] = word.charAt(i);
      posX = posX + textWidth(characters[i]);
      tempX = posX;
      if(still){
        tempX = posX;
      }else{
        tempX = tempX + random(-shakespeed,shakespeed);
      }   
      text(characters[i], tempX, posY);
    }
  }  
}
