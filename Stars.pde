public class Stars //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Stars() {
    myX= ((int)(Math.random()*1000 +1));
    myY = ((int)(Math.random()*1000 +1));
  }
  public void show() {
    fill(255);
    ellipse(myX, myY, 4,4);
  }
}