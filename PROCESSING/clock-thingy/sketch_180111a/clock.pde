/* CLOCK CLASS
// This class is actually the 'light', which also acts as a 'room' from the reference of 'man'

// this.update() - ensure the light will display as it is intended to. Call before this.display()
// this.display() - actually draws the light to the screen.

*/

class Clock {

  boolean on_state;  // Whether or not the clock is on.
  float xpos, ypos, my_width, my_height;
  float border = 15;  // adds a 'wall' to the light
  
  // Clock init. (Runs on creation)
  Clock(boolean start_state, float w, float h) {
    // bool start_state     whether light starts on or off
    // float w              the desired width of the light
    // float h              the desired height of the light
    
    on_state = start_state;
    xpos = w/4;
    ypos = h/4;
    my_width = (w/4)*2;
    my_height = (h/4)*2;
  }
  
  // Update Clock
  void update() {
    strokeWeight(border);

    if (on_state == true) {
      fill(200, 200, 200);
      stroke(255, 255, 255);
    } else {
      fill(80, 80, 80);
      stroke(25, 25, 25);
    }
  }

  // Show clock
  void display() {
    rect(xpos, ypos, my_width, my_height);
  }
}