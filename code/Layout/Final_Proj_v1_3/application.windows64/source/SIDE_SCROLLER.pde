//Variables for classes
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
int setting = int(random(0,2));

void setup() {

  size(700,500);

  //creates a new scenery for every tree and clouds
  for(int i = 0; i < sceneryArray.length; i++) {
    sceneryArray[i] = new Scenery();
  }

  //creates classes
  sun = new Sun();
  player = new Player();
  enemy = new Enemy();

}
void draw() {

  if(setting == 0) {
    //change the background for daytime use
    background(124, 208, 255);
  }
  else if(setting == 1) {
    //change the background for nighttime use
    background(47, 57, 82);
  }

  //displays the sun and moon
  sun.display();
  sun.update();

  //counts how many scenery is being added
  if(!sceneryCountStop) {
    sceneryCount = millis();
  }//adds scenery every so often
  if(sceneryCount < width*10) {
    if(frameCount % 20 == 0) {
      addScenery++;
    }

  } //stops the timer for less lag
  else{sceneryCountStop = sceneryCountStop = true;}
  //displays the ground
  rectMode(CORNER);
  //changes the color when day or night
  if(setting == 0) {
    fill(77, 142, 58);
  }
  else if(setting == 1) {
    fill(37, 74, 4);
  }
  //ground
  rect(0,height/2+100,width,height/2+100);


  //displays and updates scenery
  for(int i = 0; i < addScenery; i++) {
    sceneryArray[i].display();
    sceneryArray[i].update();
  }

  //Please wait
  if(sceneryCount < width*10) {
    fill(29, 78, 150);
    rectMode(CORNER);
    rect(0,0,width,height);

    textSize(50);
    textAlign(CENTER,CENTER);
    fill(191, 55, 5);
    text("RUN",width/2,height/2-200);
    fill(255);
    text("By Leandro and George",width/2,height/2-100);
    text("LOADING",width/2,height/2);
  }

  //menu
  if(Menu) {
    if(sceneryCount < width*10) {}
    else {
      textSize(50);
      fill(255);
      textAlign(CENTER,CENTER);
      text("TAP TO PLAY",width/2,height/2);

      if(mousePressed || keyPressed && key == ' ') {
        Menu = false;
      }
    }



  }
  //in game
  else {
    textSize(30);
    fill(255);
    textAlign(LEFT,CENTER);

    //shows the points
    text("Distance: " + playerDist,50,50);
    text("Points: " + playerPoints,50,100);
    playerDist++;

    //shows the player and enemys
    player.display();
    player.movement();
    enemy.display();
    enemy.update();
  }

}