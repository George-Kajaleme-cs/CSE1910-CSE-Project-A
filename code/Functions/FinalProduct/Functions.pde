//when button is pressed activation
void mousePressed() {

  //page 0 button activation
  if(page==0) {
    if (studyDiv_button.MouseIsOver()) {
      page = 1;

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
  color c;
  int t;

  //button prameters
  Button(String labelB, float xpos, float ypos, float widthB, float heightB, int textSize,color rectc) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
    c = rectc;
    t = textSize;

  }
  //draws the button
  void Draw() {
    fill(c);
    stroke(141);
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      fill(171, 171, 171);
    }
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(255,255,255);
    textSize(t);
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
