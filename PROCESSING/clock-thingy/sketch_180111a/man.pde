/* Man Class

An object on screen intended to be controlled with the keyboard


this.hit_boundary(x1, y1, x2, y2, border) - takes stats from room 'he' is contained in and checks if 'he' is hitting the boundary
  This function will automatically correct 'man's position if he is colliding with the wall.
  
this.update() - updates the mans position and ensures he will be drawn correctly. Always call this before this.display()  

this.display() - draws man to the screen

*/


class Man {
  float xpos, ypos, size, xspeed, yspeed;
  Man() {
    // init. function
    ypos = 50;
    xpos = 300;
    size = 8;
    xspeed = 0;
    yspeed = 0;
  }

  void hit_boundary(float x1, float y1, float x2, float y2, float border) {
    /* Check for collision with edges of room. This needs some work.
    
      x1         top left X pos of room
      y1         top left Y pos of room
      x2         bottom right X pos of room
      y2         bottom right Y pos of room
      border     thickness of the room's border/wall
    */

    float low_limit_x = x1 + border;
    float low_limit_y = y1 + border;
    float high_limit_x = x2 - border;
    float high_limit_y = y2 - border;

    if (ypos + size/2 > high_limit_y) {
      ypos -= size;
    } else if (ypos - size/2 < low_limit_y) {
      ypos += size;
    } else if (xpos + size/2 > high_limit_x) {
      xpos -= size;
    } else if (xpos - size/2 < low_limit_x) {
      xpos += size;
    }
  }

  void display() {
    fill(150, 27, 233);
    noStroke();
    ellipse(xpos, ypos, size, size);
  }

  void update() {
    ypos = ypos + yspeed;
    xpos = xpos + xspeed;
  }
}