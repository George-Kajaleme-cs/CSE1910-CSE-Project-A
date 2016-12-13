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
