// (c) Justyn Chaykowski 2018
// a 'lightswitch'

float canvas_width = 640;
float canvas_height = 480;

// Timing variables
int tick_length = 60;
int tick_count = 0;
int tick_time_ms = 17;
int frame_count = 0;

// Light auto-switch flag
boolean change_flag = true;

Man man = new Man();  // A controlable purple dot.
Clock clock = new Clock(true, canvas_width, canvas_height);  // Actually the 'light', brainfart named it clock.

void setup() {
  size(640, 480);
  background(0, 0, 0);
  textSize(16);
}

void draw() {  // Begin animation loop

  frame_count += 1;  // Iterate frame counter for timing
  background(0, 0, 0);  // Fill in the background (wipe out what was drawn last frame)
  
  fill(100, 100, 200);  // Set color for text (purple)
  text(second(), canvas_width - (canvas_width / 4) * 3, 50);  // Draw text (current computer time seconds)
  
  clock.update();  // Update state of the light
  clock.display();  // Draw the light
  
  // Check if man has contacted the edge of the 'light' room
  man.hit_boundary(clock.xpos, clock.ypos, 
          clock.xpos + clock.my_width, clock.ypos + clock.my_height, 
          clock.border);
  man.update();  // update the man's state
  man.display();  // draw the man
  
  // Tick counter, checks if 60 frames (~1.05 seconds) has passed
  if (frame_count % tick_length == 0) {
    tick_count += 1;
  }
  
  // Light flipper, flips light every ~5.25 seconds (or every 5 ticks.)
  if ((tick_count % 5 == 0) & (change_flag == true)){
    if (clock.on_state == false) {
      clock.on_state = true;
    } else {
      clock.on_state = false;
    }
    change_flag = false;  // prevent the light from switching again this tick.
  }
  
  // Allow the light to switch again every 6th tick
  if ((tick_count % 5) - 1 == 0){
    change_flag = true;
  }
  delay(tick_time_ms); // Slow the program down to run only 1 frame per ~1/60'th of a second
}

// Manually turn light on/off with a mouse click.
void mousePressed() {
  if (clock.on_state == false) {
    clock.on_state = true;
  } else {
    clock.on_state = false;
  }
}

// Check for keyboard input - add X/Y momentum to 'man'
void keyPressed() {
  if (keyCode == LEFT) {
    man.xspeed = -5;
  }
  if (keyCode == RIGHT) {
    man.xspeed = 5;
  }
  if (keyCode == UP) {
    man.yspeed = -5;
  }
  if (keyCode == DOWN) {
    man.yspeed = 5;
  }
}

// Check if keyboard button is no longer being pressed, ending momentum in X/Y direction for 'man'
void keyReleased() {
  if (keyCode == LEFT) {
    man.xspeed = 0;
  }
  if (keyCode == RIGHT) {
    man.xspeed = 0;
  }
  if (keyCode == UP) {
    man.yspeed = 0;
  }
  if (keyCode == DOWN) {
    man.yspeed = 0;
  }
}