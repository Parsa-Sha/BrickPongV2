class Brick {

  //1. Instance Variables
  float x, y;
  int hp, brickX, brickY;
  int currentBrickImage;

  //2. Constructor
  Brick() {
    x = 0;
    y = 0;
    hp = 1;
  }

  //3. Behaviour Functions
  void show() {
    if (hp > 0) image(brickImages[currentBrickImage], x, y);
  }

  void act() { // Old brick bounding calculation
    /*
    if (hp > 0 && bx + bd/2 > x - brickX/2 && bx - bd/2 < x + brickX/2 && by + bd/2 > y - brickY/2 && by - bd/2 < y + brickY/2) { // Once we know it is hit, we check which side is hit
     if(abs(bvx) > abs(bvy)) { // Velocity slope is greater than 1, therefore reverse X
     bvx = -bvx;
     } else if(abs(bvx) == abs(bvy)) { // Velocity slope is 1, therefore reverse both velocities
     bvx = -bvx;
     bvy = -bvy;
     } else { // Velocity slope is less than one, therefore reverse Y
     bvy = -bvy;
     }
     hp--;
     bricksAlive--;
     }
     }
     */
     
     
    for (int i = 0; i < myBalls.size(); i++) {
      objectBall = myBalls.get(i);
      if (hp > 0 &&
        objectBall.bx + objectBall.bd/2 > x - brickX/2 &&
        objectBall.bx - objectBall.bd/2 < x + brickX/2 &&
        objectBall.by + objectBall.bd/2 > y - brickY/2 &&
        objectBall.by - objectBall.bd/2 < y + brickY/2) { // Once we know it is hit, we check which side is hit
        if (objectBall.bx + objectBall.bd/2 < x - (brickX/2 + 1)) { // Velocity slope is greater than 1, therefore reverse X
          objectBall.bvx = -objectBall.bvx;
        } else {
          objectBall.bvy = -objectBall.bvy;
        }
        hp--;
        bricksAlive--;
      }
    }
  }

  void reset() { // Resetting bricks when game is finished
    hp = 1;
  }
}
