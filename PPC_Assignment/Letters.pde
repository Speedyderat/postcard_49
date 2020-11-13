class Letter {
  float targetX=1;
  float targetY=1;
  char letter;
  float homex, homey;
  // Its current location
  float x, y;
  Letter (float x_, float y_, char letter_) {
    homex = x = x_;
    homey = y = y_;
    letter = letter_;
  }
  // Display the letter

  void display() {
    fill(0);
    textAlign(LEFT);
    text(letter, x, y);
  }
  // Move the letter randomly
  void shake() {
    x = lerp(x, homex, 0.04);
    y = lerp(y, homey, 0.04);
  }
  void home() {
    x  = random(250, height);
    y  = random(width, height);
  }
}
