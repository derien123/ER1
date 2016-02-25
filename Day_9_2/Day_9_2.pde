void setup(){
 size(255,255);
}

void draw(){
  background(0);
  
  int i = 0; //start i as 0
  
  while (i < width) {
   noStroke();
   float distance = abs(mouseX - i); //distance is equal to x,y
   fill(distance);
   rect(i,0,10,height);
   
   i += 10;
  }
}