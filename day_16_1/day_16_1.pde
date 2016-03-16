Ball ball1;

float gravity = 0.1;

void setup(){
size(200,200);
ball1 = new Ball(50,0,16);
}
void draw(){
  background(255);
  ball1.display();
  ball1.update();
}