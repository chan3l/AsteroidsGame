private Spaceship bob;
private Stars[] sky = new Stars[500];
private ArrayList <Bullet> ammo = new ArrayList <Bullet>();
private ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
private boolean[] keys = new boolean[6];

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
  for (int i =0; i<keys.length; i++) {
    keys[i] = false;
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
  fill(0,0,255);
  for (int i = 0; i<ammo.size(); i++) {
    ammo.get(i).show();
    ammo.get(i).move();
  }
  float hit;
  for (int i = 0; i<ammo.size(); i++) {
    for (int x = 0; x<rocks.size(); x++) {
      hit = dist(ammo.get(i).getX(), ammo.get(i).getY(), rocks.get(x).getX(), rocks.get(x).getY());
      if (hit<20) {
        ammo.remove(i);
        rocks.remove(x);
        rocks.add(new Asteroid());
        break;
      }
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
  if (keys[0] == true) {
    bob.accelerate(0.05);
  }
  if (keys[1] ==true) {
    bob.accelerate(-0.05);
  }
  if (keys[2] ==true) {
    bob.turn(-7);
  }
  if (keys[3] ==true) {
    bob.turn(7);
  }
  if (keys[4] ==true) {
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)(Math.random()*361));
    bob.setX((int)(Math.random()*1001));
    bob.setY((int)(Math.random()*1001));
    for (int i =0; i <sky.length; i++) {
      sky[i] = new Stars();
    }
  }
  if (keys[5] ==true) {
    ammo.add(new Bullet(bob));
  }
}

public void keyPressed() {
  if (key=='w') {
    keys[0] =true;
  }
  if (key=='s') {
    keys[1] = true;
  }
  if (key=='a') {
    keys[2] = true;
  }
  if (key=='d') {
    keys[3] =true;
  }
  if (key=='e') {
    keys[4] = true;
  }
  if (key==32) {
    keys[5] = true;
  }
}

public void keyReleased() {
    if (key=='w') {
    keys[0] =false;
  }
  if (key=='s') {
    keys[1] = false;
  }
  if (key=='a') {
    keys[2] = false;
  }
  if (key=='d') {
    keys[3] =false;
  }
  if (key=='e') {
    keys[4] = false;
  }
  if (key==32) {
    keys[5] = false;
  }
}