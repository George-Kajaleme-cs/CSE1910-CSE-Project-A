class Player {
  boolean jumped;
  int jumpHeight;
  float jumpSpeed = 10;
  boolean isLoop;

  float playerX = 200;
  float playerY = height/2+100;
  float rectSize = 50;
  float rectSize1 = 50;
  color rectColor = color(int(random(255)),int(random(255)),int(random(255)));



  Player() {

  }

  void display() {
    rectMode(CENTER);
    stroke(1);
    fill(rectColor);
    rect(playerX,playerY,rectSize,rectSize1);

  }
  void movement() {
    if(died) {
      jumpSpeed = 10;
      playerX = 200;
      playerY = height/2+100;
      rectSize = 50;
      rectSize1 = 50;
      rectColor = color(int(random(255)),int(random(255)),int(random(255)));
      playerDist = 0;
      playerPoints = 0;
      died = false;
    }
    if(keyPressed) {
      if(keyCode == UP || key == ' ') {
        jumped = true;
      }
      //change later
      if(keyCode == DOWN) {

      }
    }

    if(playerX < 0) {
      died = true;
      Menu = true;
    }

    if(jumped) {
      jumpHeight++;
      if(jumpHeight < 20) {
        playerY -= jumpSpeed;
      }
      else if(jumpHeight >= 20 && playerY < height/2+100){
        playerY += jumpSpeed;
      }
      else if(playerY >= height/2+100) {
        playerY = height/2+100;
        jumpHeight = 0;
        jumped = false;
      }
    }

    //enemy.getX()
    //x < b.x && myX2 < b.x
    if(enemy.getX() < playerX-rectSize) {}
    else if(enemy.getX() > playerX+rectSize) {
      if(playerX<width/2-50) {
        playerX = playerX + .1;
      }
    }
    else if(enemy.getY() < playerY-rectSize) {
    }
    else if(enemy.getY() > playerY+rectSize) {
      playerPoints++;
    }

    else {
      playerX = playerX - 9;
      //player dies
    }
  }
}
