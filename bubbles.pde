Bubble b;

void setup(){
  size(500,500);
  b = new Bubble(50);
}

void draw(){
  background(0);
  b.display();
  b.ascend();

}

void mousePressed(){
    b.pop(mouseX,mouseY);
}