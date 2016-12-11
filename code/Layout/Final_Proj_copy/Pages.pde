void introductionPage() {

}
void mainMenuPage() {
  background(255, 237, 142);
}
void studyDivisorPage() {

}
void pommodoroPage() {
  background(118, 189, 254);
  color c;
  //setup for timer
  switch(pomm_setup) {
    case 0:
      st_25min.Draw();
      st_25min.pause();
      pomm_setup = 1;
      break;
  }

  if(pomm_setup==2) {
    //chane background to green
    background(80, 156, 81);

    //change the top bar to green
    c = color(42, 167, 0);
  }
  else if(pomm_setup==3) {
    //change background to red
    background(255, 129, 129);

    //change the top bar to red
    c = color(186, 91, 91);
  }
  else {
    //defalt top bar to blue
    c = color(102, 126, 190);
  }

  st_25min.Draw();
  //add a bar on top
  noStroke();
  fill(c);
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
  else if(pomm_setup==3) {
    pomm_beginTimer_button.Draw();
  }
}
void gamePage() {

}
