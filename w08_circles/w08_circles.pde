int movingX;
int movingY;
int radius;

void setup() {
  size(500, 500);
  background (255,0,0);
  movingX = 50;
  movingY = 150;
  radius = 50;
}//setup
void circleRow(int startX, int endX, int y, int d){
  fill(0,255,0);
  while (startX <= endX){
    circle(startX,y,d);
    startX=startX+d;
  }
}

void draw() {
  background(255,0,0);
  circleRow(50,450,50,2*radius);
  if (movingY >500){
    movingY=150;
  }
  else if (movingX>450){
  movingY=movingY+100;
  movingX=50;
  }
  else{
    fill(0,0,255);
  circle(movingX, movingY, 2*radius); 
  movingX++;
  }
}//draw
