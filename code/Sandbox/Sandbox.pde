//// Moving objects and animation
//variables
// x and y coordinates
float[] t = {5,1,3,40};
float y = 15;
float x = 20;
// Proper use of length must do this with all variables for app
float m = t.length;

void setup(){
  size(800,500);
  background(0);
  
  ////// Learned how to print out the amount of values in the my array
  println(m);


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

////Super Important for printing the inteface ???????????????????????????????????????????????
////==========================================================================================

y=75;

for(int i = 0; i < Mh; i = i+1){ 
    text( Ha[i],45, y);
    
    

   //Increases the value for the lists with only three items
    if(i<Mh) {
      
      
      text(Ha[i],420,y);
    }
    //Adds 74 to each number on the list to move it the same interval
    y=y+25;
    textSize(15);
  }
  
 ////==========================================================================================