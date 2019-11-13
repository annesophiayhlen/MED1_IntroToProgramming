class Flower {
  int r;      
  float ballX;   
  float ballY;
  float x;
  float y;
  float yDirc = -1; // y direction
  float xDirc = -1; // x direction'
  float speed;
  color fillColor = #FFA005;
  int tailLength = 100;
  float[] tailXPos = new float [tailLength];
  float[] tailYPos = new float [tailLength];


  Flower(int radius, float speed, float xLocation, float yLocation) {
    this.speed = speed;
    r = radius;
    x = xLocation;
    y = yLocation;
  }
  Flower(int radius, float speed, float xLocation, float yLocation, int rColor) {
    this.speed = speed;
    r = radius;
    x = xLocation;
    y = yLocation;
    fillColor = rColor;
  }

  void move() {  // function for moving the object
    x = x + (speed * xDirc);
    // y = y + (speed * yDirc);
  }

  void bounce() { //collision with wall
    if (x > width-r || x < r || y > height || y < 0) xDirc = xDirc*-1; //bouncing on x-axis
  }

  void displayTail() {
    for (int i = tailLength - 1; 
      i > 0; 
      i --) {
      tailXPos[i] = tailXPos[i-1];
      tailYPos[i] = tailYPos[i-1];
    }
    
    tailXPos[0] = x;
    tailYPos[0] = y;
    
    
    for (int i = 0; i < tailLength; i++) {
    fill(color(random(255), random(255), random(255)));
    circle(tailXPos[i], tailYPos[i], r/4);
    }
    
  }

  void display() {
    fill(fillColor);
    for (float i=0; i<PI*2; i+=2*PI/5) {
      ballX=r*cos(i);
      ballY=r*sin(i);
      ellipse(x+ballX, y+ballY, r, r);
    }
    fill(200, 0, 0);
    ellipse(x, y, r*1.2, r*1.2);
  }
}
