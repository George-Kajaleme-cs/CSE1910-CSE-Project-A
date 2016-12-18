//Variables for classes
Scenery[] sceneryArray = new Scenery[1000];

//for adding scenery
int addScenery;
// sceneryCount
int sceneryCount;
boolean sceneryCountStop;



int currentpos;

//randomly changes the setting
int setting = int(random(0,1));

void setup() {

  size(500,500);

  //creates a new scenery for every tree and clouds
  for(int i = 0; i < sceneryArray.length; i++) {
    sceneryArray[i] = new Scenery();
  }

}
void draw() {


  if(setting == 0) {
    //change the background for daytime use
    background(124, 208, 255);
  }
  else if(setting == 1) {
    //change the background for nighttime use
  }

  //counts how many scenery is being added
  if(!sceneryCountStop) {
    sceneryCount++;
  }//adds scenery every so often
  if(sceneryCount < 1800) {
    if(frameCount % 40 == 0) {
      addScenery++;
    }
  } //stops the timer for less lag
  else{sceneryCountStop = sceneryCountStop = true}

  for(int i = 0; i < addScenery; i++) {
    sceneryArray[i].display();
    sceneryArray[i].update();
  }
}
