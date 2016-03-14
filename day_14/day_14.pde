Car myCar; //declaring car objects

void setup(){
  size(640,360);
  myCar = new Car();
  
}
void draw(){
  background(255);
  myCar.display();                          
  
  
}
class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  Car(){ //Constrculor, set variables
  xpos = width/2;
  ypos = height/2;
  xspeed = 1;
  }
  void display(){ //Function
  rectMode(Center);
  stroke(0);
  fill(c);
  rect(xpos,ypos,20,10);
  }
  void move(){ //function
  xpos = xpos + xspeed;
  if (xpos > width){
    xpos = 0;
  }
  
  
}
}