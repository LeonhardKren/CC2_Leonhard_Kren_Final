class Speeeed extends Street
{
  PImage speedup;
  float speedupX;
  float speedupY;

  Speeeed()
  {
    speedup=loadImage("speeed.png");
    speedup.resize(75, 75);
    speed=5;
    COUNT=8;
    speedupX=300;
    speedupY=300;
    X= new float[COUNT]; 
    Y= new float[COUNT];
    for (int i=0; i<COUNT; i++)
    {
      Y[0]=100;
      Y[i]=100-105*i;

      X[i]=390;
    }
  }
  
  boolean MoreSpeed()
  {
    speedupY+=2;
    if(speedupY>800)
    {
     speedupY-=random(800,1600); 
    }
    image(speedup, speedupX,speedupY);
    if (dist(playerX, playerY, speedupX+37.5, speedupY+37.5)<20)
    {
      //speed+=100;
      speedupX=random(150,600);
      speedupY-=random(1000,2000);
      return true;
    }
    return false;
  }  
}
