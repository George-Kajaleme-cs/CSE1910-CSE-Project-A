//Game Variables

Scenery[] sceneryArray = new Scenery[1000];
Sun sun;
Player player;
Enemy enemy;
boolean Menu = true;
boolean died;
int speedOfBackdrop = 5;

//varialbes for screen pints
int playerDist;
int playerPoints;

//for adding scenery
int addScenery;
// sceneryCount
int sceneryCount;
boolean sceneryCountStop;

//randomly changes the setting
int setting = int(random(0, 2));

class Game {

  Game() {
  }

  void setup() {
    
    orientation(LANDSCAPE);

    //creates a new scenery for every tree and clouds
    for (int i = 0; i < sceneryArray.length; i++) {
      sceneryArray[i] = new Scenery();
    }

    //creates classes
    sun = new Sun();
    player = new Player();
    enemy = new Enemy();
  }

  void draw() {

    if (setting == 0) {
      //change the background for daytime use
      background(124, 208, 255);
    } else if (setting == 1) {
      //change the background for nighttime use
      background(47, 57, 82);
    }

    //displays the sun and moon
    sun.display();
    sun.update();

    //counts how many scenery is being added
    if (!sceneryCountStop) {
      sceneryCount = millis();
    }//adds scenery every so often
    if (sceneryCount < width*10) {
      if (frameCount % 20 == 0) {
        addScenery++;
      }
    } //stops the timer for less lag
    else {
      sceneryCountStop = sceneryCountStop = true;
    }
    //displays the ground
    rectMode(CORNER);
    //changes the color when day or night
    if (setting == 0) {
      fill(77, 142, 58);
    } else if (setting == 1) {
      fill(37, 74, 4);
    }
    //ground
    rect(0, height/2+100, width, height/2+100);


    //displays and updates scenery
    for (int i = 0; i < addScenery; i++) {
      sceneryArray[i].display();
      sceneryArray[i].update();
    }

    //Please wait
    if (sceneryCount < width*10) {
      fill(29, 78, 150);
      rectMode(CORNER);
      rect(0, 0, width, height);

      textSize(50);
      textAlign(CENTER, CENTER);
      fill(191, 55, 5);
      text("RUN", width/2, height/2-200);
      fill(255);
      text("By Leandro and George", width/2, height/2-100);
      text("LOADING", width/2, height/2);
    }

    //menu
    if (Menu) {
      if (sceneryCount < width*10) {
      } else {
        textSize(50);
        fill(255);
        textAlign(CENTER, CENTER);
        text("TAP TO PLAY", width/2, height/2);

        if (mousePressed || keyPressed && key == ' ') {
          Menu = false;
        }
      }
    }
    //in game
    else {
      textSize(30);
      fill(255);
      textAlign(LEFT, CENTER);

      //shows the points
      text("Distance: " + playerDist, 50, 50);
      text("Points: " + playerPoints, 50, 100);
      playerDist++;

      //shows the player and enemys
      player.display();
      player.movement();
      enemy.display();
      enemy.update();
    }
  }
}


class Enemy {
  //vars
  int speed = speedOfBackdrop;
  float size = 40;
  float enemyX = 500;
  float enemyY = height/2+100;
  int randColor = int(random(255));
  int GameWait = 0;


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
    if (enemyX<-50) {
      enemyX = width + 50;
      enemyX = random(width+50, width+200);
    }
    enemyX -= speed;
  }

  //return values for enemy
  public int getX() {
    return int(enemyX);
  }
  public int getY() {
    return int(enemyY);
  }
  public int getSize() {
    return int(size);
  }
}

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
  color rectColor = color(int(random(255)), int(random(255)), int(random(255)));

  Player() {
  }

  void display() {

    //shows the player
    rectMode(CENTER);
    stroke(1);
    fill(rectColor);
    rect(playerX, playerY, rectSize, rectSize1);
  }
  void movement() {
    //if the player is dead then resets vars
    if (died) {
      jumpSpeed = 10;
      playerX = 200;
      playerY = height/2+100;
      rectSize = 50;
      rectSize1 = 50;
      rectColor = color(int(random(255)), int(random(255)), int(random(255)));
      playerDist = 0;
      playerPoints = 0;
      died = false;
    }
    //if the Up or space button is pressed the player jumps
    if (keyPressed || mousePressed) {
      if (keyCode == UP || key == ' ' || mousePressed) {
        jumped = true;
      }
      //change later
      if (keyCode == DOWN) {
      }
    }

    //if the player is off screen he is dead
    //goes back to menu
    if (playerX < 0) {
      died = true;
      Menu = true;
    }

    //if the player jumped
    if (jumped) {
      playerX = playerX + .1;

      /*adds 1 to jump height and if the jumpheight is less
       than the certan ammount goes up after goes DOWN
       then jumped is false
       */
      jumpHeight++;
      if (jumpHeight < 20) {
        playerY -= jumpSpeed;
      } else if (jumpHeight >= 20 && playerY < height/2+100) {
        playerY += jumpSpeed;
      } else if (playerY >= height/2+100) {
        playerY = height/2+100;
        jumpHeight = 0;
        jumped = false;
      }
    }

    //enemy.getX()
    //x < b.x && myX2 < b.x

    //colision detection
    //enemy behind player
    if (enemy.getX() < playerX-rectSize) {
    }
    //enemy infront of player
    else if (enemy.getX() > playerX+rectSize) {
      if (playerX<width/2-50) {
        playerX = playerX + .1;
      }
    }
    //enemy is belop player
    else if (enemy.getY() < playerY-rectSize) {
    }
    //enemy is above player
    //adss points
    else if (enemy.getY() > playerY+rectSize) {
      playerPoints++;
    }

    //when touches the enemy they drag him back
    else {
      playerX = playerX - 9;
      //player dies
    }
  }
}

class Scenery {

  //variables for the class
  int x = width+50;
  int y = height/2+100;
  float treeRand = random(100, y/2);
  int speed = speedOfBackdrop;
  int leafColor = int(random(80, 140));
  int leafSize = 130;

  //apple variables
  int appleX = int(random(-20, -100));
  int appleY = int(random(0, y/2));
  int appleSize = int(random(5, 15));
  int appleColor = int(random(80, 140));


  int grassX = width+100;
  int grass = int(random(width/2+100, width));
  int grassSize = int(random(5, 15));
  int grassMuch = int(random(1, 10));
  int grasscolor = int(random(90, 190));

  //clouds variables
  float cloudX = -100;
  float cloudY;
  float cloudSize = random(50, 70);
  float cloudSpeed = .5;

  Scenery() {
  }

  //displays the trees
  void display() {
    //clouds
    noStroke();
    if (setting == 0) {
      fill(210, 210, 210);
    } else if (setting == 1) {
      fill(85, 85, 85);
    }
    rect(cloudX, cloudY, cloudSize, cloudSize);

    //trunks
    rectMode(CORNER);
    fill(113, 98, 71);
    rect(x, y, 20, -treeRand);

    //leafs
    fill(16, leafColor, 37);
    rectMode(CORNER);
    rect(x-50, treeRand, leafSize, leafSize);

    //apples
    fill(appleColor, 65, 65);
    rect(appleX, appleY, appleSize, appleSize);
    fill(20, leafColor, 40);

    fill(20, grasscolor, 40);
    rectMode(CENTER);
    //grass
    rect(grassX+grassMuch, grass, grassSize, grassSize);
    rect(grassX+grassMuch, grass, grassSize, grassSize);
    rect(grassX+grassMuch, grass, grassSize, grassSize);
    rect(grassX+grassMuch, grass, grassSize, grassSize);
  }

  //it updates the trees by moving it to <<
  void update() {

    //randomises clouds and moves it back to the other end
    //all of the if statements does this
    if (cloudX<-150) {
      cloudSize = random(50, 70);
      cloudX = int(random(width+40, width+100));
      cloudY = random(0, 150);
    }

    if (x<-100) {
      x = width+100;
      x = int(random(width+100, width+100+5));
      treeRand = random(100, y/2);
      leafColor = int(random(80, 140));
    }
    if (appleX<-100) {
      appleY = int(random(150, y/2));
      appleSize = int(random(5, 15));
      appleX = int(random(width+10, width+100));//width+100;
    }
    if (grassX < -10) {
      grassX = width+100;
      grass = int(random(height/2+120, height-20));
      grassSize = int(random(5, 15));
      grassMuch = int(random(1, 10));
    }
    //moves the  scenery to the left to make it look like the player is moving
    grassX -= speed;
    cloudX -= cloudSpeed;
    appleX -= speed;
    x -= speed;
  }
}

class Sun {
  //variables
  float x = width;
  float y = 100;
  float sunSize = 50;
  float speed = .1;

  Sun() {
  }
  void display() {
    //if its morning
    if (setting == 0) {
      fill(255, 250, 55);
    }
    //if its night time
    else if (setting == 1) {
      fill(111, 111, 111);
    }
    //displays the sun or the moon
    noStroke();
    rectMode(CENTER);
    rect(x, y, sunSize, sunSize);
  }
  void update() {
    //moves the sun to the left
    x-=speed;

    //daytime
    if (setting == 0) {
      //if the sun is off screen sets to night
      if (x<0-sunSize) {
        setting = 1;
        x = width + sunSize;
      }
    }
    //if the moon is off screen sets to day
    else if (setting == 1) {
      if (x<0-sunSize) {
        setting = 0;
        x = width + sunSize;
      }
    }
  }
}