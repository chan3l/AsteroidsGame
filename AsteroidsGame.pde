private Spaceship bob;
private Stars[] sky = new Stars[500];
private ArrayList <Bullet> ammo = new ArrayList <Bullet>();
private ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
public void setup() 
{
  noStroke();
  size(1000, 700);
  bob = new Spaceship();
  for (int i =0; i <sky.length; i++) {
    sky[i] = new Stars();
  }
  for (int i =0; i<10; i++) {
    rocks.add(new Asteroid());
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
  for (int i = 0; i<ammo.size(); i++) {
    ammo.get(i).show();
    ammo.get(i).move();
  }
  float hit;
  for (int i = 0; i<ammo.size(); i++) {
    hit = dist(ammo.get(i).getX(), ammo.get(i).getY(), rocks.get(i).getX(), rocks.get(i).getY());
     if(hit<20) {
       ammo.remove(i);
       rocks.remove(i);
       rocks.add(new Asteroid());
       break;
     }
  }
  float distance;
  for (int i =0; i <rocks.size(); i++) {
    distance = dist(rocks.get(i).getX(), rocks.get(i).getY(), bob.getX(), bob.getY());
    if (distance <25) {
      rocks.remove(i);
      rocks.add(new Asteroid());
    }
  }
  for (int i =0; i<rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
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
    for (int i =0; i <sky.length; i++) {
      sky[i] = new Stars();
    }
  }
  if (key==32) {
    ammo.add(new Bullet(bob));
  }
}