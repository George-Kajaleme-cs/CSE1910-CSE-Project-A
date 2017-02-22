class Player {
  //jumping vars
  boolean jumped;
  int jumpHeight;
  float jumpSpeed = 10;

  //var for player
  float playerX = 200;
  float playerY = height/2+100;
  float rectSize = 50;
  float rectSize1 = 50;

  //randomises the color
  color rectColor = color(int(random(255)),int(random(255)),int(random(255)));

  Player() {

  }

  void display() {

    //shows the player
    rectMode(CENTER);
    stroke(1);
    fill(rectColor);
    rect(playerX,playerY,rectSize,rectSize1);

  }
  void movement() {
    //if the player is dead then resets vars
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
    //if the Up or space button is pressed the player jumps
    if(keyPressed || mousePressed) {
      if(keyCode == UP || key == ' ' || mousePressed) {
        jumped = true;
      }
      //change later
      if(keyCode == DOWN) {

      }
    }

    //if the player is off screen he is dead
    //goes back to menu
    if(playerX < 0) {
      died = true;
      Menu = true;
    }

    //if the player jumped
    if(jumped) {
      playerX = playerX + .1;

      /*adds 1 to jump height and if the jumpheight is less
      than the certan ammount goes up after goes DOWN
      then jumped is false
      */
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

    //colision detection
    //enemy behind player
    if(enemy.getX() < playerX-rectSize) {}
    //enemy infront of player
    else if(enemy.getX() > playerX+rectSize) {
      if(playerX<width/2-50) {
        playerX = playerX + .1;
      }
    }
    //enemy is belop player
    else if(enemy.getY() < playerY-rectSize) {
    }
    //enemy is above player
    //adss points
    else if(enemy.getY() > playerY+rectSize) {
      playerPoints++;
    }

    //when touches the enemy they drag him back
    else {
      playerX = playerX - 9;
      playerPoints--;
      //player dies
    }

    if(enemy2.getX() < playerX-rectSize) {}
    //enemy infront of player
    else if(enemy2.getX() > playerX+rectSize) {
      if(playerX<width/2-50) {
        playerX = playerX + .1;
      }
    }
    //enemy is belop player
    else if(enemy2.getY() < playerY-rectSize) {
    }
    //enemy is above player
    //adss points
    else if(enemy2.getY() > playerY+rectSize) {
      playerPoints++;
    }

    //when touches the enemy they drag him back
    else {
      playerX = playerX - 9;
      playerPoints--;
      //player dies
    }
  }
}
