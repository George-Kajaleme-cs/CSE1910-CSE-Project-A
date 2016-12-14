void mainMenu() {
  background(232, 181, 252);
}
void studyDivisor() {
  background(166, 205, 246);

  textSize(15);
  textAlign(CENTER,CENTER);
  text("STUDY DIVISOR",180,30);
}
void pommodoroTimer() {
  //background colors
  if(pomm_page==0) {
    background(12, 71, 119);
  }
  else if(pomm_page==1) {
    background(79, 130, 64);
  }

  textSize(15);
  textAlign(CENTER,CENTER);
  text("POMMODORO TIMER",180,30);

  //different cases for when I change the timer
  //case 0 is the begin page
  //case 1 is the start page
  //case 3 is the 5 minn delay
  switch(pomm_page) {
    case 0:
    //show the timer but not playing
    case 1:
    //timer is playing
    case 3:
    //delay timer
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
