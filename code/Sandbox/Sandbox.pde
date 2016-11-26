//// Moving objects and animation
//variables
// x and y coordinates
float y = 15;
float x = 20;

void setup(){
  size(800,500);
  background(0);



}
//How to create a function then apply it below in draw
void aniamation(){
  background(0);
  fill(255);
  rect(x,y,10,10);
  y=y+5;
  x=x+5;
  
  if( y >= width){
    y = 0;
    x = 0;
    fill(125,44,22);
  }
  if(x >= height){
  x = 0;
  y = 0;
  fill( 125,22,1);
  
  }
  fill(45,26,22);

}

void draw(){
  
  aniamation();
}

////--------------------