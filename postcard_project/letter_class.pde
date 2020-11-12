/* 
 class for the letters
 */

class Letters {
  int lengt;
  float widt;
  char[] characters = new char[30];
  
  Letters(){
  lengt = 0;
  widt = 0;
  }
  
  void display(String word, float posX, float posY){
    lengt = word.length();
    widt = textWidth(word);
    posX =- widt/2;
    for(int i =0; i<lengt; i++){
      characters[i] = word.charAt(i);
      text(characters[i], posX, posY);
      posX =+ textWidth(characters[i]);
    }
  }
  
  
  
  
}
