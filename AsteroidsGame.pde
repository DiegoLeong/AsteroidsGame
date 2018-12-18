//your variable declarations here
Spaceship octo = new Spaceship();
Star[] galaxy = new Star[100];

ArrayList <Asteroid> roid = new ArrayList <Asteroid>();
ArrayList <Bullet> bully = new ArrayList <Bullet>();
boolean w,a,s,d;

public void setup() 
{
	

	frameRate(120);
	size(800,800);

	for(int i = 0; i<galaxy.length; i++){ galaxy[i] = new Star();}
	for(int d = 0; d<50; d++){roid.add(new Asteroid());}

  //your code here
}
public void draw()
{
	//BG
	background(#2F426D);
	for(int i = 0; i<galaxy.length; i++){ galaxy[i].show();}
	//movement keys	
	if(w==true){octo.accelerate(0.01);}
	if(a==true){octo.turn(-2);}
	if(s==true){octo.accelerate(-0.01);}
	if(d==true){octo.turn(2);}
	//Ship Exist
	octo.show();
	octo.move();
	//Roid Exist
	for(Asteroid d : roid){ 
  		d.show();
  		d.move();
  		d.roidMovement();
	}
	//Bullet Exist
	for(Bullet b : bully){
  		b.show();
  		b.move();
	}
	//Roid x Ship Collision
	for(int d = 0; d<roid.size(); d++){ 
  		double disto = dist((float)roid.get(d).myCenterX, (float)roid.get(d).myCenterY, (float)octo.myCenterX, (float)octo.myCenterY);
  		if(disto<=20)
  			{
  			roid.remove(d);
  			break;
			}
		}
	//Roid x Bullet Collision
	for(int d = 0; d<roid.size(); d++){ 
  		for(int b = 0; b<bully.size(); b++){
  
  			double disto = dist((float)roid.get(d).myCenterX, (float)roid.get(d).myCenterY, (float)bully.get(b).myCenterX, (float)bully.get(b).myCenterY);
  			if(disto<=20)
  				{
  				roid.remove(d);
  				bully.remove(b);
  				break;
				}
		}
	}
	//Bullet Bye Bye
	for(int b = 0; b<bully.size(); b++){
			if(bully.get(b).myCenterX >= 800 || bully.get(b).myCenterX <= 0 || bully.get(b).myCenterY >= 800 || bully.get(b).myCenterY <= 0)
			{
				bully.remove(b);
				break;
			}
		}


}

public void keyPressed()
{	
	if(key=='f')
	{
		bully.add(new Bullet(octo));
	}
	if(key=='g')
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
	/*if(key=='f')
	{
		f=false;
	}*/
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
