int startMin = 24;
int startSec = 60;
int rSec = 0;
int rMin = 0;





void setup() {
  size(500,500);
  background(0);
}
void draw() {
  background(0);
  fill(255,255,255);
  int aSeconds = millis()/1000;
  int aMinutes = millis()/1000/60;

  int aScrnSecs = aSeconds - rSec;
  int aScrnMins = aMinutes - rMin;
  int bSeconds = -aScrnSecs;
  int bMinutes = -aScrnMins;

  int scrnSec = startSec + bSeconds;
  int scrnMin = startMin + bMinutes;


  if(aSeconds % 60 == 0) {
    rSec = aSeconds;
    aScrnSecs = startSec;
  }

  text(scrnMin+":"+scrnSec,100,100);


}
