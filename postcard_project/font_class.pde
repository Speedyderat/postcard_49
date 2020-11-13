/* 
 class for the fonts, fonts have been downloaded from google fonts and fall under OFL.
 */
 
class Font { // font constructor

  PFont[] font = new PFont[23];

  int R22;

  Font() {
    font[0] = createFont("font/font (1).ttf", 20);
    font[1] = createFont("font/font (2).ttf", 20);
    font[2] = createFont("font/font (3).ttf", 20);
    font[3] = createFont("font/font (4).ttf", 20);
    font[4] = createFont("font/font (5).ttf", 20);
    font[5] = createFont("font/font (6).ttf", 20);
    font[6] = createFont("font/font (7).ttf", 20);
    font[7] = createFont("font/font (8).ttf", 20);
    font[8] = createFont("font/font (9).ttf", 20);
    font[9] = createFont("font/font (10).ttf", 20);
    font[10] = createFont("font/font (11).ttf", 20);
    font[11] = createFont("font/font (12).ttf", 20);
    font[12] = createFont("font/font (13).ttf", 20);
    font[13] = createFont("font/font (14).ttf", 20);
    font[14] = createFont("font/font (15).ttf", 20);
    font[15] = createFont("font/font (16).ttf", 20);
    font[16] = createFont("font/font (17).ttf", 20);
    font[17] = createFont("font/font (18).ttf", 20);
    font[18] = createFont("font/font (19).ttf", 20);
    font[19] = createFont("font/font (20).ttf", 20);
    font[20] = createFont("font/font (21).ttf", 20);
    font[21] = createFont("font/font (22).ttf", 20);
    font[22] = createFont("font/font (23).ttf", 20);
  }

  PFont randomFont() { // random font method
    R22 = int(random(0, 22));
    return font[R22];
  }
}
