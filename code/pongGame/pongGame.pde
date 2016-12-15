boolean startGame;
boolean isDemo;

//randomizes the speed of the ball
int speedX = int(random(3,5));
int speedY = int(random(3,5));
float x;
float y;
float ballSize = 10;

int player_one_score;
int player_two_Score;
boolean died;

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
  fill(11, 88, 18);
  textSize(32);
  textAlign(CENTER,CENTER);
  text(player_two_Score,width/2/2,50);
  text(player_one_score,width/2^2,50);

  if(isDemo) {

  }
  else {
    player_paddle.display();
    fill(11, 88, 18);
    rectMode(CENTER);
    rect(x,y,ballSize,ballSize);
    if(startGame) {
    player_paddle.moveY(mouseY);
    //ball




    //bars

      x = x + speedX;
      y = y + speedY;
    }

    //bounces off when hitting the bar
    if( x > width-50 && x < width - 10 && y > mouseY-50 && y < mouseY+50 ) {
      speedX = speedX * -1;
      x = x + speedX;
    }

    if(died) {
      fill(255);
      textSize(32);
      textAlign(CENTER,CENTER);
      text("Click Mouse to start",width/2,height/2);
      if(mousePressed) {
        startGame = true;
        died = false;

      }

    }

  }


  if(y > height || y < 0) {
    speedY = speedY * -1;
    y = y + speedY;
  }

  //left side wall>>
  if(x > width) {
    player_two_Score ++;
    died();

  }
  //right side wall<<
  else if(x<0) {
    player_one_score ++;
    died();

  }
}

void died() {
  startGame = false;
  died = true;
  x = width/2;
  y = height/2;

  speedX = int(random(3,5));
  speedY = int(random(3,5));

}

void keyPressed() {
  //only runs when the game has started
  if(startGame) {
  }
}
class Paddle {
  int x;
  int y;
  int w = 10;
  int h = 100;
  Paddle(int tx, int ty) {
    x = tx;
    y = ty;
  }

  void display() {
    rectMode(CENTER);
    fill(11, 88, 18);
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
