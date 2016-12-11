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

  //Main Menu buttons

  menu_studydiv_button = new Button("STUDY DIVISOR", width/2, height/2-100, width-20, 40, 15, 1,color(136, 185, 250));

  menu_pomm_button = new Button("POMMODORO TIMER", width/2, height/2-50, width-20, 40, 15, 1,color(147, 185, 113));

  menu_game_button = new Button("GAME", width/2, height/2, width-20, 40, 15, 0,color(136, 185, 250));



  //Buttons for Pommodoro Page
  pomm_back_button = new Button("EXIT", 40, 30, 60, 40, 15, 1,color(162, 162, 162));

  pomm_beginTimer_button = new Button("START", width/2, height-50, width-100, 40, 15, 1,color(143, 255, 140));

  pomm_pauseTimer_button = new Button("PAUSE", width/2, height-50, width-100, 40, 15, 1,color(230, 127, 127));
  pomm_end_button = new Button("END", width/2, height-100, width-100, 40, 15, 1,color(255, 151, 129));

  //===============
  // Timers
  //............

  //Timers for pommodoro Page
  st_25min = new Study_Timer(24, 60, width/2, height/2, width/10,color(255,255,255));

  //Delay timer for pommodoro timer
  st_5min = new Study_Timer(5, 60, width/2, height/2, width/10,color(255,255,255));







}
void draw() {
  if(page>=0 && page<=4) {
    st_25min.Draw();
  }

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
