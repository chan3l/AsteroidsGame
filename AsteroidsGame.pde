private Spaceship bob;
private Stars[] sky = new Stars[200];
public void setup() 
{
  noStroke();
  size(700, 700);
  bob = new Spaceship();
  for(int i =0; i <sky.length; i++) {
    sky[i] = new Stars();
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for(int i =0; i<sky.length; i ++) {
    sky[i].show();
  }
}
public void keyPressed() {
  if (key=='w') {
    bob.accelerate(0.5);
  }
  if(key=='s') {
    bob.accelerate(-0.5);
  }
  if (key=='a') {
    bob.turn(-20);
  }
  if (key=='d') {
    bob.turn(20);
  }
  if (key=='e') {
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)(Math.random()*361));
    bob.setX((int)(Math.random()*501));
    bob.setY((int)(Math.random()*501));
  }
}