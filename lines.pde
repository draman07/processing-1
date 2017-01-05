void setup(){
  size(500,500);
  background(0);
  //smooth(4);
}

void draw(){
  stroke(255,255,255,random(255));
  line(width/2,height/2,random(width),random(height));
  if (mousePressed){
    save("img");
  }
}
  