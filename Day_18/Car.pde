class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  Car(color c_, float xpos_, float ypos_, float xspeed_){
    c = c_;
    xpos = xpos_;
    xspeed = xspeed_;
  }
  void display(){
  rectMode(CENTER);
  stroke(0);
  fill(c);
  rect(xpos,ypos,20,10);
}
void math(){
  xpos = xpos + xspeed;
  if(xpos > width){
    xpos = 0;
    
  }
  }
  
}