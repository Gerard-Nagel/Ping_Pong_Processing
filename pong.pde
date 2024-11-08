int paddle1x = 10;

int paddle2x = 570;

int ballx = 300;
int bally = 30;
int speed = 2;
int speedy = 2;
int p1score = 1;
int p2score = 1;

int paddley = 0;
int paddley2 = 0;
    
void setup(){
  size(600, 600);
  
if( ballx < 0){
    p1score = p1score + 1;
    println("Player 1 =" + p1score);
}
 
}

void draw(){
  background(0);
  
  
  fill(255);
  //left paddle
  rect(paddle1x, paddley2, 20, 60);
  //right paddle
  rect(paddle2x, paddley, 20, 60);
  //ball
  ballx = ballx + speed;
  bally = bally + speedy;
  circle(ballx, bally, 20);
  
  if( ballx >= paddle2x && bally >= paddley && bally <= paddley + 60){
    speed = speed * -1;
    
  }
  if( bally >= 600){
    speedy = speedy * -1;
  }
  if(ballx == 30  && bally >= paddley2 && bally <= paddley2 + 60){
    speed = speed * -1;
  }
  if(bally <= 0){
    speedy = speedy * -1;
  }
  
  if(ballx < 0){
    println("Player 2's score is" + p2score);
    ballx = 300;
    bally = 30;
    p2score = p2score  + 1;
  }else if( ballx > 600){
    println("Player 1's score is" + p1score);
    ballx = 300;
    bally = 30;
    p1score = p1score + 1;
  }
  if( p1score >= 11 || p2score >= 11){
    p1score = 0;
    p2score = 0;
  }
    
  
}

void keyPressed(){
  if(keyCode == DOWN){
    
    paddley = paddley + 10;
  }
  if(keyCode == UP){
    paddley = paddley - 10;
  }
  if(key == 's'){
    paddley2 = paddley2 + 10;
  }
  if(key == 'w'){
    paddley2 = paddley2 - 10;
  }
}


  
  
