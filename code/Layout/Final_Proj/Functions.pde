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
  else if(lobbyPages==0) {
    if(lobby0_StudyDiv_button.MouseIsOver()) {
      lobbyPages = -1;
       studyDiv = 1;
     }
     else if(lobby0_Pomodoro_button.MouseIsOver()) {
       lobbyPages = -1;
       pomodoro = 1;
     }

  }
  else if(pomodoro==1 && pomodorotimer==0) {
    if(pomodoroTimerStart.MouseIsOver()) {
      pommodoroTime.reset();
      pomodorotimer = 1;
    }
  }
  else if(pomodoro==1 && pomodorotimer==1) {
    if(pomodoroTimerPause.MouseIsOver()) {
      pommodoroTime.pause();
      pomodorotimer = 2;
    }
  }
  else if(pomodorotimer==2) {
    if(pomodoroTimerStart.MouseIsOver()) {
      pommodoroTime.unpause();
      pomodorotimer = 2;
    }
  }
  if(pomodoro == 1 && pomodorotimer>=0) {
    if(pomodoroTimerExit.MouseIsOver()) {
      pomodoro = 0;
      pomodorotimer = 0;
      lobbyPages = 0;

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
