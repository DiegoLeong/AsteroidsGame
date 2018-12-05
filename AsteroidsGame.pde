//your variable declarations here
Spaceship octo = new Spaceship();
Bullet pubg = new Bullet();
Star[] galaxy = new Star[100];
//Asteroid[] roid = new Asteroid[20];
ArrayList <Asteroid> roid = new ArrayList <Asteroid>();
boolean w,a,s,d;

public void setup() 
{
	

	frameRate(120);
	size(800,800);

	for(int i = 0; i<galaxy.length; i++){ galaxy[i] = new Star();}
	for(int d = 0; d<20; d++){roid.add(new Asteroid());}

  //your code here
}
public void draw()
{
  //your code here
  background(#2F426D);
  for(int i = 0; i<galaxy.length; i++){ galaxy[i].show();}
  for(int d = 0; d<roid.size(); d++){ 
  	roid.get(d).show();
  	roid.get(d).move();
  	roid.get(d).roidMovement();
  	double disto = dist((float)roid.get(d).myCenterX, (float)roid.get(d).myCenterY, (float)octo.myCenterX, (float)octo.myCenterY);
  	if(disto<=50){
  		roid.remove(d);
  	}
  
  }
  octo.show();
  octo.move();
  //roid.show();
  //roid.move();
  
  if(w==true){octo.accelerate(0.01);}
  if(a==true){octo.turn(-2);}
  if(s==true){octo.accelerate(-0.01);}
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
