class Enemy {
  //vars
  int speed = speedOfBackdrop;
  float size = 40;
  float enemyX = 500;
  float enemyY = height/2+100;
  int randColor = int(random(255));
  Enemy() {

  }

  void display() {
    //displays the enemy
    //fills it with a random red color from randColor
    fill(randColor, 0, 0);
    rect(enemyX, enemyY, size, size);
  }

  void update() {
    //if the enemy is off screen resets
    if(enemyX<-50) {
      enemyX = width + 50;
      enemyX = random(width+50,width+200);
    }
    enemyX -= speed;

  }

  //return values for enemy
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
