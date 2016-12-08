void pomodoro_page0() {
  //change the background for differnt pages
  if(pomodorotimer>=0 && pomodorotimer <=2) {
    background(120, 171, 219);
  }
  if(pomodorotimer>=1 && pomodorotimer <=2) {
    pommodoroTime.Draw();
  }
  if(pomodorotimer>=0 && pomodorotimer <=3) {
    fill(255,255,255);
    textSize(20);
    text("Pomodoro Timer",width/2+50,50);
    pomodoroTimerExit.Draw();
  }

  if(pomodorotimer==0) {
    textSize(60);
    fill(255, 255 ,255);
    text("25:00",width/2, height/2);
    pomodoroTimerStart.Draw();
  }
  else if(pomodorotimer==1) {
    pomodoroTimerPause.Draw();
    if(pommodoroTime.isZero()) {
      println("Timer is 0");
      if(pommodoroTime.isZero()) {
        pomodorotimer = 3;
        pommodoroTimeDelay.reset();
      }

    }

  }
  else if(pomodorotimer==2) {
    pomodoroTimerStart.Draw();
  }
  else if(pomodorotimer==3) {
    background(255, 125, 125);
    pommodoroTimeDelay.Draw();
    pommodoroTime.reset();
    pommodoroTime.pause();
    if(pommodoroTimeDelay.isZero()) {
      pommodoroTime.reset();
      pomodorotimer = 1;

    }

  }

}
