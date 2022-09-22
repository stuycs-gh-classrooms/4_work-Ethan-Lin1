void setup() {
  size(400, 400);
  background(255,0,255);
  logo(100,100,1);
  logo(300,100,2);
  logo(300,300,3);
  logo(100,300,4);
}
void logo (int x,int y,int z) {
fill(255);
noStroke();
circle(x,y,50/z);
rect(x-20/z,y-30/z,40/z,60/z);
rect(x-15/z,y-35/z,30/z,70/z);
rect(x-10/z,y-40/z,20/z,80/z);
rect(x-5/z,y-45/z,10/z,90/z);
fill(255,0,0);
triangle(x-20/z,y+30/z,x+10/z,y+10/z,x,y);
triangle(x-20/z,y-30/z,x+10/z,y-10/z,x,y);

}
