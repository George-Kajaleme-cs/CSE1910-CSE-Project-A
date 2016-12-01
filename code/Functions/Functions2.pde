//---------------

//To find the max of an array

int[] a = {1,456,12,56,345,12,};

int maxArray = max(a);

//---------------
void button (String t,int x, int y, int w, int h, int ts) {

  float wth = textWidth(t);
  rectMode(CENTER);
  rect(x,y,w,h);
  fill(18, 254, 3);
  textSize(ts);
  textAlign(CENTER);
  text(t,x,y,w,h);

  fill(255);
  if(mousePressed){
    if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
      //do stuffs
    }
  }





}
