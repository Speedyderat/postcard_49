
/* 
 class for the words
 */

class Words { // variables for words and the Font array
  String entiretxt;
  String[] lines; 
  int count;
  int frame;
  String[] words;
  float posX;
  float posY;
  float scalor;
  PFont[] fontPerWord = new PFont[23];
  char[] characters = new char[30];
  Letters letter;
  Font font;
  Color color1;
  subSize size1;
  float widt;
  float tempX;
   int rando= int(random(0,1.99));
  
// words constructor
  Words(float tempposX, float tempposY) { 
    font = new Font();
    posX = tempX = tempposX;
    posY = tempposY;
    lines = loadStrings("text.txt");
    entiretxt = join(lines, " ");
    words = split(entiretxt, " ");
    count = 0;
    frame = 0;
    scalor = height/(words.length+1);
    letter = new Letters();
    textSize(scalor);
    color1 = new Color();
    size1 = new subSize();
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
      for (int c=0; c<words[i].length(); c++){
        characters[c] = words[i].charAt(c);        
        posX = posX + textWidth(characters[c]);
     
        switch(rando){
         case 0 :
         color1.changeColor(characters[c], posX, posY, still);
         break;
         case 1 :
         size1.changeSize(characters[c], posX, posY, still);
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
