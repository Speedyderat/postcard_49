/* 
 class for the words
 */

class Words { // variables for words and the Font array

  int count, frame, rando = int(random(0, 2.99));
  float posX, posY, scalor, widt, tempX;
  String entiretxt;
  String[] lines; 
  String[] words;
  PFont[] fontPerWord = new PFont[23];
  char[] characters = new char[30];
  Letters letter;
  Font font;
  Color color1;
  subSize size1;
  Rotate rotate1;


  Words(float tempposX, float tempposY) { // words constructor
    font = new Font();
    posX = tempX = tempposX;
    posY = tempposY;
    lines = loadStrings("text.txt");
    entiretxt = join(lines, " ");
    words = split(entiretxt, " ");
    count = 0;
    frame = 0;
    scalor = height/(words.length+2);
    letter = new Letters();
    textSize(scalor);
    color1 = new Color();
    size1 = new subSize();
    rotate1 = new Rotate();
    for (int b=0; b<22; b++) {       
      fontPerWord[b]=font.randomFont();
    }
  }

  void display(boolean still) { // displaying the words and calling letters display

    textAlign(RIGHT);
    for (int i=0; i<count; i++) {    
      textFont(fontPerWord[i]); 
      textSize(scalor);        
      widt = textWidth(words[i]); 
      posX = posX-(widt/2);
      for (int c=0; c<words[i].length(); c++) {
        characters[c] = words[i].charAt(c);        
        posX = posX + textWidth(characters[c]);     
        switch(rando) {
        case 0 :
          color1.changeColor(characters[c], posX, posY, still);
          break;
        case 1 :
          size1.changeSize(characters[c], posX, posY, still);
          break;
        case 2:
          rotate1.rotateLetters(characters[c], posX, posY, still);
          break;
        }
      }
      posX = width/2;
      posY += (scalor);
    }
    if (count < words.length  && frame%40==0 && frame != 0) {
      count++;
    }
    posY = (scalor);    
    frame++;
  }
}
