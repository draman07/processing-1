float circleX;
float circleY;

void setup(){
  size(1000,1000);
  background(0);
  
}

void draw(){
  circleX=random(width);
  circleY=random(height);
  float size=random(10);
  
  noStroke();
  fill(255,255,255,random(100));
  ellipse(circleX,circleY,size,size);
}