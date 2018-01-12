// Matrix green rgb(64, 243, 45)

String charstring = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
//char[] charlib;
int xpos = 0;
Textline a_line = new Textline();

void setup() {
  size(800, 600);
  //noLoop();
  //noFill();
  //noStroke();
  //colorMode();
  fill(64, 243, 45);
  stroke(64, 243, 45);
  textSize(14);
  a_line.build(charstring);

  //for (int i = 0; i < charstring.length(); i++) {
  //  charlib[i] = charstring.charAt(i);
  //}
  //println(charlib);
}

void draw() {
  //clear();
  background(0);
  rotate(radians(90));
  text("some text", xpos, -100);
  a_line.update();
  a_line.show();
  xpos += 3;
  if (xpos > height) {
    xpos -= xpos + (xpos / 2);
  }
}