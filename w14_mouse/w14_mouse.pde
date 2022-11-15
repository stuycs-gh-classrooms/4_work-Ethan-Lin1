int[] xvals;
int[] yvals;
int numberClicks = 0;
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
}
void drawLines(int[] xs, int[] ys){
  for (int i = 0; i < numberClicks-1; i = i+1){
    line(xs[i],ys[i],xs[i+1],ys[i+1]);
  }
}
