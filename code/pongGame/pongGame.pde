boolean startGame;
boolean isDemo;

//randomizes the speed of the ball
float speedX = random(6,10);
float speedY = random(6,10);
float x;
float y;
float ballSize = 10;

int player_one_score;
int player_two_Score;
boolean died;

float paddle_speed = 2;
Paddle player_paddle, cpu_paddle;

float cpu_AI;
int cpu_AI_rand_init =  1;
int cpu_AI_rand_fin =  10;
int t;
int i = 0;

void setup() {
  size(800,800);
  x = width/2;
  y = height/2;

  startGame = true;
  isDemo = false;
  player_paddle = new Paddle(width-10,int(y));
  cpu_paddle = new Paddle(10,int(y));

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
    cpu_paddle.display();
    fill(11, 88, 18);
    rectMode(CENTER);
    rect(x,y,ballSize,ballSize);
    if(startGame) {
    cpu_paddle.moveY(cpu_AI);
    player_paddle.moveY(mouseY);
    //ball




    //bars

      x = x + speedX;
      y = y + speedY;
    }

    //bounces off when hitting the bar
    if( x > width-10-10 && x < width - 10 && y > mouseY-50 && y < mouseY+50 ) {
      speedX = speedX * -1;
      x = x + speedX;
      t = int(random(cpu_AI_rand_init,cpu_AI_rand_fin));
      println(t);
    }
    if( x < 10+10 && x > 10 && y > cpu_AI - 50 && y < cpu_AI+50 ) {
      speedX = speedX * -1;
      x = x + speedX;
    }

    if(x < width/2-50) {
        if(t>=1 && t<=1) {
          if(cpu_AI > y) {
            cpu_AI = cpu_AI - 5;
          }
          else {
            cpu_AI = cpu_AI + 5;
          }
        }
        else {
          if(cpu_AI > y) {
            cpu_AI = cpu_AI - 20;
          }
          else {
            cpu_AI = cpu_AI + 20;
          }
        }
    }
    else {
    }

    if(died) {
      startGame = true;
      died = false;


    }

  }


  if(y > height || y < 0) {
    speedY = speedY * -1;
    y = y + speedY;
  }

  //left side wall>>
  if(x > width) {
    t = int(random(cpu_AI_rand_init,cpu_AI_rand_fin));
    println(t);
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

  speedX = random(6,10);
  speedY = random(6,10);

}

void keyPressed() {
  //only runs when the game has started
  if(startGame) {
  }
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
  }}
