Flower f1;
Flower f2;
Flower f3;

void setup() {
  size(1000,800);
  f1 = new Flower(20,4,width/2,height/2);
  f2 = new Flower(35,-4,width/2,600,color(random(255),random(255),random(255)));
  f3 = new Flower(65,5,width/2,200);
}

void draw(){
  background(#43AF76);
  frameRate(60);
  f1.bounce();
  f1.move();
  f1.display();
  
  
  f2.bounce();
  f2.move();
  f2.displayTail();
  f2.display();
  
  f3.bounce();
  f3.move();
  f3.display();
}
