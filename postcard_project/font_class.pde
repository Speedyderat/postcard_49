class Font {

  PFont[] font = new PFont[23];

  int R22;

  Font() {
    font[0] = createFont("font (1).ttf", 20);
    font[1] = createFont("font (2).ttf", 20);
    font[2] = createFont("font (3).ttf", 20);
    font[3] = createFont("font (4).ttf", 20);
    font[4] = createFont("font (5).ttf", 20);
    font[5] = createFont("font (6).ttf", 20);
    font[6] = createFont("font (7).ttf", 20);
    font[7] = createFont("font (8).ttf", 20);
    font[8] = createFont("font (9).ttf", 20);
    font[9] = createFont("font (10).ttf", 20);
    font[10] = createFont("font (11).ttf", 20);
    font[11] = createFont("font (12).ttf", 20);
    font[12] = createFont("font (13).ttf", 20);
    font[13] = createFont("font (14).ttf", 20);
    font[14] = createFont("font (15).ttf", 20);
    font[15] = createFont("font (16).ttf", 20);
    font[16] = createFont("font (17).ttf", 20);
    font[17] = createFont("font (18).ttf", 20);
    font[18] = createFont("font (19).ttf", 20);
    font[19] = createFont("font (20).ttf", 20);
    font[20] = createFont("font (21).ttf", 20);
    font[21] = createFont("font (22).ttf", 20);
    font[22] = createFont("font (23).ttf", 20);
  }

  PFont randomFont() {
    R22 = int(random(0, 22));
    return font[R22];
  }
}
