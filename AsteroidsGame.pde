//your variable declarations here
Spaceship octo = new Spaceship();
Star[] galaxy = new Star[100];
boolean w,a,s,d;
public void setup() 
{
	frameRate(120);
	size(800,800);
	//for(int i = 0; i<100; i++){galaxy.show();}
  //your code here
}
public void draw() 
{
  //your code here
  background(#2F426D);
  octo.show();
  octo.move();
  if(w==true){octo.accelerate(0.02);}
  if(a==true){octo.turn(-2);}
  if(s==true){octo.accelerate(-0.02);}
  if(d==true){octo.turn(2);}

}

public void keyPressed()
{
	if(key=='f')
	{
		octo.setX((int)(Math.random()*800)-1);
		octo.setY((int)(Math.random()*800)-1);
		octo.setPointDirection((int)(Math.random()*360));
		octo.setDirectionX(0);
		octo.setDirectionY(0);
	}
	if(key=='w')
	{
		w=true;
	}
	if(key=='a')
	{
		a=true;
	}
	if(key=='s')
	{
		s=true;
	}
	if(key=='d')
	{
		d=true;
	}
}
public void keyReleased()
{
	if(key=='w')
	{
		w=false;
	}
	if(key=='a')
	{
		a=false;
	}
	if(key=='s')
	{
		s=false;
	}
	if(key=='d')
	{
		d=false;
	}
}