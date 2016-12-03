
//---------------

//a variable to change the pages
int page = 0;
//---------------

void setup() {

  //---------------

  //change size and background
  size(414,736);
  background(130, 130, 130);

  //---------------

  //page 0
  studyDiv_button = new Button("Study Divisior", width/7, 100, 300, 50, 20, 1, color(5, 104, 235));
  pomodoro = new Button("Pomodoro Timer", width/7, 200, 300, 50, 20, 0, color(149, 187, 2));
  game_button = new Button("Game", width/7, 300, 300, 50, 20, 0, color(9, 187, 2));

  //---------------

  //page1
  back_button = new Button("Back",5, 5, 100, 50, 20, 1,color(41, 157, 66));
  calculate_button = new Button("Calculate",width/7, 650, 300, 50, 20, 1,color(158, 124, 7));

  //---------------
}

void draw() {

  //---------------

  //change the pages when the variable page is changed
  if(page == 0) {
    page0();
  }

  //---------------

  else if(page == 1) {
    page1();
  }

  //---------------

  else if(page == 2) {
    page2();
  }

  //---------------

  else if(page == 3) {
    page3();
  }

  //---------------

  else if(page == 4) {
    page4();
  }

  //---------------

  else if(page == 5) {
    page5();
  }


  //---------------


}
