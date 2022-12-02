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
    nextState = type;
  }
  void display(){
    if (state == 0){
      landColor = #81582F;
    }
    if (state == 1){
      landColor = #F20C0C;
    }
    if (state == 2){
      landColor = #810707;
    }
    if (state == 3){
      landColor = #49B90D;
    }
    fill(landColor);
    rect(x,y,landSize,landSize);
  }
  void changeState(){
    state = nextState;
  }
  void updateNextState(int n){
    if (n==1 && this.state == 3){
      this.nextState=1;
    }
    if (this.state == 1){
      this.nextState = 2;
    }
  }
}
