//booleans
  boolean DemoStart;
  boolean isDemo = false;
  boolean died;
  boolean predead;
  int demotimer = 0;

//playing
//============================
//randomizes the speed of the ball
  float speed = 2;
  float speedX = random(-7, -10);
  float speedY = random(-7, -10);
  float x;
  float y;
  float ballSize = 10; //original 10
  int rballand = int(random(1, 4));

//score tracking
  int player_one_score;
  int player_two_Score;

  int scorelimit = 1;

//Artificial Intelegence
  float paddle_speed = 2;
  Paddle player_paddle, cpu_paddle;
  float cpu_AI;
  float cpu_AI2;
  int cpu_AI_rand_init =  1;
  int cpu_AI_rand_fin =  10;
  //int t;
  //int i = 0;
  //AI difficulty
    int aiDificulty = 6;
    int difficulty = aiDificulty;
    int difficulty2 = aiDificulty;
    int aIX;
    int aIy;


//Animations
//DEMO
//======================
Paddle cpu1, cpu2;



void setup() {
  //fullScreen(P2D);
  size(700, 700);
  x = width/2;
  y = height/2;







  DemoStart = true;
  isDemo = true;
  player_paddle = new Paddle(width-10, int(y));
  cpu_paddle = new Paddle(10, int(y));


  cpu1 = new Paddle(width-10, int(y));
  cpu2 = new Paddle(10, int(y));
}
void draw() {
  //black background
  background(0);
  fill(11, 88, 18);
  textSize(32);
  textAlign(CENTER, CENTER);
  text(player_two_Score, 100, 50);
  text(player_one_score, width-100, 50);
  rectMode(CENTER);
  rect(width/2, height/2, 5, height);

  if (isDemo) {


    cpu1.display();
    cpu2.display();
    fill(11, 88, 18);
    rectMode(CENTER);
    rect(x, y, ballSize, ballSize);
    fill(11, 100, 18);
    text("Click To Play", width/2, height/2);
    fill(11, 88, 18);
    if (DemoStart) {

      //bounc ball
      if ( x > width-10-10 && x < width - 10 && y > cpu_AI2-50 && y < cpu_AI2+50 ) {
        speedX = speedX * -1;
        x = x + speedX;
        speedX++;
      }
      if ( x < 10+10 && x > 10 && y > cpu_AI - 50 && y < cpu_AI+50 ) {
        speedX = speedX * -1;
        x = x + speedX;
        speedX++;
      }

      x = x + speedX;
      y = y + speedY;
    }

    //reset function
    if (mousePressed) {
      player_one_score = 0;
      player_two_Score = 0;
      died();

      isDemo = false;
    }

    //in game
  } else {


    //Goes back to being Demo if no one is using
    if (mouseX == pmouseX && mouseY == pmouseY) {
      demotimer++;
      if (demotimer> 500) { //Two mins 120000
        isDemo = true;
        player_one_score = 0;
        player_two_Score = 0;
        demotimer = 0;
      }
    } else {
      demotimer = 0;
    }

    //scoring
    //player 1 won
    if (player_one_score == scorelimit && player_one_score > player_two_Score) {
      predead = true;

      textSize(42);
      text("PLAYER WON", width/2+500,height/2);
    }
    //player 2 won
    else if (player_two_Score == scorelimit && player_two_Score > player_one_score) {
      predead = true;

      textSize(42);
      text("CPU WON", width/2-500,height/2);

      //Animataions if won

      //moves the paddle in the middle

    }
    if(predead) {

      //Animations
      if(cpu_AI < width/2) {
        cpu_AI = cpu_AI + aiDificulty;
        cpu_paddle.display();
        cpu_paddle.moveY(cpu_AI);
      }
      if(cpu_AI > width/2) {
        cpu_AI = cpu_AI - aiDificulty;
        cpu_paddle.display();
        cpu_paddle.moveY(cpu_AI);
      }

    }





    player_paddle.display();
    cpu_paddle.display();
    fill(11, 88, 18);
    rectMode(CENTER);
    rect(x, y, ballSize, ballSize);

    if (DemoStart) {
      if(!predead) {
        cpu_paddle.moveY(cpu_AI);
        player_paddle.moveY(mouseY);
      }

      x = x + speedX;
      y = y + speedY;
    }

    //bounces off when hitting the bar
    if ( x > width-10-10 && x < width - 10 && y > mouseY-50 && y < mouseY+50 ) {
      speedX = speedX * -1;
      x = x + speedX;
    }
    if ( x < 10+10 && x > 10 && y > cpu_AI - 50 && y < cpu_AI+50 ) {
      speedX = speedX * -1;
      x = x + speedX;
    }
  }

  //bounce off roof
  if (y > height || y < 0) {
    speedY = speedY * -1;
    y = y + speedY;
  }

  //left side wall>>
  if (x > width) {
    player_two_Score ++;
    rballand = 2;
    died();
  }

  //right side wall<<
  else if (x < 0) {
    player_one_score ++;
    rballand = 1;//>>score
    died();
  }

  if (died) {
    DemoStart = true;
    died = false;
  }

  //Paddle AI funcrtions
  if(!predead) {
    if (x < width/2-50) {
      if (cpu_AI > y) {
        cpu_AI = cpu_AI - difficulty;
      } else {
        cpu_AI = cpu_AI + difficulty;
      }
    } else {
      if (cpu_AI2 > y) {
        cpu_AI2 = cpu_AI2 - difficulty2;
      } else {
        cpu_AI2 = cpu_AI2 + difficulty2;
      }
    }
  }
}

void died() {
  DemoStart = false;
  died = true;
  x = width/2;
  y = height/2;
  switch(rballand) {
    //2 and 3 right side
  case 1:
    speedX = int(random(7, 10));
    speedY = int(random(7, -10));
    break;
  case 2:
    speedX = random(-7, -10);
    speedY = random(-7, -10);
    break;
  case 3:
    break;
  case 4:
    break;
  }
}

void keyPressed() {
  //only runs when the game has started
  if (DemoStart) {
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
    } else if ( y < float(0) + float(h/2)) {
      y = float(h/2);
    }
  }
}
