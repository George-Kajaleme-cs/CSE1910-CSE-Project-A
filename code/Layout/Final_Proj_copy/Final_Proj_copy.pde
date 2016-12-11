/*
Name: Study divisor
Description:An app to help people study
By:LEandro Trinidad and George Kageleme
*/


void setup() {
  //makes the size of screen
  //for android
  //size(displayWidth,displayHeight);

  //for desktop testing use
  size(320, 480, OPENGL);

  //change the orientation of the page if not it will have auto orientation
  orientation(PORTRAIT);

  pressStart = loadFont("PressStartReg-48.vlw");

  //===============
  // BUTTONS
  //............

  //Buttons for Pommodoro Page
  pomm_back_button = new Button("EXIT", 40, 30, 60, 40, 15, 1,color(162, 162, 162));
  pomm_beginTimer_button = new Button("START", width/2, height-50, width-100, 40, 15, 1,color(143, 255, 140));
  pomm_pauseTimer_button = new Button("PAUSE", width/2, height-50, width-100, 40, 15, 1,color(255, 151, 129));
  //===============
  // Timers
  //............

  //Timers for pommodoro Page
  st_25min = new Study_Timer(24, 60, width/2, height/2, width/10,color(255,255,255));








}
void draw() {
  textFont(pressStart);

  if(page==0) {
    introductionPage();
  }
  if(page==1) {
    mainMenuPage();
  }
  if(page==2) {
    studyDivisorPage();
  }
  if(page==3) {
    pommodoroPage();
  }
  if(page==4) {
    gamePage();
  }
}
