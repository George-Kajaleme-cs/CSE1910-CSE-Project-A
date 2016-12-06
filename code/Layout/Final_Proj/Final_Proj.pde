void setup(){

  //Iphone 6 size
  size(414,736);

  //Font
  pressStart = loadFont("PressStartReg-48.vlw");

  //Buttons
  //Intro_Page_0
  intro_page0_next_button = new Button("NEXT", 5, 600, 400, 50, 20, 1,color(175, 208, 140));
  intro_page0_skip_button = new Button("SKIP", 175, 660, 60, 15, 9, 1,color(150, 150, 150));

  //introPage1
  intro_next_button = new Button("NEXT", 5, 600-10, 400, 50, 20, 1,color(175, 208, 140));
  intro_back_button = new Button("BACK", 5, 660-10, 400, 50, 20, 1,color(177, 122, 121));
  intro_page1_skip_button = new Button("SKIP", 175, 600-30, 60, 15, 9, 1,color(150, 150, 150));

}

void draw(){

  //Intro Pages
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
  else if(lobbyPages==0) {
    lobbyPage0();
  }



}
