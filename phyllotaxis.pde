float n = 0;
float c = 5;

float angle=137.5;

void setup()
{
  size(500,500);
  background(0);
  colorMode(HSB);
  
}

void draw()
{
  float a = n*angle;
  float r = c * sqrt(n);
  
  float x = r * cos(a) + width/2;
  float y = r * sin(a) + height/2;
  
  float op = random(1,255);
  fill(n % 256,255,255);
  noStroke();
  //stroke(0,op);
  //line(x,y,width/2,height/2);
  ellipse(x,y,4,4);
  //op++;
  n++;
  //angle++;
}