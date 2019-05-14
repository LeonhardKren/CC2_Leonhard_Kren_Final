class Cones extends Street
{
  PImage Cone[];
  float conex[];
  float coney[];
  int number;

  Cones()
  {
    number=5;
    conex=new float[50];
    coney=new float[50];
    Cone=new PImage[50];
    for (int i=0; i<number; i++)
    {      
      Cone[i]=loadImage("streetcone.png");
      Cone[i].resize(50, 50);
      conex[i]=random(200, 600);
      coney[i]=random(-1600, 0);
    }
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
  boolean conies()
  {
  
    for (int i =0; i<number; i++)
    {
      image(Cone[i], conex[i], coney[i]);
      coney[i]+=speed-1;   
      if(coney[i]>800)
      {
        conex[i]=random(150,600);
        coney[i]-=random(1000,2000);
      }
      if (dist(playerX, playerY, conex[i]+25, coney[i]+25)<20)
      {
        conex[i]=random(150, 600);
        coney[i]-=random(1000, 2000);
        return true;
      }
      
    }
    return false;
  }
}
