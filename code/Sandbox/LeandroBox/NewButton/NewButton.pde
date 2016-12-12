/**
 * ControlP5 Button
 * this example shows how to create buttons with controlP5.
 * 
 * find a list of public methods available for the Button Controller 
 * at the bottom of this sketch's source code
 *
 * by Andreas Schlegel, 2012
 * www.sojamo.de/libraries/controlp5
 *
 */
 
import controlP5.*;

ControlP5 cp5;

int myColor = color(0);

int c1,c2;

float n,n1;


void setup() {
  size(1000,1000);
  noStroke();
  cp5 = new ControlP5(this);
  
  // create a new button with name 'buttonA'
  cp5.addButton("STUDY DIVISOR")
     .setValue(0)
     .setPosition(100,100)
     .setSize(width-100-100,50)
     ;
  

}

void draw() {
  background(myColor);
}

public void controlEvent(ControlEvent theEvent) {
  println(theEvent.getController().getName());
  n = 0;
}

// function colorA will receive changes from 
// controller with name colorA
public void colorA(int theValue) {
  println("a button event from colorA: "+theValue);
  
}