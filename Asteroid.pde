public class Asteroid extends Floater
{
  private int speed = (int)(Math.random()*51-25);
  public Asteroid() {
    corners = 9;
    int[] xS = {6,4,2,-2,-4,-6,-2,2,4};
    int[] yS = {0,4,6,2,4,0,-6,-4,-6};
    xCorners = xS;
    yCorners = yS;
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
}