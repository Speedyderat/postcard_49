/* 
 PPC project - animated post card
 Made by: 
 Jasper Bosschart  (s2562685)
 Dennis Bitoiu     (s2491494)  
 Felipe Ramires    (s2486512) 
 Hans Nielen      (s2336693) 
 */

String[] words;
int index=0;
float x=10;
String sentence;



void setup() {
  size(600, 400);

  String[] message = loadStrings("text.txt") ;
  sentence = join(message, " "); 
  println(sentence);
  words = split(sentence, " ");
  frameRate(7);
}

void draw() {
}
if(count >= words.length ){
 count = 0; 
}

frame++;
}
