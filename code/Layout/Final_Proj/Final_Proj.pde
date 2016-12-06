void setup(){

  //Iphone 6 size
  size(414,736);



  //Font
  pressStart = loadFont("PressStartReg-48.vlw");



  //PImage








}

void draw(){

  if(introPages==0) {
    introPage0();
  }
  else if(introPages==1) {
    introPage1();
  }
  else if(introPages==2) {
    introPage2();
  }
  else if(introPages==3) {
    introPage3();
  }
  else {

  }



}
