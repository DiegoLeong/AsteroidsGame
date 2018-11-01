//your variable declarations here
Spaceship octo = new Spaceship();
public void setup() 
{
	size(400,400);
  //your code here
}
public void draw() 
{
  //your code here
  octo.show();
}

public void keyPressed()
{
	if(key=='w')
	{
		octo.setX((int)(Math.random()*400)-1);
		octo.setY((int)(Math.random()*400)-1);
		octo.setDirectionX((double)Math.random());
		octo.setDirectionY((double)Math.random());
	}
}