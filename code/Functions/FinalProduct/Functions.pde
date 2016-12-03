//when button is pressed activation
void mousePressed() {

  //page 0 button activation
  if(page==0) {
    if (studyDiv_button.MouseIsOver()) {
      //do stuff

    }
  }

  //page 1 button activtion
  if(page==1) {
    if (calculate_button.MouseIsOver()) {
      //do stuff
    }
  }
}

// the Button class
class Button {
  String label;
  float x;
  float y;
  float w;
  float h;

  //button prameters
  Button(String labelB, float xpos, float ypos, float widthB, float heightB) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }
  //draws the button
  void Draw() {
    fill(218);
    stroke(141);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(0);
    text(label, x + (w / 2), y + (h / 2));
  }
  //tells  if mouse is over the button
  boolean MouseIsOver() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      return true;
    }
    return false;
  }
}
