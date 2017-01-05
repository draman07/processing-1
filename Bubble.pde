class Bubble {
  float x;
  float y;
  float diameter;
  float yspeed;
  float n=random(255);
  
  boolean popped = false;

  Bubble (float tempD) {
    x = random(width);
    //y = random(height);
    //x=width/2;
    y=height;
    diameter=random(10,30);
    yspeed=random(.2,1);
  }

  void display() {
    if (!popped) {

      noStroke();
      fill(0,n);
      ellipse(x, y, diameter, diameter);
    }
    }

    void ascend() {
      y=y-yspeed;
      //y=random(width);
      x=x+random(-2,2);
    }

    void pop(float mx, float my) {
      float d= dist(x,y,mx,my);
      if (d < diameter/2){
        popped = true;
      }
    }
  }