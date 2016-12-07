void pomodoro_page0() {
  background(120, 171, 219);
  textSize(32);
  fill(255, 255 ,255);
  text("25:00",width/2, 100);
  pomodoroTimerStart.Draw();
}
void pomodoro_page2() {
  background(120, 171, 219);
  pommodoroTime.Draw();
  pomodoroTimerPause.Draw();
  
}
void pomodoro_page3() {
  background(120, 171, 219);
  pommodoroTime.Draw();
  pomodoroTimerStart.Draw();
}