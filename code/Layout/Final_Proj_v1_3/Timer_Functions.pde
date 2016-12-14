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
      timerStart = millis();
      stopped = false;
      continued = true;

    }


    boolean isPaused() {
      if (stopped) return true; else return false;
     }
    boolean isZero() {
      if(scrnMin==0 && scrnSec==0) return true; else return false;
    }
  }