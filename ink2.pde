int n=1;
Bubble bubbles[] = new Bubble[n];
int j;
int fill=0;
int count=0;


void setup() {
  size(500, 500);
  for (int i=0; i<n; i++)
  {
    bubbles[i] = new Bubble(50);
  }
  //smooth(4);
  background(255);
}

void draw() {
  println(fill);
  if(fill<255){
    fill++;
  }
  count++;
  println("second",fill);
  //background(255);
  for (int i=0; i<n; i++)
  {
    bubbles[i].display(fill);
    //bubbles[i].arrays(count);
    bubbles[i].ascend();
    bubbles[i].fadeout();
    //bubbles[i].colors();
    //delay(1000);
  }
  //bubbles[0].colors();
  /*if (mousePressed){
   save("img");
   }*/
  //saveFrame("frames/####.png");
}

void mousePressed() {
  bubbles[0].pop(mouseX, mouseY);
}