class Player {
  float x = 50;
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
  
  }
  
}