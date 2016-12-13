import controlP5.*;
ControlP5 cp5;
int c1,c2;

float n,n1;

void setup() {

  //makes the size of screen
  //for android
  //size(displayWidth,displayHeight);

  //for desktop testing use
  size(320, 480,OPENGL);

  //change the orientation of the page if not it will have auto orientation
  orientation(PORTRAIT);

  // loads the font
  pressStart = loadFont("PressStartReg-48.vlw");


  cp5 = new ControlP5(this);

  // create a new button with name 'buttonA'
  cp5.addButton("STUDY_DIVISOR")
     .setValue(0)
     .setPosition(100,100)
     .setSize(width-100-100,50)
     .textSize(255)
     //change colour
     .setColorValue(color(255))
     .setColorActive(color(157, 91, 2))
     .setColorForeground(color(155))
     .setColorBackground(color(255, 0, 0))
     ;
}

void draw() {
  textFont(pressStart,48);
  switch(page) {
    //Main Menu Page
    case 0:
      mainMenu();
      break;

    //Study Divisor Page
    case 1:
      studyDivisor();
      break;
    //Pommodoro Timer Page
    case 2:
      pommodoroTimer();
      break;
    //Game Page
    case 3:
      game();
      break;
    default:
      _default();
      break;
  }

}
