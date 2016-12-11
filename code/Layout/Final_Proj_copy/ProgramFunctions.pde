void mousePressed() {
  if(page==3) {
    if(pomm_back_button.MouseIsOver()) {
      println("User Clicked the Back button in Pommodoro Timer");
      page = 1;
    }
    if(pomm_setup==1) {
      if(pomm_beginTimer_button.MouseIsOver()) {
        println("User Clicked the Start button in Pommodoro Timer");
        st_25min.unpause();
        pomm_setup = 2;
      }
    }
    else if(pomm_setup==2) {
      delay(100);
      if(pomm_pauseTimer_button.MouseIsOver()) {
        println("User Clicked the Pause button in Pommodoro Timer");
        st_25min.pause();
        pomm_setup = 1;
      }
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
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(255, 255, 255);
    }

    //---------------
    rectMode(CENTER);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(255,255,255);

    //---------------

    //availability function
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(c);
    }
    if(a == 0 ) {
      textSize(t);
      //shortens the text if the box with is less than 120
      if(w<120) {
        text("NA", x, y);
      }
      else {
        text("Unavailable", x, y);
      }
    }
    if(a ==1) {

      textSize(t);
      text(label, x, y);
    }

    //---------------


  }
  //---------------

  //tells  if mouse is over the button
  boolean MouseIsOver() {
    if(a == 1) {
      if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
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