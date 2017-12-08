public class Asteroid extends Floater
{
  private int rotation;
  public Asteroid() {
    corners = 9;
    int[] xS = {12, 16, 8, -8, -16, -24, -8, 8, 16};
    int[] yS = {0, 16, 24, 8, 9, 0, -24, -16, -15};
    xCorners = xS;
    yCorners = yS;
    myCenterX = (int)(Math.random()*1001);
    myCenterY = (int)(Math.random()*701);
    myDirectionX = (int)(Math.random()*9-4);
    myDirectionY = (int)(Math.random()*9-4);
   if(myDirectionY == 0 && myDirectionX ==0) {myDirectionY = 1;}
    myPointDirection = (int)(Math.random()*360 +1);
    myColor= color(255);
    rotation = (int)(Math.random()*-3+7);
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
    turn(rotation);
    super.move();
  }
}