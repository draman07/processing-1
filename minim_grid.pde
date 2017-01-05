import ddf.minim.analysis.*;
import ddf.minim.*;

Minim minim;
AudioPlayer a;
FFT fft;

int cols, rows;
int scl=10;
int w=2000;
int h=1600;
float band, old_band;
float weight;

float flying=0;
float [][] terrain;

void setup() 
{
  size(960, 540, P3D);
  cols = w/scl;
  rows = h/scl;
  terrain = new float[cols][rows];
  minim = new Minim(this);
  a = minim.loadFile("ep.mp3", 512);
  a.loop();
  fft = new FFT(a.bufferSize(), a.sampleRate());
  //background(0);
  //smooth(4);
  frameRate(24);
}

void draw()
{
  flying -= 0.2;

  float yoff = flying;
  for (int y=0; y<rows; y++)
  {
    float xoff=0;
    for (int x=0; x<cols; x++)
    {
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -10, 10);
      xoff += 0.2;
    }
    yoff += 0.2;
  }
  background(0);
  //noStroke();
  stroke(255);
  noFill();
  //fill(255,random(255));
  fft.forward(a.mix);
  translate(width/2, height/2+50);
  //rotateX(PI/2);
  rotateY(PI/3);
  translate(-w/2, -h/2);
  //for (int i=0; i<fft.specSize(); i++)
  //{
  //  band = fft.getFreq(i)*5;
  //  old_band=band;
  //  println(band);
  //  //stroke(fft.getFreq(i)*100);
  //  //strokeWeight(fft.getFreq(i)*.5);
  //}
  for (int i=0; i<fft.specSize(); i++)
  {
    for (int y=0; y<rows-1; y++)
    {
      beginShape(POINTS);
      for (int x=0; x<cols; x++)
      {
        //if(band>0&&band<50)
        //{
        //  strokeWeight(2);
        //}
        //else
        //{
        //  strokeWeight(1);
        //}
        vertex(x*scl, y*scl, terrain[x][y]);
        vertex(x*scl, y*scl, terrain[x][y]+band);
        //vertex(x*scl,height-band*4);
      }
      endShape();
      //println(y);
    }
  }
  ////translate(width/2,height/2);
  ////rotateY(0);
  //for(int i=0;i<fft.specSize();i++)
  //{
  // line(i+200,height,i+200,height - fft.getBand(i)*4);
  // //ellipse(random(width),(height)-fft.getBand(i),fft.getBand(i),fft.getBand(i));
  //}

  //saveFrame("frames/####.png");
}