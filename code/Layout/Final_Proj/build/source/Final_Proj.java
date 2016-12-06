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
  



  test = new Button("Test", 100, 100, 50, 20, 15, 1,color (193, 89, 9));



}

public void draw(){

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
public void mousePressed() {

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
      text("Unavailable", x + (w / 2), y + (h / 2));

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
public void introPage0() {
  background(90, 122, 217);
}
public void introPage1() {

}
public void introPage2() {

}
public void introPage3() {

}
//introPages
int introPages = 0;



//Button Variables
Button test;
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
