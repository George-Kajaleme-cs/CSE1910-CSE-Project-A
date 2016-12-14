void mainMenu() {
  background(232, 181, 252);
}
void studyDivisor() {
  background(166, 205, 246);
}
void pommodoroTimer() {
  background(12, 71, 119);
  textSize(15);
  textAlign(CENTER,CENTER);
  text("POMMODORO TIMER",180,30);

  switch(pomm_page) {
    case 0:
    case 1:
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
