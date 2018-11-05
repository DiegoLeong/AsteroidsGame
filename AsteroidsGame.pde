//your variable declarations here
Spaceship octo = new Spaceship();
//Star[] galaxy = new Star[100];
public void setup() 
{
	background(0);
	size(800,800);
	//for(int i = 0; i<100; i++){galaxy.show();}
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