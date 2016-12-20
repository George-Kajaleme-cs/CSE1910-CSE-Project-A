class Enemy {
  int speed = 8;
  float size = 40;
  float enemyX = 500;
  float enemyY = height/2+100;
  int randColor = int(random(255));
  Enemy() {

  }

  void display() {
    fill(randColor, 0, 0);
    rect(enemyX, enemyY, size, size);
  }

  void update() {
    if(enemyX<-50) {
      enemyX = width + 50;
      enemyX = random(width+50,width+200);
    }
    enemyX -= speed;

  }


  public int getX(){
    return int(enemyX);
  }
  public int getY() {
    return int(enemyY);
  }
  public int getSize() {
    return int(size);
  }
}
