class Bullet extends Floater  
{   
  Bullet(){}
  Bullet(Spaceship theShip)
  { 
    myColor=255;
    corners=4;
    xCorners = 5 * Math.cos(dRadians) + Spaceship.myDirectionX; 
    yCorners = 5 * Math.sin(dRadians) + Spaceship.myDirectionY;
    xCorners[0]=16;
    yCorners[0]=0;
    xCorners[1]=-4;
    yCorners[1]=8;  
    xCorners[2]=-12;
    yCorners[2]=0;  
    xCorners[3]=-4;
    yCorners[3]=-8;     
    myCenterX=Spaceship.myCenterX;
    myCenterY=Spaceship.myCenterY;
    myPointDirection=Spaceship.myPointDirection;
    double dRadians = myPointDirection*(Math.PI/180);
  }

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

  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    ellipse(myCenterX,myCenterY,5,5);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}
