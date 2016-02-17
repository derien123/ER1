void setup(){
  size(200,200);
  background(255);
  
}

void draw(){
 ellipseMode(CENTER);
 rectMode(CENTER);
 
 translate(mouseX,mouseY);
 
 //body
 stroke(0); //outline
 fill(150); //inside color grey
 rect(100,100,20,100); //size of rectangle
 
 //head
 
 fill(255); //fill color of head white
 ellipse(100,70,60,60); //size of head
 
 //eyes
 fill(0); //fill of eye
 ellipse(81,70,16,32); //size of eyes
 ellipse(119,70,16,32); //size of eye
 
 //legs
 stroke(0); //no stroke for legs
 line(90,150,80,160); //placement of legs and size
 line(110,150,120,160); //placement of legs and size
}