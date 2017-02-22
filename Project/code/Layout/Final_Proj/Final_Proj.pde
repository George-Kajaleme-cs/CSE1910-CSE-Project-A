void setup(){
  smooth();
  //Iphone 6 size
  size(414,736);

  //Font
  pressStart = loadFont("PressStartReg-48.vlw");

  //====================================================
  //     BUTTONS
  //...................................................

  //Intro_Page_0
  intro_page0_next_button = new Button("NEXT", 5, 600, 400, 50, 20, 1,color(175, 208, 140));
  intro_page0_skip_button = new Button("SKIP", 175, 660, 60, 15, 9, 1,color(150, 150, 150));

  //introPage1 and 2
  intro_next_button = new Button("NEXT", 5, 600-10, 400, 50, 20, 1,color(175, 208, 140));
  //also in page 3
  intro_back_button = new Button("BACK", 5, 660-10, 400, 50, 20, 1,color(177, 122, 121));
  intro_page1_skip_button = new Button("SKIP", 175, 600-30, 60, 15, 9, 1,color(150, 150, 150));

  //IntroPage 3
  intro_page3_Begin = new Button("BEGIN", 5, 600-10, 400, 50, 20, 1,color(175, 208, 140));

  //loby0pages
  mainMenu0_StudyDiv_button = new Button("Study Divisor", 5, 100, 400, 50, 20, 1,color(175, 208, 140));
  mainMenu0_Pomodoro_button = new Button("Pomodoro Timer", 5, 200, 400, 50, 20, 1,color(120, 171, 219));
  mainMenu0_Game_button = new Button("Game", 5, 300, 400, 50, 20, 0,color(255, 133, 133));

  //Pomodoro timer exit
  pommodoroTimerExit = new Button("<<<", 20, 20, 70, 50, 16, 1,color(249, 156, 41));

  //StudyDivPages
  studyDiv_Calculate = new Button("CALCULATE", 5, 650, 400, 50, 20, 1,color(138, 187, 238));

  //PomodoroTimer Pages
  pommodoroTimerStart = new Button("Begin", 5, 650, 400, 50, 20, 1,color(152, 255, 137));
  pommodoroTimerPause = new Button("Pause", 5, 650, 400, 50, 20, 1,color(255,148,137));

  //====================================================
  //     TIMERS
  //...................................................

  //Timer 25:00
  pommodoroTime = new Study_Timer(24, 60, width/2, height/2, 60,color(255, 255, 255));

  //Delay 5:00
  pommodoroTimeDelay = new Study_Timer(5, 60, width/2, height/2, 60,color(255, 255, 255));


}

void draw(){

  //====================================================
  //     INTRO PAGES
  //...................................................

  if(introPages==0) {
    introPage0();
  }
  else if(introPages==1) {
    introPage1();
  }
  else if(introPages==2) {
    introPage2();
  }
  else if(introPages==3) {
    introPage3();
  }

  //====================================================
  //     MainMenuPages
  //...................................................

  else if(mainMenuPage==0) {
    mainMenuPage0();
  }
  //====================================================
  //     Study Divisor Pages
  //...................................................

  else if(studyDiv==1) {
    studyDiv0();
  }
  //====================================================
  //     Pomodoro Timer Pages
  //...................................................
  else if(pommodoro==1) {
    pommodoro_page0();
  }
}
