class Land {
  int state;
  int nextState;
  int landSize;
  color landColor;
  int x;
  int y;
  
  Land(int xi, int yi, int plotSize, int type){
    state = type;
    landSize = plotSize;
    x=xi;
    y=yi;
  }
  void display(){
    fill(landColor);
    rect(x,y,landSize,landSize);
  }
  void changeState(){
    state=nextState;
  }
  void updateNextState(int n){
    if (
  }
}
