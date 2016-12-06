void setup(){

  //Iphone 6 size
  size(414,736);



  test = new Button("Test", 100, 100, 50, 20, 15, 1,color (193, 89, 9));



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
