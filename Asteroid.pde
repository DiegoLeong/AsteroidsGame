class Asteroid extends Floater  
{   

	Asteroid()
	{	

		myColor=255;
		corners=4;
		xCorners = new int[corners]; 
		yCorners = new int[corners];
		int scaler = 20;
		xCorners[0]=scaler;
		yCorners[0]=scaler;
		xCorners[1]=-scaler;
		yCorners[1]=scaler;	
		xCorners[2]=-scaler;
		yCorners[2]=-scaler;	
		xCorners[3]=scaler;
		yCorners[3]=-scaler;			
		myCenterX=(int)(Math.random()*800);
		myCenterY=(int)(Math.random()*800);
		myPointDirection=Math.random()*360;
		//myDirectionX=(int)(Math.random()*5);
		//myDirectionY=(int)(Math.random()*5);
		accelerate(.5);
	}

	//public int rotationboy = ((int)(Math.random()*30));
	public void setX(int x){myCenterX=x;}  
	public int getX(){return (int)myCenterX;}   
	public void setY(int y){myCenterY=y;} 
	public int getY(){return (int)myCenterY;}  
	public void setDirectionX(double x){myDirectionX=x;}   
	public double getDirectionX(){return myDirectionX;}   
	public void setDirectionY(double y){myDirectionY=y;}   
	public double getDirectionY(){return myDirectionY;}   
	public void setPointDirection(int degrees){myPointDirection=degrees;}   
	public double getPointDirection(){return myPointDirection;} 

	public void roidMovement()
	{
	//roid.setDirectionX(Math.random()*40);
	//roid.setDirectionY(Math.random()*40);
	turn((int)(Math.random()*10));
	accelerate(0);
	}	

	public void move ()   //move the floater in the current direction of travel
  	{      
    //change the x and y coordinates by myDirectionX and myDirectionY    
    //setPointDirection(rotationboy);   
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;
    }   
  }   
}

