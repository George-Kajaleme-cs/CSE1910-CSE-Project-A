float px,py,vx,vy,ax,ay=1;

void r(int j){
  rect(px+j,py-20,20,20);
}
void setup(){
  size(220,220);
  px=py=110;
  fill(255);
  noStroke();
}
void draw(){
  background(0);
  rect(0,height-10,width,10);
  vy+=ay;
  py+=vy;
  py=a()?py:height-10;
  px+=vx+width;px%=width;r(-width);
  r(0);
  r(width);
}

boolean a(){
  return(py<height-10);
}
void mousePressed(){
  if(!a())vy=-19;
}
void keyPressed(){
  b(3);
}void keyReleased(){
  b(0);
}
void b(int d){
  if(key==CODED){
    if(keyCode==RIGHT)vx=d;
    if(keyCode==LEFT)vx=-d;
  }
}