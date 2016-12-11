void introductionPage() {

}
void mainMenuPage() {
  background(255, 237, 142);
}
void studyDivisorPage() {

}
void pommodoroPage() {
  //setup for timer
  switch(pomm_setup) {
    case 0:
    st_25min.Draw();
    st_25min.pause();
    pomm_setup = 1;
    break;
  }
  //blue background
  background(118, 189, 254);
  st_25min.Draw();
  //add a bar on top
  noStroke();
  fill(85, 115, 159);
  rect(width/2,30,width,60);

  //add text on bar on top
  fill(255, 255, 255);
  textSize(width/21);
  text("POMMODORO TIMER",width/2+40,30);

  //show the back button
  pomm_back_button.Draw();

  if(pomm_setup==1) {
    pomm_beginTimer_button.Draw();
  }
  else if(pomm_setup==2) {
    pomm_pauseTimer_button.Draw();
  }
}
void gamePage() {

}
