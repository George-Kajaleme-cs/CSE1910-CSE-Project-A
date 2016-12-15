boolean startGame;
boolean isDemo;

//randomizes the direction of the ball
float speedX = random(3,5);
float speedY = random(3,5);
float x;
float y;
float ballSize = 10;


float paddle_speed = 2;
Paddle player_paddle;

void setup() {
  size(500,500);
  x = width/2;
  y = height/2;

  startGame = true;
  isDemo = false;
  player_paddle = new Paddle(width-50,int(y));

}
void draw() {
  //black background
  background(0);

  if(isDemo) {

  }
  else {

    player_paddle.display();
    player_paddle.moveY(mouseY);
    //ball
    fill(11, 88, 18);
    rectMode(CENTER);
    rect(x,y,ballSize,ballSize);

    rect(width-50,mouseY,10,width/5);


    //bars
    if(startGame) {
      x = x + speedX;
      y = y + speedY;
    }


  }
}

void keyPressed() {
  //only runs when the game has started
  if(startGame) {
  }
}
class Paddle {
  int x;
  int y;
  int w = 20;
  int h = 80;
  Paddle(int tx, int ty) {
    x = tx;
    y = ty;
  }

  void display() {
    rectMode(CENTER);
    fill(255);
    noStroke();
    rect(x, y, w, h);
  }

  void moveY(int ty) {
    y = ty;
    //boundries
    if (y > height-h/2) {
      y = height-h/2;
    }
    else if ( y < 0 + h/2) {
      y = h/2;
    }
  }}
