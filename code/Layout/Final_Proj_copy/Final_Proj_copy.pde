/*
Name: Study divisor
Description:An app to help people study
By:LEandro Trinidad and George Kageleme
*/


void setup() {
  //makes the size of screen
  //for android
  //size(displayWidth,displayHeight);

  //for desktop testing use
  size(320, 480, OPENGL);

  //change the orientation of the page if not it will have auto orientation
  orientation(PORTRAIT);


  test = new Button("Hello", width/2, height/2, 100, 100, 32, 1,color(40, 230, 1));
}
void draw() {

  //made for the different pages of the app
  switch(page) {

    //The user sees when they first download the app
    case 0:
      introductionPage();

    //What the user sees when they open the app
    case 1:
      mainMenuPage();

    //The study divisor app
    case 2:
      studyDivisorPage();

    //pommodoro timer app
    case 3:
      pommodoroPage();

    case 4:
      gamePage();
  }
}
