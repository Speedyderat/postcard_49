/* 
 class for the letters
 */

class Words {

  int count;
  int frame;
  String[] words;
  float posX;
  float posY;
  boolean stop;
  float scalor;

  Words(float scale, float tempposX, float tempposY, String entiretxt) {
    posX = tempposX;
    posY = tempposY;
    words = split(entiretxt, " ");
    count = 0;
    frame = 0;
    scalor = height/(words.length+1);
    textSize(scalor);
    stop = false;
  }

  void display() {
    textSize(scalor);
    textAlign(CENTER);
    for(int i=0; i<count; i++){
    text(words[i], posX, posY);
    posY += (scalor);
    }
    if (count < words.length  && frame%40==0 && frame != 0) {
      count++;
    }
    posY = (scalor);    
    frame++;
  }
}
