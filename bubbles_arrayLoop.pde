int n=100;
Bubble bubbles[] = new Bubble[n];
int j;


void setup() {
  size(500, 500);
  for (int i=0; i<n; i++)
  {
    bubbles[i] = new Bubble(50);
  }
  smooth(4);
  //background(255);
}

void draw() {
  background(255);
  for (int i=0; i<n; i++)
  {
    bubbles[i].display();
    bubbles[i].ascend();
    //delay(10);
  }
  if (mousePressed){
    save("img");
  }
}

void mousePressed() {
  bubbles[0].pop(mouseX, mouseY);
}