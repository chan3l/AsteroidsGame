private Spaceship bob;
private Stars[] sky = new Stars[500];
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
    float distance;
  for(int i =0; i <rocks.size(); i++) {
    distance = dist(rocks.get(i).getX(), rocks.get(i).getY(), bob.getX(), bob.getY());
      if(distance <20) {
         rocks.remove(i);
      }
  }
  for (int i =0; i<rocks.size(); i++){
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
}