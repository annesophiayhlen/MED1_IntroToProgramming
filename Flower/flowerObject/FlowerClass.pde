class Flower{
int r;      
float ballX;   
float ballY;
float x;
float y;
float yDirc = -1; // y direction
float xDirc = -1; // x direction'
float speed;
color fillColor = #FFA005;

 Flower(int radius, float speed, float xLocation, float yLocation){
 this.speed = speed;
 r = radius;
 x = xLocation;
 y = yLocation;

}
 Flower(int radius, float speed, float xLocation, float yLocation, int rColor){
 this.speed = speed;
 r = radius;
 x = xLocation;
 y = yLocation;
 fillColor = rColor;
 }

void move(){  // function for moving the object
  x = x + (speed * xDirc);
 // y = y + (speed * yDirc); 
}

void bounce(){ //collision with wall
  
  /*if(y - r  <= 0){    // orignal collision with wall
  yDirc = 1;
  }
  else if (y + r >= height){
  yDirc = -1;
  }
    if(x - r  <= 0){
  xDirc = 1;
  }
  else if (x + r >= width){
  xDirc = -1;
  }
  */
  
 // if(x - r <= 0 || x + r >= width) xDirc = xDirc*-1;
 // if(y - r <= 0 || y + r >= height) yDirc = yDirc*-1; // now speed can be ex: -1 and make is bounce around
  
      
  if (x > width-r || x < r || y > height || y < 0) xDirc = xDirc*-1; //bouncing on x-axis
      
  
}
void display(){
  fill(fillColor);
  for (float i=0;i<PI*2;i+=2*PI/5) {
    ballX=r*cos(i);
    ballY=r*sin(i);
    ellipse(x+ballX,y+ballY,r,r); 
    }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
  }
}
