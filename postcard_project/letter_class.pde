/* 
 class for the letters
 */

class Letters {
  int lengt;
  float widt;
  float charactersSum;
  char[] characters = new char[30];
  
  Letters(){
  lengt = 0;
  widt = 0;
  charactersSum = 0;
  }
  
  void display(String word, float posX, float posY){
    lengt = word.length();
    widt = textWidth(word);
    posX = posX-( widt/2);
    charactersSum = 0;
    println(widt);
    for(int i =0; i<lengt; i++){
      characters[i] = word.charAt(i);
      text(characters[i], posX, posY);
      posX = posX + textWidth(characters[i]);
      charactersSum = charactersSum + textWidth(characters[i]);
    }
    println(charactersSum);
  }
  
  
  
  
}
