boolean Left, Right, Up, Down = false;
float playerX =400;
float playerY = 400;
int scene=1;
Street street;
Speeeed speeeed;
Slow slow;
Cones cones;
void setup()
{
  size(800, 800);
  street=new Street();
  speeeed=new Speeeed();
  slow = new Slow();
  cones = new Cones();
}
void draw()
{
  if(scene==1)
  {
    Game();
  }
  if(scene==2)
  {
    lose();
  }
}
void Game()
{
  background(0, 0, 0);
  ellipse(playerX, playerY, 20, 20);
  street.drawstreet();
  street.speedup();
  street.slowdown();
  street.Cone();

  Move();
  if(street.speed<0.5)
  {
    scene+=1;
  }
    
}
void lose()
{
  background(255,255,0);
}
void Move()
{
  if (Up)
  {
    playerY-=2;
  }
  if (Down)
  {
    playerY+=2;
  }
  if (Left)
  {
    playerX-=2;
  }
  if (Right)
  {
    playerX+=2;
  }
}

void keyPressed()
{
  if (keyCode == UP)
  {
    Up=true;
  }
  if (keyCode == DOWN)
  {
    Down=true;
  }
  if (keyCode == RIGHT)
  {
    Right=true;
  }
  if (keyCode == LEFT)
  {
    Left=true;
  }
}
void keyReleased()
{
  if (keyCode == DOWN)
  {
    Down=false;
  }
  if (keyCode == UP)
  {
    Up=false;
  }
  if (keyCode == RIGHT)
  {
    Right=false;
  }
  if (keyCode == LEFT)
  {
    Left=false;
  }
}
