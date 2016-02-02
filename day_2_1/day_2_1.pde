int y = height;


void setup(){
  size(640,360);
  frameRate(10000);
  
  
}

void draw(){
  background(0);
  stroke(frameCount/2);
  y = y - 1; //decreasing y
  if (y < 0) {
    y = height; //set y to window height
  }
  
  line(0,y,width,y);
  //line(x1,x2,x2,y2)
  
}
  

  