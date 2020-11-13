/* 
 class for the letters
 */

class Letters { // constructor for the letters
  int lengt;
  float widt;
  char[] characters = new char[30];


  Letters() {
    lengt = 0;
    widt = 0;
  }
  void display(String word, float posX, float posY) { // displaying the letters, it is called in class Words
    lengt = word.length();
    widt = textWidth(word);
    posX = posX-(widt/2);
    for (int i =0; i<lengt; i++) {
      characters[i] = word.charAt(i);
      posX = posX + textWidth(characters[i]);      
      text(characters[i], posX, posY);
    }
  }
  

}
