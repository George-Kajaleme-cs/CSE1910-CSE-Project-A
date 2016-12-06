//Startup screen the first screen the user sees when they open the application when they first get the app
void introPage0() {

  //change the background to a blue color
  background(90, 122, 217);

  //show the next and skip Buttons
  //the next button sends to introPage1
  intro_page0_next_button.Draw();
  //The skip button sends to introPage3 the last page
  intro_page0_skip_button.Draw();

  //logo
  //remove stroke to make it look flat
  noStroke();
  //adds a darker colour blue for text background
  fill(94, 144, 219);
  //draws the text background rectangle
  rect(0,160,450,340);
  //changes the culor of the tex to white
  fill(255,255,255);
  //adds textfont to the pressStart font
  textFont(pressStart, 30);
  //shows the text
  text("Study Divisor",width/2,width/2);
  text("Made By\nLeandro\nand\nGeorge",width/2,400);

}
void introPage1() {

  //change the background to a yellow ccolor
  background(222, 224, 121);
  intro_next_button.Draw();
  intro_back_button.Draw();
  intro_page1_skip_button.Draw();
}
void introPage2() {
  //cange background to red color
  background(255, 128, 128);
  intro_next_button.Draw();
  intro_back_button.Draw();
  intro_page1_skip_button.Draw();
}
void introPage3() {
  background(213, 140, 252);
}
