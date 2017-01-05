class walker{
  int x;
  int y;
  //float n=random(255);
  //float s=random(10);
  int f=7;
  
  walker() {
    x=width/2;
    y=height/2;
  }
  
  void walk(){
    int choice=int (random(4));
    if(choice==0){
      x=x+f;
    }
    else if(choice==1){
      x=x-f;
    }
    else if(choice==2){
      y=y+f;
    }
    else{
      y=y-f;
    }
  }
  
  void display(){
    float n=random(70);
    float s=random(4,7);
    noStroke();
    fill(0,n);
    ellipse(x,y,s,s);
  }
  void edge(){
    if(x>width||y>height){
      x=x-f;
      y=y-f;
    }
    else if(x<=0||y<=0){
      x=x+f;
      y=y+f;
    }
  }
      
}