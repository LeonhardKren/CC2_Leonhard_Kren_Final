class Slow extends Street
{
  PImage Slowdown;
  float SlowdownX;
  float SlowdownY;

  Slow()
  {
    Slowdown=loadImage("slowdown.png");
    Slowdown.resize(75, 75);
    SlowdownX=random(150,600);
    SlowdownY=random(100,200);
    speed=5;
    COUNT=8;
    X= new float[COUNT]; 
    Y= new float[COUNT];
    for (int i=0; i<COUNT; i++)
    {
      Y[0]=100;
      Y[i]=100-105*i;

      X[i]=390;
    }
  }

  boolean LessSPeed()
  {
    SlowdownY+=2;
    image(Slowdown, SlowdownX, SlowdownY);
    if (SlowdownY>800)
    {
      SlowdownX=random(150, 600);
      SlowdownY-=random(800, 1600);
    }
    if (dist(playerX, playerY, SlowdownX+37.5, SlowdownY+37.5)<20)
    {
      speed-=2;
      SlowdownX=random(150, 600);
      SlowdownY-=random(1000, 2000);
      
      return true;
    }
    return false;
  }
}
