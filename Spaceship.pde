class Spaceship extends Floater  
{   
	Spaceship()
	{
		corners=4;
		xCorners = new int[corners]; 
		yCorners = new int[corners];
		xCorners[0]=16;
		yCorners[0]=0;
		xCorners[1]=-4;
		yCorners[1]=8;	
		xCorners[2]=12;
		yCorners[2]=0;	
		xCorners[3]=-4;
		yCorners[3]=-8;			
	}

	public void setX(int x){};  
	public int getX(){};   
	public void setY(int y){};   
	public int getY(){};   
	public void setDirectionX(double x){};   
	public double getDirectionX(){};   
	public void setDirectionY(double y){};   
	public double getDirectionY(){};   
	public void setPointDirection(int degrees){};   
	public double getPointDirection(){}; 
}
