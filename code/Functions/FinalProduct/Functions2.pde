//variables
String myText = "Type something";

//button creation
Button calbutton;


//---------------

//To find the max of an array

int[] a = {1,456,12,56,345,12,};

int maxArray = max(a);

//---------------

void scene0() {
  background(38, 159, 50);
  
  calbutton = new Button("Calculate", 100, 100, 100, 50, color (204, 92, 2));
  calbutton.Draw();



}



//---------------

void scene1() {
  background(130, 130, 130);
  fill(255,255,255);

}
void scene2() {
  background(130, 130, 130);
  fill(255,255,255);

}
void scene3() {
  background(130, 130, 130);
  fill(255,255,255);

}

//---------------

void calculation() {
  background(235, 143, 2);
}

//---------------

void mousePressed() {
  if (calbutton.MouseIsOver()) {
    // print some text to the console pane if the button is clicked
    print("Clicked: ");
  }
}





//---------------

//Button Class

class Button {
  String label;
  float x;    // top left corner x position
  float y;    // top left corner y position
  float w;    // width of button
  float h;    // height of button
  color c;

  Button(String labelB, float xpos, float ypos, float widthB, float heightB, color dcolor) {
    label = labelB;
    c = dcolor;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;

  }

  void Draw() {
    fill(c);
    stroke(141);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(255,255,255);
    text(label, x + (w / 2), y + (h / 2));
  }

  boolean MouseIsOver() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      background(111, 109, 1);
      return true;
    }
    return false;
  }
}
