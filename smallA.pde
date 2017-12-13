public class smallA extends Asteroid {
  public smallA(int x, int y) {
    corners = 9;
    int[] xS = {12, 16, 8, -8, -16, -24, -8, 8, 16};
    int[] yS = {0, 16, 24, 8, 9, 0, -24, -16, -15};
    xCorners = xS;
    yCorners = yS;
    myCenterX = x;
    myCenterY = y;
  }
}