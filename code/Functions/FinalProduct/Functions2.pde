//---------------

//variables
//null

//---------------

//button creation
Button calbutton;

//---------------

//To find the max of an array

int[] a = {1,456,12,56,345,12,};

int maxArray = max(a);

//---------------

//start screen | the screen they see when they open it for the first time
void scene0() {
  background(38, 159, 50);

  calbutton = new Button("Calculate", 100, 100, 100, 50, color (204, 92, 2));
  calbutton.Draw();

}

//---------------

//scene1
void scene1() {
  background(130, 130, 130);
  fill(255,255,255);

}

//---------------

//scene2
void scene2() {
  background(130, 130, 130);
  fill(255,255,255);

}

//---------------

//scene3
void scene3() {
  background(130, 130, 130);
  fill(255,255,255);

}

//---------------

//calculation
void calculation() {
  background(235, 143, 2);
}

//---------------

//Button

//when pressed activates it
void mousePressed() {

  //---------------

  //Calculate button activation
  if (calbutton.MouseIsOver()) {
    // print some text to the console pane if the button is clicked
    print("Clicked: ");
  }

  //---------------
}

//button class
class Button {
  String label;
  float x;    // top left corner x position
  float y;    // top left corner y position
  float w;    // width of button
  float h;    // height of button
  color c;

  //---------------

  //button parameters
  Button(String labelB, float xpos, float ypos, float widthB, float heightB, color dcolor) {
    label = labelB;
    c = dcolor;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;

  }

  //---------------

  //draws the button
  void Draw() {
    fill(c);
    stroke(141);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(255,255,255);
    text(label, x + (w / 2), y + (h / 2));
  }

  //---------------

  //activates when mouse is over the button
  boolean MouseIsOver() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      return true;
    }
    return false;
  }
}
