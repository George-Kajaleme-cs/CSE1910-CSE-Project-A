// Processing application that demonstrates the Button class by creating a button
// Draws a square in the window when the mouse cursor is over the button
// Writes to the Processing IDE console pane when the button is clicked
// 3 July 2015    http://startingelectronics.org
Button on_button;
Button off_button;  // the button
int clk = 1;       // number of times the button is clicked

void setup() {
  size (300, 150);
  smooth();

  // create the button object
  on_button = new Button("ON", 20, 20, 100, 50);
  off_button = new Button("OFF", 30, 20, 100, 50);
}

void draw() {
  // draw a square if the mouse curser is over the button
  if (on_button.MouseIsOver()) {
    rect(200, 20, 50, 50);
  }
  else {
    // hide the square if the mouse cursor is not over the button
    background(0);
  }
  // draw the button in the window
  on_button.Draw();
  off_button.Draw();
}

// mouse button clicked
void mousePressed()
{
  if (on_button.MouseIsOver()) {
    // print some text to the console pane if the button is clicked
    print("Clicked: ");
    println(clk++);
  }
  if (off_button.MouseIsOver()) {
    // print some text to the console pane if the button is clicked
    print("asdasd ");
    println(clk++);
  }
}

// the Button class
class Button {
  String label; // button label
  float x;      // top left corner x position
  float y;      // top left corner y position
  float w;      // width of button
  float h;      // height of button

  // constructor
  Button(String labelB, float xpos, float ypos, float widthB, float heightB) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }

  void Draw() {
    fill(218);
    stroke(141);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(0);
    text(label, x + (w / 2), y + (h / 2));
  }

  boolean MouseIsOver() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      return true;
    }
    return false;
  }
}
