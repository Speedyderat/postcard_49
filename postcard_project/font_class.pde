/* 
 class for the fonts, the fonts have been downloaded from google fonts and fall under OFL.
 */

class Font { // constructor for the font

  PFont[] font = new PFont[23];
  int j, R22;


  Font() { //loads one of the fonts from the data folder
    for (int i = 0; i < 23; i = i+1) {
      j = i + 1;
      font[i] = createFont("font/font ("+ j +").ttf", 20);
    }
  }

  PFont randomFont() { // font randomizer method written her to 
    R22 = int(random(0, 22));
    return font[R22];
  }
}
