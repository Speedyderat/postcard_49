/* 
 class for the fonts, fonts have been downloaded from google fonts and fall under OFL.
 */

class Font { // font constructor

  PFont[] font = new PFont[23];

  int j, R22;

  Font() {
    for (int i = 0; i < 23; i = i+1) {
      j = i + 1;
      font[i] = createFont("font/font ("+ j +").ttf", 20);
    }
  }

  PFont randomFont() { // random font method
    R22 = int(random(0, 22));
    return font[R22];
  }
}
