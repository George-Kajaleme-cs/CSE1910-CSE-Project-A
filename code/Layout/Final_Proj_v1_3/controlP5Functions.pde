//study timer button
public void STUDY_DIVISOR(int theValue) {
  if(millis()-start_time<1000){return;}
  page = 1;
}
public void POMMODORO_TIMER(int theValue) {
  if(millis()-start_time<1000){return;}
  page = 2;
}
public void BACK(int theValue) {
  if(millis()-start_time<1000){return;}
    page = 0;

}
public void START(int theValue) {
  if(millis()-start_time<1000){return;}
  timer.unpause();
  pomm_page = 1;

}
public void PAUSE(int theValue) {
  if(millis()-start_time<1000){return;}
  timer.pause();
  pomm_page = 0;
}
public void GAME(int theValue) {
  if(millis()-start_time<1000){return;}
  page = 3;
}
