class Street
{
  float X[];
  float Y[];
  int COUNT;
  float speed;
  float score;
  PImage Cone[];
  float conex[];
  float coney[];
  PImage Car;
  Street()
  {
    score=0;
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
  void speedup()
  {
    if (speeeed.MoreSpeed()==true)
    {
      speed+=1;
    }
  }
  void Cone()
  {
   if(cones.conies()==true)
   {
     speed=0;
   }
  }
  void slowdown()
  {
    if (slow.LessSPeed()==true)
    {
      speed-=2;
    }
  }
  void drawstreet()
  {
    score=millis();
    text(score/1000, 25, 25);

    for (int i=0; i<COUNT; i++)
    {
      rect(X[i], Y[i], 20, 50);
      Y[i]+=speed;
      speed*=0.9999;
      println(speed);
      if (Y[i]>800)
      {
        Y[i]=-50;
      }
    }
    rect(100, 0, 20, 800);
    rect(680, 0, 20, 800);
  }


  
}
