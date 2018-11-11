class Star //note that this class does NOT extend Floater
{
  //your code here
  int x;
  int y;
  Star()
  {
  	x=(int)(Math.random()*800);
  	y=(int)(Math.random()*800);
  }
  public void show()
  {
  	ellipse(x,y,2,2);
  }
}