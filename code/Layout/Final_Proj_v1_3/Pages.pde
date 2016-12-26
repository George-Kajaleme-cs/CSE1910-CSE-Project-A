void mainMenu() {
  background(232, 181, 252);
}
void studyDivisor() {
  //displays the ammount
  Value_Display();


  background(166, 205, 246);
  //setup page
  if(studyDivPage == -1) {

  }
  else if(studyDivPage == 0) {

  }
  else if(studyDivPage == 1) {

  }
  else if(studyDivPage == 2) {

  }
  else if(studyDivPage == 3) {

  }

  textSize(15);
  textAlign(CENTER,CENTER);
  text("STUDY DIVISOR",180,30);

  Value_Display();

}
void pommodoroTimer() {

  //setup
  if(pomm_page==-1) {
    timer.reset();
    timer.Draw();
    timer.pause();
    timerDelay.reset();
    timerDelay.Draw();
    timerDelay.pause();
    pomm_page = 0;
    background(12, 71, 119);
  }
  //background colors
  else if(pomm_page==0) {
    background(12, 71, 119);
  }
  else if(pomm_page==1) {
    background(79, 130, 64);
  }
  else if(pomm_page==2) {
    background(103, 104, 231);
  }

  //shows the pommodoro timer text on top
  textSize(15);
  textAlign(CENTER,CENTER);
  text("POMMODORO TIMER",180,30);

  //draws the 25 min timer
  if(pomm_page==0 || pomm_page ==1) {
    timer.Draw();
    if(timer.isZero()) {
      timerDelay.reset();
      pomm_page = 2;
    }
  }
  else {
    timerDelay.Draw();
    if(timerDelay.isZero()) {
      timer.reset();
      pomm_page = 1;
    }
  }

}
void game() {
  background(84, 143, 108);
}
void _default() {
  background(255, 255, 255);
  textAlign(CENTER,CENTER);
  fill(222, 51, 8);
  text("404",width/2,height/2-100);
  textSize(15);
  text("Page Not Available",width/2,height/2);
}