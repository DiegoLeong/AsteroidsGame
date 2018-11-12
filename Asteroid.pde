class Asteroid extends Floater  
{   

	Asteroid()
	{	

		myColor=255;
		corners=4;
		xCorners = new int[corners]; 
		yCorners = new int[corners];
		xCorners[0]=16;
		yCorners[0]=16;
		xCorners[1]=-16;
		yCorners[1]=16;	
		xCorners[2]=-16;
		yCorners[2]=-16;	
		xCorners[3]=16;
		yCorners[3]=-16;			
		myCenterX=400;
		myCenterY=400;
		myPointDirection=0;
	}

	public int rotationboy = ((int)(Math.random()*360))-180;
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

	public void move ()   //move the floater in the current direction of travel
  	{      
    //change the x and y coordinates by myDirectionX and myDirectionY    
    setPointDirection(rotationboy);   
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
