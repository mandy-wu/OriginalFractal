public void setup()
{
  size (500,500);
}

public void draw()
{
  background(0);
  myFractal(250,250,480);
}
public void myFractal(int x, int y, int siz)
{
  ellipse(x,y,siz,siz);
  if (siz > 15)
  {
   
    fill ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    myFractal(x,y,siz/2);
    myFractal(x-siz/2,y,siz/2);
    myFractal(x+siz/2,y,siz/2);
    myFractal(x,y,siz/4);
    myFractal(x,y+siz/2,siz/2);
    myFractal(x,y-siz/2,siz/2);
  }
}