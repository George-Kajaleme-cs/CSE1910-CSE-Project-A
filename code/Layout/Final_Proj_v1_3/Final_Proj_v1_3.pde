import controlP5.*;
ControlP5 studyDiv_Button, pommodoroTimer, gamebutton;
int c1,c2;
int start_time;

float n,n1;

void setup() {
  start_time = millis();
  //makes the size of screen
  //for android
  //size(displayWidth,displayHeight);

  //for desktop testing use
  size(320, 480,OPENGL);

  //change the orientation of the page if not it will have auto orientation
  orientation(PORTRAIT);

  // loads the font
  pressStart = loadFont("PressStartReg-48.vlw");


  studyDiv_Button = new ControlP5(this);
  // create a new button with name 'STUDY_DIVISOR'
  studyDiv_Button.addButton("STUDY_DIVISOR")
    .setValue(1)
    .setPosition(80,height/2-200)
    .setSize(width-(80*2),40)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(15, 30, 97))
    .setColorForeground(color(89, 121, 191))
    .setColorBackground(color(29, 81, 106))
  ;

  pommodoroTimer = new ControlP5(this);
  // create a new button with name 'STUDY_DIVISOR'
  pommodoroTimer.addButton("POMMODORO_TIMER")
    .setValue(1)
    .setPosition(80,height/2)
    .setSize(width-(80*2),40)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(57, 70, 8))
    .setColorForeground(color(126, 164, 84))
    .setColorBackground(color(44, 106, 67))
  ;

  gamebutton = new ControlP5(this);
  // create a new button with name 'STUDY_DIVISOR'
  gamebutton.addButton("GAME")
    .setValue(1)
    .setPosition(80,height/2)
    .setSize(width-(80*2),40)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(57, 70, 8))
    .setColorForeground(color(126, 164, 84))
    .setColorBackground(color(44, 106, 67))
  ;
}

void draw() {
  textFont(pressStart,48);
  if(page==0) {
    studyDiv_Button.show();
    pommodoroTimer.show();
    gamebutton.show();
  }
  else {
    studyDiv_Button.hide();
    pommodoroTimer.hide();
    gamebutton.hide();
  }
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
