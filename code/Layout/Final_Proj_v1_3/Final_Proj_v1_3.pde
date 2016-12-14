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
    .setColorActive(color(255))
    .setColorForeground(color(0, 56, 255))
    .setColorBackground(color(149, 166, 255))
  ;

  pommodoroTimer = new ControlP5(this);
  // create a new button with name 'STUDY_DIVISOR'
  pommodoroTimer.addButton("POMMODORO_TIMER")
    .setValue(1)
    .setPosition(80,height/2-100)
    .setSize(width-(80*2),40)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(255))
    .setColorForeground(color(64, 82, 24))
    .setColorBackground(color(109, 191, 110))
  ;

  gamebutton = new ControlP5(this);
  // create a new button with name 'STUDY_DIVISOR'
  gamebutton.addButton("GAME")
    .setValue(1)
    .setPosition(80,height/2)
    .setSize(width-(80*2),40)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(255))
    .setColorForeground(color(161, 35, 35))
    .setColorBackground(color(255, 140, 140))
  ;

  pommodoro_timer_back = new ControlP5(this);
  // create a new button with name 'STUDY_DIVISOR'
  pommodoro_timer_back.addButton("BACK")
    .setValue(1)
    .setPosition(10,10)
    .setSize(40,40)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(255))
    .setColorForeground(color(161, 35, 35))
    .setColorBackground(color(255, 140, 140))
  ;

  pommodoro_timer_start = new ControlP5(this);
  // create a new button with name 'STUDY_DIVISOR'
  pommodoro_timer_start.addButton("START")
  .setValue(1)
  .setPosition(80,height-50)
  .setSize(width-(80*2),40)
  //change colour
  .setColorValue(color(255))
  .setColorActive(color(255))
  .setColorForeground(color(64, 82, 24))
  .setColorBackground(color(109, 191, 110))
  ;

  pommodoro_timer_pause = new ControlP5(this);

  pommodoro_timer_pause.addButton("PAUSE")
  .setValue(1)
  .setPosition(80,height-50)
  .setSize(width-(80*2),40)
  //change colour
  .setColorValue(color(255))
  .setColorActive(color(255))
  .setColorForeground(color(161, 35, 35))
  .setColorBackground(color(255, 140, 140))
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
  //pommodoro timer buttons

  //shows the back button in study divisor page,pommodoro timer page and the game page
  if(page == 1 || page == 2 || page == 3) {
    pommodoro_timer_back.show();
  }
  else {
    pommodoro_timer_back.hide();
  }

  //if its on the pommodoro timer page and its in the main page it shows the start button
  if(page == 2 && pomm_page == 0) {
    pommodoro_timer_start.show();
  }
  else {
    pommodoro_timer_start.hide();
  }

  //If its on the pommodoro page and in the second page then shows the pause button
  //It needs this so the start and the pause button dont overlap
  if(page == 2 && pomm_page == 1) {
    pommodoro_timer_pause.show();
  }
  else {
    pommodoro_timer_pause.hide();
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
