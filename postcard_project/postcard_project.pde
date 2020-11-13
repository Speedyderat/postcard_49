/* 
 PPC project - animated post card
 Made by: 
 Jasper Bosschart  (s2562685)
 Dennis Bitoiu     (s2491494)  
 Felipe Ramires    (s2486512) 
 Hans Nielen      (s2336693) 
 */

String[] words;
String[] lines;
String entiretxt;
float xPos;
float yPos;
float scaler;
boolean still;
Background background;
Font font;
Words word;

void setup() {
  size(600, 800);
  scaler = 1;
  xPos = width/2;
  yPos = height/2;
  still = false;
  lines = loadStrings("text.txt");
  entiretxt = join(lines, " ");
  background = new Background();
  font = new Font();
  word = new Words(scaler, xPos, yPos, entiretxt);
}

void draw() {
  background.display();
  word.display(still);
}

void mousePressed(){
  still = true;
}
void mouseReleased(){
  still = false;
}
