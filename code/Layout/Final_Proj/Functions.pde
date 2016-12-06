void mousePressed() {

}

//---------------

// the Button class
class Button {
  String label;
  float x;
  float y;
  float w;
  float h;
  color c;
  int t;
  int a;

//---------------

  //button prameters
  Button(String labelB, float xpos, float ypos, float widthB, float heightB, int textSize, int available,color rectc) {
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
  void Draw() {
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
  boolean MouseIsOver() {
    if(a == 1) {
      if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
        return true;

      }
    }
    return false;
  }


  //---------------
}
