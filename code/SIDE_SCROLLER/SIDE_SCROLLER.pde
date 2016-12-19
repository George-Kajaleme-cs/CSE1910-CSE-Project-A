//Variables for classes
Scenery[] sceneryArray = new Scenery[1000];
Sun sun;
Player player;

//for adding scenery
int addScenery;
// sceneryCount
int sceneryCount;
boolean sceneryCountStop;

int currentpos;

//randomly changes the setting
int setting = int(random(0,2));

void setup() {

  size(700,500);

  //creates a new scenery for every tree and clouds
  for(int i = 0; i < sceneryArray.length; i++) {
    sceneryArray[i] = new Scenery();
  }
  println(setting);

  sun = new Sun();
  player = new Player();

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
  if(sceneryCount < width*25) {
    if(frameCount % 40 == 0) {
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
  rect(0,height/2+100,width,height/2+100);


  //displays and updates scenery
  for(int i = 0; i < addScenery; i++) {
    sceneryArray[i].display();
    sceneryArray[i].update();
  }
  
  player.display();
  player.movement();
  
}