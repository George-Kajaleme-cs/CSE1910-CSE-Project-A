
//---------------

//a variable to change the pages
int page = 0;
//---------------

void setup() {

  //---------------

  //change size and background
  size(414,736);
  background(130, 130, 130);
  calculate_button = new Button("Calculate",200, 20, 100, 50);
  studyDiv_button = new Button("Study Divisior", 20, 20, 100, 50);

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
  else if(page == 4) {
    page4();
  }
  else if(page == 5) {
    page5();
  }


  //---------------


}
