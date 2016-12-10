void introductionPage() {

}
void mainMenuPage() {
  background(255, 237, 142);
}
void studyDivisorPage() {

}
void pommodoroPage() {

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
}
void gamePage() {

}
