import beads.*;
AudioContext ac;
float baseFreq = 261.63;
//int sineCount = 10;

WavePlayer wp;
Glide freq;
Gain g;
Gain mg;

boolean coln = true;
float n = 0;
float c = 2;

float angle=10;

void setup()
{
  size(500, 500);
  background(0);
  colorMode(HSB);
  ac = new AudioContext();
  mg = new Gain(ac, 1, 0.5);
  ac.out.addInput(mg);
  freq = new Glide(ac, baseFreq, 50);
  wp = new WavePlayer(ac, freq, Buffer.SINE);
  g = new Gain(ac, 1, 50);
  g.addInput(wp);
  mg.addInput(g);
  //ac.start();
  
}

void draw()
{
  float a = n*angle;
  float r = c * sqrt(n);

  float x = r * cos(a) + width/2;
  float y = r * sin(a) + height/2;

  float op = random(1, 255);
  float size = random(1, 10);
  if (coln)
  {
    fill(40, op, 255);
    noStroke();
    //stroke(0,op);
    //line(x,y,width/2,height/2);
  } 

  else
  {
    fill(a%40, op, 255);
  }
  ellipse(x, y, 5, 5);
  //op++;
  n=n+1;
  if (n>500)
  {
    coln = false;
  }
  //angle++;
  //println(baseFreq);
  println(n);
  float mod = n%6;

  //baseFreq = 260+n%256;
  if (mod==0)
  {
    freq.setValue(261.63);
  }
  if (mod==1)
  {
    freq.setValue(293.66);
  }
  if (mod==2)
  {
    freq.setValue(329.63);
  }
  if (mod==3)
  {
    freq.setValue(392);
  }
  if (mod==4)
  {
    freq.setValue(493.88);
  }
  if (mod==5)
  {
    freq.setValue(587.33);
  }
  //delay(100);
  saveFrame("frame/####.png");
}