//Day 11_1 mapping Values

void setup(){
  size(1000,200);
  noStroke();

}
void draw(){
  background(175);
  float c1 = map(mouseX,0,width,0,255);
  fill(c1);
  println(mouseX,c1);
  ellipse(100,100,50,50);
  float y1 = map(mouseX,0,width,50,100);
  float y1 = map(mouseX,0,width,100,200);
  ellipse(x1,75,25,90);
}