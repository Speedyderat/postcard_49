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
Font font;
Words word;

void setup() {
  size(600, 800);
  scaler = 1;
  xPos = width/2;
  yPos = height/2;
  lines = loadStrings("text.txt");
  entiretxt = join(lines, " ");
  font = new Font();
  word = new Words(scaler, xPos, yPos, entiretxt);
}

void draw() {
  background(0, 255, 0);
  textFont(font.randomFont());
  word.display();
}
