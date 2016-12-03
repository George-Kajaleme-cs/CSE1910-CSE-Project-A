//Button Function

void button (String t, int ts,int x, int y, int w, int h, int cner) {
  
  rect(x,y,w,h,cner);
  fill(18, 254, 3);
  textSize(ts);
  textAlign(CENTER);
  text(t,x,y,w,h);
  fill(#6679A0);
  if(mousePressed){
    if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
      //do stuffs
      fill(0);
      
    }
  }
}

  //sets of values that have no zero spots for their amount of options
void setup() {
  size(500,500);
  


}
  
  void draw() {
  println(Mh);
  
  
  
  
  
  
  