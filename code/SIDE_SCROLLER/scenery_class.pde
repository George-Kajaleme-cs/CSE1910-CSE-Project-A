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

  //clouds variables
  float cloudX = -100;
  float cloudY;
  float cloudSize = random(50,70);
  float cloudSpeed = .5;

  Scenery() {

  }

  //displays the trees
  void display() {
    //clouds
    noStroke();
    if(setting == 0) {
      fill(210, 210, 210);
    }
    else if(setting == 1) {
      fill(85, 85, 85);
    }
    ellipse(cloudX,cloudY,cloudSize,cloudSize);

    //trunks
    rectMode(CORNER);
    fill(113, 98, 71);
    rect(x,y,20,-treeRand);

    //leafs
    fill(16, leafColor, 37);
    rectMode(CORNER);
    rect(x-50,treeRand,100,100);

    //apples
    fill(appleColor, 65, 65);
    rect(appleX,appleY,appleSize,appleSize);
    fill(20, leafColor, 40);

    fill(20, leafColor, 40);
    //grass
    rect(x,grass,appleSize,appleSize);

  }

  //it updates the trees by moving it to <<
  void update() {

    if(cloudX<-150) {
      cloudSize = random(50,70);
      cloudX = width + 100;
      cloudY = random(0,100);
    }

    if(x<-100) {
      x = width+100;
      x = int(random(width+100,width+100+5));
      treeRand = random(100,y/2);
      grass = int(random(width/2+100,width));
    }
    if(appleX<-100) {
      appleY = int(random(100,y/2));
      appleSize = int(random(5,15));
      appleX = int(random(width+10,width+100));//width+100;
    }
    cloudX -= cloudSpeed;
    appleX -= speed;
    x -= speed;
    currentpos++;
  }


}

class Sun {
  float x = width;
  float y = 100;
  float sunSize = 50;
  float speed = .1;

  Sun() {

  }
  void display() {
    if(setting == 0) {
      fill(255, 250, 55);
    }
    else if(setting == 1) {
      fill(111, 111, 111);
    }
    noStroke();
    rectMode(CENTER);
    rect(x,y,sunSize,sunSize);


  }
  void update() {
    x-=speed;

    if(setting == 0) {
      if(x<0-sunSize) {
        setting = 1;
        x = width + sunSize;
      }
    }
    else if(setting == 1) {
      if(x<0-sunSize) {
        setting = 0;
        x = width + sunSize;
      }
    }


  }
}
