import ddf.minim.analysis.*;
import ddf.minim.*;

Minim minim;
AudioPlayer a;
FFT fft;

void setup() 
{
  size(1000,500);
  minim = new Minim(this);
  a = minim.loadFile("Deriva.aif",2048);
  a.loop();
  fft = new FFT(a.bufferSize(),a.sampleRate());
  //background(0);
  smooth(4);
}

void draw()
{
  background(0);
  //noStroke();
  stroke(255);
  fill(255,random(255));
  fft.forward(a.mix);
  //translate(100,900);
  for(int i=0;i<fft.specSize();i++)
  {
    stroke(fft.getFreq(i)*7);
    line(i,height,i,height - fft.getFreq(i)*2);
    //ellipse(random(width),(height)-fft.getBand(i),fft.getBand(i),fft.getBand(i));
  }
}
  