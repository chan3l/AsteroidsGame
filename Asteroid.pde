public class Asteroid extends Floater
{
  private int rotation = (int)(Math.random()*51-25);
  public Asteroid() {
    corners = 9;
    int[] xS = {12, 16, 8, -8, -16, -24, -8, 8, 16};
    int[] yS = {0, 16, 24, 8, 9, 0, -24, -16, -15};
    xCorners = xS;
    yCorners = yS;
    myCenterX = 500;
    myCenterY = 350;
    myColor= 255;
  }
  public void setX(int x) {
    myCenterX = x;
  }
  public int getX() {
    return(int)(myCenterX);
  }
  public void setY(int y) {
    myCenterY =y;
  }
  public int getY() {
    return (int)(myCenterY);
  }
  public void setDirectionX(double x) {
    myDirectionX =x;
  }
  public double getDirectionX() {
    return myDirectionX;
  }
  public void setDirectionY(double y) {
    myDirectionY = y;
  }
  public double getDirectionY() {
    return myDirectionY;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
  public void move() {
    rotate(rotation);
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
    if (myCenterX >width)
    {     
      myCenterX = 0;
    } else if (myCenterX<0)
    {     
      myCenterX = width;
    }    
    if (myCenterY >height)
    {    
      myCenterY = 0;
    } else if (myCenterY < 0)
    {     
      myCenterY = height;
    }
  }
}