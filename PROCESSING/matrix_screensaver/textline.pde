class Textline{

  String i_am = "";

  void update(){
    xpos = 200;
  }

  void show(){
    text(i_am, xpos, -100);
  }
  
  void build(String alphabet){
    for (int i = 0; i < 80; i++){
      float z = float(alphabet.length()); 
      float zz = random(z);
      i_am = i_am + alphabet.charAt(int(zz));
    }
  }

}