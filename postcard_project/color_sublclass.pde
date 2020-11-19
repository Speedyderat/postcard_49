class Color extends Letters {
  int r;
  int g;
  int b;
  int frameCounter;
  boolean rDown;
  boolean gDown;
  boolean bDown;


  Color() {
    super();
    frameCounter = 1;
    r = 100;
    g = 255;
    b = 150;
    rDown = true;
    gDown = true;
    bDown = true;
  }

  void changeColor(char letter, float xPos, float yPos, boolean still) {

    if (rDown && r>0 && frameCounter%20==0) {
      r--;
    } else if (frameCounter%20 ==0) {
      rDown = false;
      r++;
      if (r>99) {
        rDown = true;
      }
    }


    if (gDown && g>0 && frameCounter%20==0) {
      g--;
    } else if (frameCounter%20 ==0) {
      gDown = false;
      g++;
      if (g>254) {
        gDown = true;
      }
    }


    if (bDown && b>0 && frameCounter%20==0) {
      b--;
    } else if (frameCounter%20 ==0) {
      bDown = false;
      b++;
      if (b>149) {
        bDown = true;
      }
    }
    fill(r, g, b);
    display(letter, xPos, yPos, still);
    frameCounter++;
  
  }
}
