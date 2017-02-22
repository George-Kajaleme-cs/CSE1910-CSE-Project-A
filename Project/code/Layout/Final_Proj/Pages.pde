//====================================================
//
//
//
//         INTRO PAGES
//
//
//
//...................................................

//Startup screen the first screen the user sees when they open the application when they first get the app
void introPage0() {

  //change the background to a blue color
  background(90, 122, 217);

  //show the next and skip Buttons
  //the next button sends to introPage1
  intro_page0_next_button.Draw();
  //The skip button sends to introPage3 the last page
  intro_page0_skip_button.Draw();

  //logo
  //remove stroke to make it look flat
  noStroke();
  //adds a darker colour blue for text background
  fill(94, 144, 219);
  //draws the text background rectangle
  rect(0,160,450,340);
  //changes the culor of the tex to white
  fill(255,255,255);
  //adds textfont to the pressStart font
  textFont(pressStart, 30);
  //shows the text
  text("Study Divisor",width/2,width/2);
  text("Made By\nLeandro\nand\nGeorge",width/2,400);
}
void introPage1() {

  //change the background to a yellow ccolor
  background(222, 224, 121);
  intro_next_button.Draw();
  intro_back_button.Draw();
  intro_page1_skip_button.Draw();
}
void introPage2() {
  //cange background to red color
  background(255, 128, 128);
  intro_next_button.Draw();
  intro_back_button.Draw();
  intro_page1_skip_button.Draw();
}
void introPage3() {
  background(213, 140, 252);
  intro_page3_Begin.Draw();
  intro_back_button.Draw();
}

//====================================================
//
//
//
//         MAIN MENU PAGES
//
//
//
//...................................................


//mainMenu page the pages the user sees when they open the app the Intro Pages are there when they open it for the first time
void mainMenuPage0() {
  background(1, 203, 203);
  mainMenu0_StudyDiv_button.Draw();
  mainMenu0_Pomodoro_button.Draw();
  mainMenu0_Game_button.Draw();
}


//====================================================
//
//
//
//         STUDY DIVIDER PAGES
//
//
//
//...................................................


void studyDiv0() {
  background(175, 208, 140);
  studyDiv_Calculate.Draw();

  fill(255,255,255);
  textAlign(CENTER,CENTER);
  textSize(30);
  text("STUDY DIVISOR",width/2,20);
}


//====================================================
//
//
//
//         POMODORO PAGES
//
//
//
//...................................................



void pommodoro_page0() {
  //====================================================
  //change the background for different pages
  //...................................................

  if(pommodorotimer==2) {
    background(255, 125, 125);
  }
  else if(pommodorotimer==1) {
    background(148, 186, 102);
  }
  else if(pommodorotimer==0) {
    background(120, 171, 219);
  }
  else if(pommodorotimer==3) {
    background(244, 128, 246);
  }

  //====================================================
  //Draws the timer
  //...................................................

  //draws the timer on 1 and 2
  if(pommodorotimer>=1 && pommodorotimer <=2) {
    pommodoroTime.Draw();
  }

  //====================================================
  //adds text
  //...................................................

  //puts text on all the pages
  if(pommodorotimer>=0) {
    fill(255,255,255);
    textSize(20);
    text("Pomodoro Timer",width/2+50,50);

    pommodoroTimerExit.Draw();
  }

  //====================================================
  //pages
  //...................................................
//page 1
  if(pommodorotimer==0) {
    textSize(60);
    fill(255, 255 ,255);
    text("25:00",width/2, height/2);

    pommodoroTimerStart.Draw();
  }
  //page 2
  else if(pommodorotimer==1) {

    pommodoroTimerPause.Draw();

    if(pommodoroTime.isZero()) {
      pommodorotimer = 3;
      pommodoroTimeDelay.reset();
    }
  }
  //page 3
  else if(pommodorotimer==2) {
    pommodoroTimerStart.Draw();
  }
  //page 4
  else if(pommodorotimer==3) {

    pommodoroTimeDelay.Draw();
    pommodoroTime.reset();
    pommodoroTime.pause();

    if(pommodoroTimeDelay.isZero()) {
      pommodoroTime.reset();
      pommodorotimer = 1;
    }
  }
}
