//variables

String myText = "Type something";



//---------------

//To find the max of an array

int[] a = {1,456,12,56,345,12,};

int maxArray = max(a);


//---------------

//Button Function

void drawCalculateButton(int x, int y, int w, int h, color c){

//---------------

  //changes color and size of rectangle
  fill(c);
  rect(x,y,w,h,10);

//---------------

  //White Calculate button in middle of rectangle
  fill(255,255,255);
  textSize(32);
  text("Calculate",width/3,y+35);

//---------------

  //when mouse is pressed and the mous is inside the rectangle it activates
  if(mousePressed) {

    if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
      //do stuff
       background (100,200,300);
     }
  }
}
