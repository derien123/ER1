//Gravtiy
float x = 320;
float y = 0;
float speed = 20;
float gravity = 0.1;


void setup(){
  size(640,360);
  
}
void draw(){
  background(255); //the background
  fill(175); //color
  stroke(0); //thickness of line
  rectMode(CENTER); //rectangle
  rect(x,y,10,10); //rectangle
  
  y = y + speed;
  speed = speed + gravity;
  //reverse speed when we reach bottom
  if(y > height){ //height of y
    speed = speed * -1; //speed 
    y = height; //height of y
  }
}