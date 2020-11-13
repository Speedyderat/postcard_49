
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
  Letters letter;
  Font font;
// words constructor
  Words(float tempposX, float tempposY) { 
    font = new Font();
    posX = tempposX;
    posY = tempposY;
    lines = loadStrings("text.txt");
    entiretxt = join(lines, " ");
    words = split(entiretxt, " ");
    count = 0;
    frame = 0;
    scalor = height/(words.length+1);
    letter = new Letters();
    textSize(scalor);
    for (int b=0; b<22; b++) {       
      fontPerWord[b]=font.randomFont();
    }
  }

  void display(boolean still) { // displaying the words and calling letters display
    textAlign(RIGHT);
    for (int i=0; i<count; i++) {
      textFont(fontPerWord[i]); 
      textSize(scalor);
      letter.display(words[i], posX, posY, still);
      //text(words[i], posX, posY);
      posY += (scalor);
    }
    if (count < words.length  && frame%40==0 && frame != 0) {
      count++;
    }
    posY = (scalor);    
    frame++;
  }
}
