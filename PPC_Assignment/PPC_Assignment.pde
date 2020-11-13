PFont font;
String[] words;
// An array of Letter objects
Letter[] letters;
void setup() {
  size(500, 300);
  // Create the font
  font = createFont("Arial", 20);
  textFont(font);
  String[] lines = loadStrings("text.txt");
  String sentence = join (lines, " ");
  words = splitTokens(sentence, " ,?!");

  letters = new Letter[sentence.length()];
  int x = 16;
  for (int i = 0; i < sentence.length(); i++) {
    letters[i] = new Letter(x, 100, sentence.charAt(i));
    x += textWidth(sentence.charAt(i));
  }
}
void draw() {
  background(255);
  for (int i = 0; i < letters.length; i++) {
    // Display all letters
    letters[i].display();
    // If the mouse is pressed the letters shake
    // If not, they return to their original location
    if (keyPressed) {
      letters[i].shake();
    } else {
      letters[i].home();
    }
  }

 
}
