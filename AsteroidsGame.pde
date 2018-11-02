//your variable declarations here
Spaceship octo = new Spaceship();
public void setup() 
{
	background(0);
	size(800,800);
  //your code here
}
public void draw() 
{
  //your code here
  octo.show();
  octo.move();
}

public void keyPressed()
{
	if(key=='w')
	{
		octo.setX((int)(Math.random()*800)-1);
		octo.setY((int)(Math.random()*800)-1);
		octo.setPointDirection((int)(Math.random()*360));
		//octo.setDirectionX((double)Math.random());
		//octo.setDirectionY((double)Math.random());
	}
}