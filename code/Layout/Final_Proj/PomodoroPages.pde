void pomodoro_page0() {
  //change the background for different pages
  if(pomodorotimer==2) {
    background(255, 125, 125);
  }
  else if(pomodorotimer==1) {
    background(148, 186, 102);
  }
  else if(pomodorotimer==0) {
    background(120, 171, 219);
  }
  else if(pomodorotimer==3) {
    background(244, 128, 246);
  }
  //draws the timer on 1 and 2
  if(pomodorotimer>=1 && pomodorotimer <=2) {
    pommodoroTime.Draw();
  }

  //puts text on all the pages
  if(pomodorotimer>=0) {
    fill(255,255,255);
    textSize(20);
    text("Pomodoro Timer",width/2+50,50);

    pomodoroTimerExit.Draw();
  }

//page 1
  if(pomodorotimer==0) {
    textSize(60);
    fill(255, 255 ,255);
    text("25:00",width/2, height/2);

    pomodoroTimerStart.Draw();
  }
  //page 2
  else if(pomodorotimer==1) {

    pomodoroTimerPause.Draw();

    if(pommodoroTime.isZero()) {
      pomodorotimer = 3;
      pommodoroTimeDelay.reset();
    }
  }
  //page 3
  else if(pomodorotimer==2) {
    pomodoroTimerStart.Draw();
  }
  //page 4
  else if(pomodorotimer==3) {

    pommodoroTimeDelay.Draw();
    pommodoroTime.reset();
    pommodoroTime.pause();

    if(pommodoroTimeDelay.isZero()) {
      pommodoroTime.reset();
      pomodorotimer = 1;
    }
  }
}
