
//---------------

//a variable to change the screens
int scene = 0;

//---------------

void setup() {

  //---------------

  //change size and background
  size(414,736);
  background(130, 130, 130);

  //---------------


}

void draw() {

  //---------------

  //change the scenes when the variable scene is changed
  if(scene == 0) {
    scene0();
  }
  else if(scene == 1) {
    scene1();
  }
  else if(scene == 2) {
    scene2();
  }
  else if(scene == 3) {
    scene3();
  }


  //---------------


}
