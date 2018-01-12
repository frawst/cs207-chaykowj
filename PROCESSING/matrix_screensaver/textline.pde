class Textline{

  String i_am = "";
  int xpos = 0;
  int depth = int(random(5));
  float yspeed = depth/2 + 1;
  float scaling = map(depth, -1, 5, 0.8, 1.2);
  int ypos = int(-random(300,800));
  Textline(int val){
    xpos = val;  // "y-pos" .. figure is rotated 90degrees
  }

  void update(){
    ypos += yspeed;
    if (ypos > 800){
      depth = int(random(7));
      yspeed = depth/2 + 1;
      scaling = map(depth, 0, 7, 0.8, 1.8);
      ypos = int(random(800));
      xpos = int(-random(300,800));
      
    }
  }

  void show(){
    scale(scaling);
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