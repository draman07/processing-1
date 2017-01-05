walker walk;

void setup(){
  size(500,500);
  smooth(4);
  background(255);
  walk = new walker();
}

void draw(){
  walk.display();
  walk.walk();
  walk.edge();
  if (mousePressed){
    save("img");
  }
  //saveFrame("frames/####.png");
}
  
  