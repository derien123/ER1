Catcher catcher;
Drop[] drops;
Timer timer;
int totalDrops = 0;

void setup(){
  size(640,360);
  catcher = new Catcher(32);
  drops = new Drop[1000];
  timer = new Timer(300);
  timer.start();
}
void draw(){
  background(255);
  
  // set catcher location
  catcher.setLocation(mouseX,mouseY);
  // display the catcher
  catcher.display();
  
  //Check the timer
  if(timer.isFinished()) {
    // deal with raindrops
  // initialize one drop
  drops[totalDrops]= new Drop();
  //increment drop below..
  totalDrops++;
  if(totalDrops >= drops.length){
    totalDrops=0;
    //is we hit the end of array, start over
  }
  timer.start();
  }
  
  // move and display all drops
  for(int i=0; i < totalDrops; i++){
    drops[i].move();
    drops[i].display();
    if(catcher.intersect(drops[i])) {
      drops[i].caught();
    }
  }
}
  
  