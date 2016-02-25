size(200,200);
background(255);

int y = 80; //vertical
int x = 50; 
int spacing = 10; // space between each line 
int len = 20; //length of each line 

int xStop = 150; // when x will stop
stroke(0);

while (x <= xStop){
  line(x,y,x,y+len);
  x = x + spacing;
}