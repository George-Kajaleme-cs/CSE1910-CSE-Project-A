class Scenery {

  //variables for the class
  int x = width+100;
  int y = height/2+100;
  float treeRand = random(100,y/2);
  int speed = 2;
  int leafColor = int(random(80,140));

  //apple variables
  int appleX = int(random(-20,-100));
  int appleY = int(random(0,y/2));
  int appleSize = int(random(5,15));
  int appleColor = int(random(80,140));
  int grass = int(random(width/2+100,width));

  Scenery() {

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
