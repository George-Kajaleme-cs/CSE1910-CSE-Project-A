class SDtimer {

  int startMin;
  int startSec;
  int x;
  int y;
  int ts;
  color c;
  boolean deactivated;
  boolean activated;

  int aSeconds;
  int aMinutes;
  int aScrnSecs;
  int aScrnMins;
  int bSeconds;
  int bMinutes;
  int scrnSec;
  int scrnMin;
  
  int holdSec;
  int holdMin;

  int rSec = 0;
  int rMin = 0;

  //constructors
  SDtimer(int minutes, int seconds, int xpos, int ypos, int textSize,color colour) {
    startMin = minutes;
    startSec = seconds;
    x = xpos;
    y = ypos;
    ts = textSize;
    c = colour;

  }
  void Draw() {
    if(activated == true) {
      aSeconds = millis()/1000;
      aMinutes = millis()/1000/60;
      
      
      aScrnSecs = aSeconds - rSec;
      aScrnMins = aMinutes - rMin;
      bSeconds = -aScrnSecs;
      bMinutes = -aScrnMins;

      scrnSec = startSec + bSeconds;
      scrnMin = startMin + bMinutes;
    }

      if(aSeconds % 60 == 0) {
        rSec = aSeconds;
        aScrnSecs = startSec;
      }
      textSize(ts);
      fill(c);
      text(scrnMin+":"+scrnSec,x,y);
  }
  void pause() {
     activated = false;
    }
  void unpause() {
    activated = true;
  }
  void reset() {
    rSec = aSeconds;
    rMin = aMinutes;
    print("hello");
  }



}