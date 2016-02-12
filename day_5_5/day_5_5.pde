int a = 600;
int d = 300;
 
 void setup() { //runs once at startup
   size(600,650);
 }
 
 void draw() {
   background(255); //set background white
   
   //black rectangle
   fill(0); //fill is black
   rectMode(CORNER); //corner of the rectangle
   noStroke(); 
   rect(20,20,560,330); //rectangle
   
   //quad
   stroke(255,0,0); //the stroke of the points are set to red 
   noFill();
   strokeWeight(1); //makes line larger
   quad(300,150,100,350,300,550,500,350);
   //quad(x1,y1,x2,y2,x3,y3);
   
   //top circle
   fill(255);//white
   noStroke(); //makes no outline
   ellipse(300,150,80,80); //the circle
   
   //left circle
   fill(0,255,0,150); //4th variable, transparency
   noStroke(); //makes no outline
   ellipse(100,350,80,80); //the circle
   
   //right circle
   noFill(); //no color
   strokeWeight(10); //makes line larger
   stroke(0,0,255); //R,G,B
   ellipse(500,350,80,80); //the circle
   strokeWeight(1); //makes line larger
   
   
   //triangle
   fill(240,200); //grey
   triangle(300,440,140,600,460,600); //the triangle
   
   //rectangle on the bottom of the triangle
   fill(255); //white
   stroke(0,0,255); //makes outline blue 
   rectMode(CENTER); //center of the rectangle
   rect(300,600,10,10); //rectangle
   
   //line between two points
   stroke(238,23,250);
   strokeWeight(3); //makes line larger
   line(300,150,300,600);
   
   //arc
   stroke(0); //the stroke set to black
   noFill(); //adds on color
   strokeWeight(1); //makes line larger
   arc(500,550,400,400,PI,PI+HALF_PI);
   
   //point
   stroke(255,0,0); //the stroke of the points set to red
   strokeWeight(3); //makes line larger
   point(500,550); //the points placement
 
 }