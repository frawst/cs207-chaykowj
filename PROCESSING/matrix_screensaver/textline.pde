class Textline{

  String i_am = "";
  int xpos = 0;
  int yspeed = 1;
  int ypos = int(-random(200,500));
  Textline(int val){
    xpos = val;  // "y-pos" .. figure is rotated 90degrees
  }

  void update(){
    ypos += yspeed;
  }

  void show(){
    text(i_am, ypos, xpos);
  }
  
  void build(String alphabet){
    for (int i = 0; i < 80; i++){
      float z = float(alphabet.length()); 
      float zz = random(z);
      i_am = i_am + alphabet.charAt(int(zz));
    }
  }

}