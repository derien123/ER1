int stroke = 1;

void setup(){
  size(200,200); //size of window
  background(255); //background color "white"
  
}

void draw(){
  stroke(0); //line color
  strokeWeight(stroke);
  if (mousePressed) { // on click do this...
  line(pmouseX,pmouseY,mouseX,mouseY);
  //draw aline, last position to current pos.
  

  }
}

void keyPress(){
 if(keyCode == UP){
 stroke++; //increment up
}

if (keyCode == DOWN){ //when down pressed
  stroke--; //decrement...
}

}