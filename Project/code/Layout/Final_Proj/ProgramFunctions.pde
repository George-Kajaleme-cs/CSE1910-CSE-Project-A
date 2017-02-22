void mousePressed() {
  //Splash Screen page 0 next button
  if(introPages==0) {
    if(intro_page0_next_button.MouseIsOver()) {
      introPages = 1;
    }
    if(intro_page0_skip_button.MouseIsOver()) {
      introPages = 3;
    }
  }
  //#1 and second Splash screen
  else if(introPages>=1 && introPages <=2) {
    if(intro_page1_skip_button.MouseIsOver()) {
      introPages = 3;
    }
    if(intro_next_button.MouseIsOver()) {
      introPages = introPages+1;
    }
    if(intro_back_button.MouseIsOver()) {
      introPages = introPages-1;
    }

  }
  else if(introPages==3) {
    if(intro_page3_Begin.MouseIsOver()) {
      introPages = 4;

    }
    if(intro_back_button.MouseIsOver()) {
      introPages = introPages-1;
    }
  }
  else if(mainMenuPage==0) {
    if(mainMenu0_StudyDiv_button.MouseIsOver()) {
      mainMenuPage = -1;
       studyDiv = 1;
     }
     else if(mainMenu0_Pomodoro_button.MouseIsOver()) {
       mainMenuPage = -1;
       pommodoro = 1;
     }

  }
  else if(pommodoro==1 && pommodorotimer==0) {
    if(pommodoroTimerStart.MouseIsOver()) {
      pommodoroTime.reset();
      pommodorotimer = 1;
    }
  }
  else if(pommodoro==1 && pommodorotimer==1) {
    if(pommodoroTimerPause.MouseIsOver()) {
      pommodoroTime.pause();
      pommodorotimer = 2;
    }
  }
  else if(pommodorotimer==2) {
    if(pommodoroTimerStart.MouseIsOver()) {
      pommodoroTime.unpause();
      pommodorotimer = 1;
    }
  }
  if(pommodoro == 1 && pommodorotimer>=0) {
    if(pommodoroTimerExit.MouseIsOver()) {
      pommodoro = 0;
      pommodorotimer = 0;
      mainMenuPage = 0;

    }
  }
}


//---------------

// the Button class
class Button {
  String label;
  float x;
  float y;
  float w;
  float h;
  color c;
  int t;
  int a;

//---------------

  //button prameters
  Button(String labelB, float xpos, float ypos, float widthB, float heightB, int textSize, int available,color rectc) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
    c = rectc;
    t = textSize;
    a = available;

  }

  //---------------

  //draws the button
  void Draw() {
    if(a == 0) {
      c = color(176, 34, 34);
    }
    fill(c);

    stroke(0);

    //---------------

    //highlight the vutton
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      fill(255, 255, 255);
    }

    //---------------

    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(255,255,255);

    //---------------

    //availability function
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      fill(c);
    }
    if(a == 0 ) {
      textSize(t);
      //shortens the text if the box with is less than 120
      if(w<120) {
        text("NA", x + (w / 2), y + (h / 2));
      }
      else {
        text("Unavailable", x + (w / 2), y + (h / 2));
      }
    }
    if(a ==1) {

      textSize(t);
      text(label, x + (w / 2), y + (h / 2));
    }

    //---------------


  }
  //---------------

  //tells  if mouse is over the button
  boolean MouseIsOver() {
    if(a == 1) {
      if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
        return true;

      }
    }
    return false;
  }


  //---------------
}




















class Study_Timer {
  int timerStart = 0;
  int offset;

  int mill;
  int minutes;
  int seconds;
  int hundredths;

  boolean stopped = false;
  boolean continued = false;

  int x;
  int y;
  int ts;
  color c;
  int startMin;
  int startSec;
  int scrnSec;
  int scrnMin;
  int scrn0Sec;
  int scrn0Min;

  //constructors
  Study_Timer(int minutes, int seconds, int xpos, int ypos, int textSize,color colour) {
    startMin = minutes;
    startSec = seconds;
    x = xpos;
    y = ypos;
    ts = textSize;
    c = colour;

  }
  void Draw() {
    if(!stopped) {
    	mill=(millis()-timerStart);
    	if(continued) mill += offset;

    	seconds = mill / 1000;
    	minutes = seconds / 60;
    	seconds = seconds % 60;

      scrn0Sec = -seconds;
      scrn0Min = -minutes;

      scrnMin = startMin + scrn0Min;
      scrnSec = startSec + scrn0Sec;



    }
    fill(255,255,255);
    textSize(ts);
    text(scrnMin+":"+scrnSec,x,y);
  }

  void pause() {
    stopped = true;
  }

    void unpause() {
      stopped = false;
      continued = true;
      timerStart = millis();

      offset = mill;
    }

    void reset() {
      stopped = false;
      continued = true;
      timerStart = millis();
    }


    boolean isPaused() {
      if (stopped) return true; else return false;
     }
    boolean isZero() {
      if(scrnMin==0 && scrnSec==0) return true; else return false;
    }
  }
