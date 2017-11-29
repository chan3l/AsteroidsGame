private Spaceship bob;
private Stars[] sky = new Stars[500];
private Asteroid[] rocks = new Asteroid[10];
public void setup() 
{
  noStroke();
  size(1000, 700);
  bob = new Spaceship();
  for (int i =0; i <sky.length; i++) {
    sky[i] = new Stars();
  }
  for (int i =0; i<rocks.length; i++) {
    rocks[i] = new Asteroid();
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
  for (int i =0; i<rocks.length; i++){
    rocks[i].show();
    rocks[i].move();
  }
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