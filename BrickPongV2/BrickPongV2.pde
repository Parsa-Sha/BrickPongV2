// Galaxy Breaker V1
// Using modular programming and classes, I've made a simple brick breaker game
// https://github.com/Parsa-Sha/BrickBreakerV1



// To do list:
// Create powerups:
//   Spawn two more balls in the center
//   Spawn two more balls where the ball is located
//   Widen paddle width
//   Shorten paddle width
//   Gun & mega lazer

// Make ball variables local, in order to use multiple balls

ArrayList<Brick> myBricks;
ArrayList<Ball> myBalls;
ArrayList<Powerup> myPowerups;
Ball objectBall = null;
Ball objectBall2 = null;
Paddle myPaddle;

final int INTRO = 1; // Modular framework, using enums
final int GAME  = 2;
final int GAMEOVER = 3;
final int GAMEDONE = 4;
int mode = INTRO; 

int brickRows = 6;
int brickColumns = 16;

int bricksAlive = brickRows * brickColumns; // Total number of bricks, and bricks that have more than 1 hp
int totalBricks = bricksAlive;

 // Global ball variables

PImage[] brickImages = new PImage[6];
PImage[] powerupImages = new PImage[4];
PImage paddleImage, ballImage, bgImage;
int currentBrick;

void setup() {
  size(1024, 576);
  rectMode(CENTER);
  
  brickImages[0] = loadImage("images\\BrickRed.png"); // Setting up MANY images
  brickImages[1] = loadImage("images\\BrickOrange.png");
  brickImages[2] = loadImage("images\\BrickYellow.png");
  brickImages[3] = loadImage("images\\BrickGreen.png");
  brickImages[4] = loadImage("images\\BrickBlue.png");
  brickImages[5] = loadImage("images\\BrickPurple.png");
  paddleImage = loadImage("images\\Paddle.png");
  ballImage = loadImage("images\\Ball2.png");
  bgImage = loadImage("images\\Bg.png");
  imageMode(CENTER);
  
  myBricks = new ArrayList<Brick>();
  myBalls = new ArrayList<Ball>();
  myPowerups = new ArrayList<Powerup>();
  myPaddle = new Paddle();
  
  for(int i = 0; i < totalBricks; i++) myBricks.add( new Brick() ); // Creating bricks and ball 
  myBalls.add(new Ball());
}

void draw() { // Switching mode based on mode variable
  switch (mode) {
    case INTRO:
    intro();
    break;
    case GAME:
    bricksAlive = totalBricks;
    game();
    break;
    case GAMEOVER:
    gameover();
    break;
    case GAMEDONE:
    gamedone();
    break;
    default:
    println("MODE ERROR. MODE = " + mode);
  }
}
