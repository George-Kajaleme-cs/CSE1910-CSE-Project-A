void pomodoro_page0() {
  if(pomodorotimer>=1 && pomodorotimer<=3) {
    pommodoroTime.Draw();
  }

  if(pomodorotimer==0) {
    textSize(32);
    fill(255, 255 ,255);
    text("25:00",width/2, 100);
    pomodoroTimerStart.Draw();
  }
  else if(pomodorotimer==1) {
    pomodoroTimerPause.Draw();
  }
  else if(pomodorotimer==2) {
    pomodoroTimerStart.Draw();
  }
}
