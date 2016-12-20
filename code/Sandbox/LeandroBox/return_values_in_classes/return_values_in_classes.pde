Car myCar;
int currSpeed;

void setup() {
  size(300, 300);
  myCar = new Car();
  myCar.setSpeed(50);
}

void draw() { 
  background(0);
  fill(0,255,0);
  myCar.setSpeed(mouseX / 3);
  currSpeed = myCar.getSpeed();
  text(currSpeed, 20,30);
}
class Car {
  private int speed;
 
  public void setSpeed(int s){
    speed = s;
  }
 
  public int getSpeed(){
    return speed;
  }
}