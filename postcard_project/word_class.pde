/* 
 class for the letters
 */

class Words {

  int count;
  int frame;
  String[] words;
  float posX;
  float posY;

  Words(float scale, float tempposX, float tempposY, String entiretxt) {
    posX = tempposX;
    posY = tempposY;
    words = split(entiretxt, " ");
    count = 0;
    frame = 0;
  }

  void display() {
    textSize(100);
    textAlign(CENTER);
    text(words[count], posX, posY);
    if (count < words.length  && frame%40==0 && frame != 0) {
      count++;
    } else if (count >= words.length ) {
    }
    if (count >= words.length ) {
      count = 0;
    }

    frame++;
  }
}
