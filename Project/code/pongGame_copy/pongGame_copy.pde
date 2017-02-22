Paddle cpu_paddle, player_paddle;

void setup() {
  size(800,800);

  cpu_paddle = new Paddle(10,height/2);
  player_paddle = new Paddle(width-10,height/2);
}
void draw() {
  background(0);
  player_paddle.display();
  cpu_paddle.display();
  showScore();

}

class Paddle {
  int x;
  float y;
  int w = 10;
  int h = 100;
  Paddle(int tx, float ty) {
    x = tx;
    y = ty;
  }

  void display() {
    rectMode(CENTER);
    fill(11, 88, 18);
    noStroke();
    rect(x, y, w, h);
  }

  void moveY(float ty) {
    y = ty;
    //boundries
    if (y > float(height-h/2)) {
      y = float(height-h/2);
    }
    else if ( y < float(0) + float(h/2)) {
      y = float(h/2);
    }
  }
}

class Ball {
  int x = width/2;
  int y = height/2;
  int r = 7;  //radius
  float speed;
  int directionX = 1;
  int directionY = 1;
  Ball() {
  }

  void display() {
    noStroke();
    fill(11, 88, 18);
    rect(x, y, r*2, r*2);
  }

  void move(float tspeed) {
    speed = tspeed;
    x += speed * directionX;
    y += speed * directionY;
    //boundries
    if ( y < r) {
      y = r;
      directionY = -directionY;
    }
    else if ( y > height-r) {
      y = height-r;
      directionY = -directionY;
    }
  }
}

void showScore() {
  fill(11, 88, 18);
  textSize(50);
  textAlign(CENTER,CENTER);
  text("0",100,50);
  text("0",width-100,50);
}
