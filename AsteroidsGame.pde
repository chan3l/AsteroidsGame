private Spaceship bob;
private Asteroid rock;
private Stars[] sky = new Stars[500];
//private Asteroid[] rocks = new Asteroid[10];
public void setup() 
{
  noStroke();
  size(1000, 700);
  bob = new Spaceship();
  rock = new Asteroid();
  for (int i =0; i <sky.length; i++) {
    sky[i] = new Stars();
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for (int i =0; i<sky.length; i ++) {
    sky[i].show();
  }
  rock.show();
  rock.move();
}
public void keyPressed() {
  if (key=='w') {
    bob.accelerate(0.2);
  }
  if (key=='s') {
    bob.accelerate(-0.2);
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
    bob.setX((int)(Math.random()*1001));
    bob.setY((int)(Math.random()*1001));
  }
}