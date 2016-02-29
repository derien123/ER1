size(200,200); //size of window 
int x = 0; //variable x
while (x < width){ //width of x
  int y = 0; //variable y
  while(y < height){ //width of height
    noStroke();
    fill(random(255),random(255));
    rect(x,y,10,10);
    y += 10;
  }
  x += 10;
}