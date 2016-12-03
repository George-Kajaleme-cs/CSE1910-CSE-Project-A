
//---------------

//a variable to change the screens
int page = 0;

//randomly changes the background color
color[] randomC = {color(56,78,1),
                   color(71, 136, 6),
                   color(129, 48, 1),
                   color(193, 53, 6),
                   color(12, 170, 3),
                   color(147, 177, 1),
                   color(212, 55, 2),
                   color(184, 144, 4),
                   color(122, 21, 3)};

//---------------

void setup() {

  //---------------

  //change size and background
  size(414,736);
  background(130, 130, 130);

  //---------------


}

void draw() {

  //---------------

  //change the pages when the variable page is changed
  if(page == 0) {
    page0();
  }
  else if(page == 1) {
    page1();
  }
  else if(page == 2) {
    page2();
  }
  else if(page == 3) {
    page3();
  }


  //---------------


}
