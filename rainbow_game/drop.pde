class Drop {
  float x, y; //Variables for location of raindrop
  float speed; //Speed of raindrop
  color c; //color
  float r; //Radius of raindrop
  //Keep track of wether drop is
  //still being used
  boolean finished = false;

  Drop() {
    r = 8; //All raindrops are the same sixe
    y = -r*4; //Start with a random x location  
    x = random(width); //Start a little above the window
    speed = random(1, 5); //Pick a random speed
    c = color(50, 100, 150); //color
  }
  
  // Move the raindrop down
  void move() {
    // Increment by speed
    y += speed;
  }
  
  void display() {
    fill(c);
    noStroke();
    for (int i = 2; i<r; i++) {
      ellipse(x, y + i*4, i*2, i*2);
    }
  }
  // Check if it hits the bottom
  boolean reachBottom() {
    if (y > height + r*4) {
      return true;
    } else {
      return false;
    }
  }
  
  //If the drop is caught
  //void caught(){
  //  // Stop it from moving by setting speed equal to zero
  //  speed = 0;
  //  //Set the location to somewhere way off-screen
  //  y = -1000;
  //}
  void finished(){
    finished = true;
  }
}