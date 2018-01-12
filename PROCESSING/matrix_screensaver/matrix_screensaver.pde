// Matrix green rgb(64, 243, 45)

String charstring = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
//char[] charlib;
Textline[] my_lines = new Textline[10];

void setup() {
  size(800, 600);
  //noLoop();
  //noFill();
  //noStroke();
  //colorMode();
  fill(64, 243, 45);
  stroke(64, 243, 45);
  textSize(14);
  for (int i = 0; i < my_lines.length; i++){
    float random_pos = random(width) * -1;
    my_lines[i] = new Textline(int(random_pos));
    my_lines[i].build(charstring);
  }

  //for (int i = 0; i < charstring.length(); i++) {
  //  charlib[i] = charstring.charAt(i);
  //}
  //println(charlib);
}

void draw() {
  //clear();
  background(0);
  rotate(radians(90));
  for (int i = 0; i < my_lines.length; i++){
   my_lines[i].update();
   my_lines[i].show();
  }

}