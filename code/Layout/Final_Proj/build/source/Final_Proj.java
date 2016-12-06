import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Final_Proj extends PApplet {

public void setup(){

  //Iphone 6 size
  

  //Font
  pressStart = loadFont("PressStartReg-48.vlw");

  //Buttons
  //Intro_Page_0
  intro_page0_next_button = new Button("NEXT", 5, 600, 400, 50, 20, 1,color(97, 235, 2));
  intro_page0_skip_button = new Button("SKIP", 175, 660, 60, 15, 9, 1,color(150, 150, 150));

}

public void draw(){

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
public void mousePressed() {
  //Splash Screen page 0 next button
  if(introPages==0) {
    if(intro_page0_next_button.MouseIsOver()) {
      introPages = 1;
    }
    if(intro_page0_skip_button.MouseIsOver()) {
      introPages = 3;
    }
  }

}

//---------------

// the Button class
class Button {
  String label;
  float x;
  float y;
  float w;
  float h;
  int c;
  int t;
  int a;

//---------------

  //button prameters
  Button(String labelB, float xpos, float ypos, float widthB, float heightB, int textSize, int available,int rectc) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
    c = rectc;
    t = textSize;
    a = available;

  }

  //---------------

  //draws the button
  public void Draw() {
    fill(c);
    if(a == 0) {
      fill(176, 34, 34);
    }
    stroke(0);

    //---------------

    //highlight the vutton
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      fill(171, 171, 171);
    }

    //---------------

    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(255,255,255);

    //---------------

    //availability function
    if(a == 0 ) {
      textSize(t);

      //shortens the text if the box with is less than 120
      if(w<120) {
        text("NA", x + (w / 2), y + (h / 2));
      }
      else {
        text("Unavailable", x + (w / 2), y + (h / 2));
      }
    }
    if(a ==1) {
      textSize(t);
      text(label, x + (w / 2), y + (h / 2));
    }

    //---------------


  }
  //---------------

  //tells  if mouse is over the button
  public boolean MouseIsOver() {
    if(a == 1) {
      if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
        return true;

      }
    }
    return false;
  }


  //---------------
}
//Startup screen the first screen the user sees when they open the application when they first get the app
public void introPage0() {

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
public void introPage1() {

  //change the background to a yellow ccolor
  background(222, 224, 121);
}
public void introPage2() {
  background(255, 128, 128);
}
public void introPage3() {
  background(213, 140, 252);
}





public void lobbyPage0() {
  background(139, 213, 211);
}
//introPages
int introPages = 0;

//
int lobbyPages =0;

//PImage
PFont pressStart;

//Button Variables
Button intro_page0_next_button, intro_page0_skip_button;
  public void settings() {  size(414,736); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Final_Proj" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
