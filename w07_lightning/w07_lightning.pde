void setup() {
  size(500, 500);
  drawLightning(100,100,50);
  drawLightning(10,100,20);
  drawLightning(53,12,60);
  drawLightning(98,400,32);
  drawLightning(440,50,50);
}//setup

void drawLightning(int x, int y, int numParts){
  strokeWeight(random(2,8));
  int nextx;
  int nexty;
  nexty = int((height-y)/numParts);
  while (numParts > 0){
    nextx = int(random(x-6,x+6));
    line(x,y,nextx,y+nexty);
    x=nextx;
    y=y+nexty;
    
    numParts=numParts-1;
  
}}
