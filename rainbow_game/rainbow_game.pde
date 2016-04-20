Catcher catcher;
Drop[] drops;
Timer timer;
int totalDrops = 0;

boolean gameOver = false;

int score = 0;
int level = 1;
int lives = 3;
int levelCounter = 0;
PFont f;

void setup() {
  size(640, 360);
  catcher = new Catcher(32);
  drops = new Drop[100];
  timer = new Timer(300);
  timer.start();
  f = createFont("Arial", 12, true);
  noCursor();
}
void draw() {
  background(255);

  if (gameOver) {
    textFont(f,38);
    textAlign(CENTER);
    fill(255,0,0);
    text("GAME OVER BITCH", width/2, height/2);
  } else {



    // set catcher location
    catcher.setLocation(mouseX, mouseY);
    // display the catcher
    catcher.display();

    //Check the timer
    if (timer.isFinished()) {
      // deal with raindrops
      //totalDrops++;
      //increment drop below..
      if (totalDrops < drops.length) {
        drops[totalDrops]= new Drop();
        totalDrops++;
        //is we hit the end of array, start over
      }
      timer.start();
    }

    // move and display all drops
    for (int i=0; i < totalDrops; i++) {
      if (!drops[i].finished) {
        drops[i].move();
        drops[i].display();

        if (drops[i].reachBottom()) {
          levelCounter++;
          drops[i].finished();
          lives--;
          if (lives<=0) {
            gameOver = true;
          }
        }
        if (catcher.intersect(drops[i])) {
          drops[i].finished();
          levelCounter++;
          score++;
        }
      }
    }
    if (levelCounter>= drops.length) {
      level++;
      levelCounter=0;
      lives=3;
      totalDrops=0;
      timer.setTime(constrain(300-level*25, 0, 300));
    }
    textFont(f,14);
    fill(0);
    text("Lives left:" + lives, 10,20);
    rect(10,24,lives*10,10);
    
    text("Level:" + level, 300,20);
  }
}