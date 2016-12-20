class Player {
  boolean jumped;
  int jumpHeight;
  float jumpSpeed = 10;

  float x = 100;
  float y = height/2+100;
  float rectSize = 50;
  color rectColor = color(int(random(255)),int(random(255)),int(random(255)));



  Player() {

  }

  void display() {
    rectMode(CENTER);
    stroke(1);
    fill(rectColor);
    rect(x,y,rectSize,rectSize);

  }
  void movement() {
    if(keyPressed && key == ' ' ) {
        jumped = true;
    }
    if(jumped) {
      jumpHeight++;
      if(jumpHeight < 20) {
        y -= jumpSpeed;
      }
      else if(jumpHeight >= 20 && y < height/2+100){
        y += jumpSpeed;
      }
      else if(y >= height/2+100) {
        y = height/2+100;
        jumpHeight = 0;
        jumped = false;
      }
    }
  }
}
