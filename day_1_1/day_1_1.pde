int circleX = 0; //declare variable and assign value to circleX
int circleY = 100; //declare variable and assign value to circleY

void setup(){
 size(200,200); 
}
void draw(){
  background(255); // "background" color
 stroke(0); //circle outline color 
 fill(175); // circle inside color
 ellipse(circleX,circleY,75,50); //circle
 //ellipse(X position,Y position,radius X,radius Y)
 
 //circleX = circleX +1;
circleX++;
}