void setup(){
  smooth();
  //Iphone 6 size
  size(414,736);

  //Font
  pressStart = loadFont("PressStartReg-48.vlw");

  //Buttons
  //Intro_Page_0
  intro_page0_next_button = new Button("NEXT", 5, 600, 400, 50, 20, 1,color(175, 208, 140));
  intro_page0_skip_button = new Button("SKIP", 175, 660, 60, 15, 9, 1,color(150, 150, 150));

  //introPage1 and 2
  intro_next_button = new Button("NEXT", 5, 600-10, 400, 50, 20, 1,color(175, 208, 140));
  intro_back_button = new Button("BACK", 5, 660-10, 400, 50, 20, 1,color(177, 122, 121));
  intro_page1_skip_button = new Button("SKIP", 175, 600-30, 60, 15, 9, 1,color(150, 150, 150));

  //IntroPage 3
  intro_page3_Begin = new Button("BEGIN", 5, 600-10, 400, 50, 20, 1,color(175, 208, 140));

  //loby0pages
  lobby0_StudyDiv_button = new Button("Study Diviser", 5, 100, 400, 50, 20, 1,color(175, 208, 140));
  lobby0_Pomodoro_button = new Button("Pomodoro Timer", 5, 200, 400, 50, 20, 1,color(120, 171, 219));
  lobby0_Game_button = new Button("Game", 5, 300, 400, 50, 20, 0,color(255, 207, 85));


  //StudyDivPages
  studyDiv_Calculate = new Button("CALCULATE", 5, 650, 400, 50, 20, 1,color(138, 187, 238));

  //PomodoroTimer Pages
  pomodoroTimerStart = new Button("Begin", 5, 650, 400, 50, 20, 1,color(152, 255, 137));
  pomodoroTimerPause = new Button("Pause", 5, 650, 400, 50, 20, 1,color(255,148,137));
  //Timer
  pommodoroTime = new SDtimer(24, 60, width/2, height/2, 60,color(255, 255, 255));

  pommodoroTimeDelay = new SDtimer(5, 60, width/2, height/2, 60,color(255, 255, 255));
  //BackButton
  pomodoroTimerExit = new Button("EXIT", 20, 20, 70, 50, 16, 1,color(249, 156, 41));

}

void draw(){

  //Intro Pages
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
  else if(lobbyPages==0) {
    lobbyPage0();
  }
  else if(studyDiv==1) {
    studyDiv0();
  }
  else if(pomodoro==1) {
    pomodoro_page0();
  }



}
