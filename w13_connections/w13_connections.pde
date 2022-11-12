int[] xvals;
int[] yvals;
int numPoints;
void setup(){
size(600, 400);
background(255);
xvals = new int[100];
yvals = new int[100];
numPoints = 150;

makeLines(xvals, yvals, numPoints);
drawLines(xvals, yvals);
}
void makeLines(int[] xs, int[] ys, int points){
  if (points > xs.length){
    points = xs.length;
  }
   if (points > ys.length){
    points = ys.length;
  }
       for (int i = 0; i < points; i = i+1){
         xs[i]=int(random(width));
         ys[i]=int(random(height));
       }
   
  }
void drawLines(int[] xs, int[] ys){
  for (int i = 0; i < xs.length-1; i = i+1){
    line(xs[i],ys[i],xs[i+1],ys[i+1]);
  }
}
