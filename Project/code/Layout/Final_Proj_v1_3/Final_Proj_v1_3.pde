void setup() {
  
  game = new Game();
  compensator();
  println();


  start_time = millis();
  //makes the size of screen
  //for android
  //size(displayWidth,displayHeight);

  //for desktop testing use
  size(320, 480, OPENGL);

  //change the orientation of the page if not it will have auto orientation
  orientation(PORTRAIT);

  // loads the font
  pressStart = loadFont("PressStartReg-48.vlw");

  //study divisor button
  studyDiv_Button = new ControlP5(this);
  studyDiv_Button.addButton("STUDY_DIVISOR")
    .setValue(1)
    .setPosition(0, 0)
    .setSize(width, 100)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(255))
    .setColorForeground(color(0, 56, 255))
    .setColorBackground(color(149, 166, 255))
    ;
  //pommodoro timer button
  pommodoroTimer = new ControlP5(this);
  pommodoroTimer.addButton("POMMODORO_TIMER")
    .setValue(1)
    .setPosition(0, 100)
    .setSize(width, 100)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(255))
    .setColorForeground(color(64, 82, 24))
    .setColorBackground(color(109, 191, 110))
    ;

  //game button
  gamebutton = new ControlP5(this);
  gamebutton.addButton("GAME")
    .setValue(1)
    .setPosition(0, 200)
    .setSize(width, 100)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(255))
    .setColorForeground(color(161, 35, 35))
    .setColorBackground(color(255, 140, 140))
    ;

  HelpButton = new ControlP5(this);
  HelpButton.addButton("HELP")
    .setValue(1)
    .setPosition(0, 300)
    .setSize(width, 100)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(255))
    .setColorForeground(color(131, 86, 131))
    .setColorBackground(color(193, 127, 192))
    ;
  allApps_back_button = new ControlP5(this);
  allApps_back_button.addButton("BACK")
    .setValue(1)
    .setPosition(10, 10)
    .setSize(40, 40)
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
    .setPosition(80, height-50)
    .setSize(width-(80*2), 40)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(255))
    .setColorForeground(color(64, 82, 24))
    .setColorBackground(color(109, 191, 110))
    ;

  pommodoro_timer_pause = new ControlP5(this);

  pommodoro_timer_pause.addButton("PAUSE")
    .setValue(1)
    .setPosition(80, height-50)
    .setSize(width-(80*2), 40)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(255))
    .setColorForeground(color(161, 35, 35))
    .setColorBackground(color(255, 140, 140))
    ;

  studyDiv_calculate = new ControlP5(this);

  studyDiv_calculate.addButton("CALCULATE")
    .setValue(1)
    .setPosition(80, height-50)
    .setSize(width-(80*2), 40)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(255))
    .setColorForeground(color(54, 126, 54))
    .setColorBackground(color(99, 209, 100))
    ;
    
    
    
    
    
    StudyDivNext = new ControlP5(this);
  StudyDivNext.addButton("next")
    .setValue(1)
    .setPosition(width-100, height - 100)
    .setSize(40, 40)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(255))
    .setColorForeground(color(161, 35, 35))
    .setColorBackground(color(255, 140, 140))
    ;
    
    
    StudyDivBack = new ControlP5(this);
  StudyDivBack.addButton("back")
    .setValue(1)
    .setPosition(50, height - 100)
    .setSize(40, 40)
    //change colour
    .setColorValue(color(255))
    .setColorActive(color(255))
    .setColorForeground(color(161, 35, 35))
    .setColorBackground(color(255, 140, 140))
    ;

  timer = new Study_Timer(24, 60, width/2, height/2, 32, color(255, 255, 255));

  timerDelay = new Study_Timer(5, 60, width/2, height/2, 32, color(0, 0, 0));
}

void draw() { 
  orientation(LANDSCAPE);

  textFont(pressStart, 48);
  if (page==0) {
    HelpButton.show();
    studyDiv_Button.show();
    pommodoroTimer.show();
    gamebutton.show();
    studyDiv_calculate.hide();
  } else {
    HelpButton.hide();
    studyDiv_Button.hide();
    pommodoroTimer.hide();
    gamebutton.hide();
  }
  //pommodoro timer buttons

  //shows the back button in study divisor page,pommodoro timer page and the game page
  if (page == 1 || page == 2 || page == 3 || page == 4) {
    allApps_back_button.show();
    if (page == 1 && studyDivPage == -1) {
      studyDiv_calculate.show();
    } else {
      studyDiv_calculate.hide();
    }
  } else {
    allApps_back_button.hide();
  }
  
  if(page == 1) {
    if(studyDivPage == 1) {
    StudyDivBack.show();
    }
    StudyDivNext.show();
     
  }
  else {
    StudyDivBack.hide();
    StudyDivNext.hide();
  
  }

  //if its on the pommodoro timer page and its in the main page it shows the start button
  if (page == 2 && pomm_page == 0) {
    pommodoro_timer_start.show();
  } else {
    pommodoro_timer_start.hide();
  }

  //If its on the pommodoro page and in the second page then shows the pause button
  //It needs this so the start and the pause button dont overlap
  if (page == 2 && pomm_page == 1) {
    pommodoro_timer_pause.show();
  } else {
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
  case 4:
    helpPage();
    break;
  default:
    _default();
    break;
  }
}