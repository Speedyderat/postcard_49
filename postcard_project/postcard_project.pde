
/* 
 PPC project - animated post card
 Made by: 
 Jasper Bosschart  (s2562685)
 Dennis Bitoiu     (s2491494)  
 Felipe Ramires    (s2486512) 
 Hans Nielen      (s2336693) 
 */

float scaler;
String entiretxt;
String[] words;
String[] lines;
int count;
int frame;

void setup(){
scaler = 1;
size(600,800);
lines = loadStrings("text.txt");
entiretxt = join(lines, " ");
words = split(entiretxt, " ");
count = 0;
frame = 0;
}

void draw(){
background(0,255,0);
//println(entiretxt);
textSize(100);
text(words[count], 100, 100);
if (count < words.length  && frame%40==0 && frame != 0){
count++;
} else if(count >= words.length ){
  
}
if(count >= words.length ){
 count = 0; 
}

frame++;
}
