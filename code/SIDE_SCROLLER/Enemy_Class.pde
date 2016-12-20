class Enemy {
  int speed = 8;
  float size = 40;
  float x = 500;
  float y = height/2+100;
  int randColor = int(random(255));
  Enemy() {

  }

  void display() {
    fill(randColor, 0, 0);
    rect(x, y, size, size);
  }

  void update() {
    if(x<-50) {
      x = width + 50;
    }
    x -= speed;
  }
}
