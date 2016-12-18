//variable for the trees for the background
scenery[] trees_Array = new scenery[50000];
player user;
int add_tree;
int currentpos;
int trees_Counting;
int dayOrNight = int(random(1,3));

//stopping the counter
boolean stopCounting;



float sunX;

void setup() {
  size(500,500);
  sunX = width;

  //put trees in arrays
  for(int i = 0; i < trees_Array.length; i++) {
    trees_Array[i] = new scenery();
  }
  user = new player();
  println(dayOrNight);
}
void draw() {
  //when I dont stop the counter it starts counting
  if(!stopCounting) {
    trees_Counting = millis();
  }

  //setting
  if(dayOrNight==1) {
    background(129, 219, 252);
  }
  else if(dayOrNight==2) {
    background(61, 74, 84);
  }
  noStroke();
  textSize(30);
  text(currentpos,50,50);

  //places the tree every so often when the counter is bellow
  if(trees_Counting<7800) {
    if(frameCount % 40 == 0) {
      add_tree++;
    }
  }
  //after the counter is stoped for less lag?
  else {
    stopCounting = true;
  }
  rectMode(CENTER);
  fill(255, 237, 0);
  rect(sunX,50,50,50);
  sunX = sunX - 0.1;

  rectMode(CORNER);
  fill(57, 158, 32);
  rect(0,height/2+100,width,height/2);
  //for all the trees in the array it displays and updates it
  for(int i = 0; i < add_tree; i++) {
    trees_Array[i].display();
    trees_Array[i].update();
  }
  user.display();
  user.movement();


}

//the trees scenery class
class scenery {

  //variables for the class
  int x = width+100;
  int y = height/2+100;
  float treeRand = random(100,y/2);
  int speed = 2;
  int leafColor = int(random(80,140));

  //apple variables
  int appleX = int(random(-10,-100));
  int appleY = int(random(0,y/2));
  int appleSize = int(random(5,15));
  int appleColor = int(random(80,140));
  int grass = int(random(width/2+100,width));

  scenery() {

  }

  //displays the trees
  void display() {
    rectMode(CORNER);
    //fill(143, 102, 41);
    fill(113, 98, 71);
    rect(x,y,20,-treeRand);
    fill(16, leafColor, 37);
    rectMode(CORNER);
    rect(x-50,treeRand,100,100);
    fill(appleColor, 65, 65);
    rect(appleX,appleY,appleSize,appleSize);
    fill(20, leafColor, 40);
    rect(x,grass,appleSize,appleSize);

  }

  //it updates the trees by moving it to <<
  void update() {

    if(x<-100) {
      x = width+100;
      treeRand = random(100,y/2);
      grass = int(random(width/2+100,width));
    }
    if(appleX<-100) {
      appleY = int(random(100,y/2));
      appleSize = int(random(5,15));
      appleX = int(random(width+10,width+100));//width+100;
    }
    x -= speed;
    appleX -= speed;
    currentpos++;
  }


}

class player {
  int x = width/2;
  int y = height/2+100;
  int size = 50;
  color[] colorP = {int(random(255)), int(random(255)), int(random(255))};

  player() {

  }
  void display() {
    stroke(1);
    rectMode(CENTER);
    fill(colorP[0],colorP[1],colorP[2]);
    rect(x,y,size,size);
  }
  void movement() {

  }
}
