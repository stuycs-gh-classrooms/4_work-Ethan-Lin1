int[] xvals;
int[] yvals;
int numberClicks = 0;
int start = 0;
int clear = 0;
void setup(){
size(600, 400);
background(255);
xvals = new int[100];
yvals = new int[100];
drawLines(xvals, yvals);
}
void draw(){
  background(255);
  drawLines(xvals, yvals);
}
void mousePressed(){
  xvals[numberClicks]=mouseX;
  yvals[numberClicks]=mouseY;
  numberClicks++;
  clear = numberClicks;
  
}
void drawLines(int[] xs, int[] ys){
  for (int i = start; i < numberClicks-1; i = i+1){
    line(xs[i],ys[i],xs[i+1],ys[i+1]);
  }
}
void keyPressed(){
  if (key == 'c'){
    start = clear;
  }
  if (key == 'r'){
    stroke(255,0,0);
  }
    if (key == 'g'){
    stroke(0,255,0);
  }
    if (key == 'b'){
    stroke(0,0,255);
  }
     if (key == CODED) {
    if (keyCode == DOWN) {
      moveLines(xvals, yvals, 0,1);
    } else if (keyCode == UP) {
      moveLines(xvals, yvals, 0,-1);
    } 
   else if (keyCode == LEFT){
    moveLines(xvals, yvals, -1,0);
  }
  else if (keyCode == RIGHT){
    moveLines(xvals, yvals, 1,0);
  }
   }
}
void moveLines(int[] xs, int[] ys, int xMod, int yMod){
  for (int i = 0; i < xs.length; i = i+1){
    xs[i]=xs[i]+xMod;
}
  for (int i = 0; i < ys.length; i = i+1){
    ys[i]=ys[i]+yMod;
  }
}
