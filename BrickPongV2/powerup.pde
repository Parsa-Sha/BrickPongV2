class Powerup {
  float x, y;
  float vx, vy;
  float size;
  int powerupType;

  Powerup() {
    x = 0;
    y = 0;
    vx = 0;
    vy = 3;
    size = 30;
    powerupType = 0;
  }

  Powerup(float px, float py, int pt) {
    x = px;
    y = py;
    vx = 0;
    vy = 3;
    size = 30;
    powerupType = pt;
  }

  void show() {
    image(powerupImages[powerupType], x, y);
  }

  void act() {
    x += vx;
    y += vy;

    if (x < size || x > width-size) {
      vx *= -1;
    }

    if (dist(x, y, myPaddle.x, myPaddle.y) < size/2) {
      switch(powerupType) {
      case 0: // Three Split code
        for (int i = 0; i < myBalls.size(); i++) { // Loop through all the balls
          objectBall2 = myBalls.get(i);
          myBalls.add(new Ball(objectBall2.bx, objectBall2.by, objectBall2.bvx, objectBall2.bvy));
          myBalls.add(new Ball(objectBall2.bx, objectBall2.by, objectBall2.bvx, objectBall2.bvy));
        }
        break;
      case 1: // Multiball code
        myBalls.add(new Ball());
        myBalls.add(new Ball());
        break;
      case 2: // Paddle Widen code
        myPaddle.paddleWidth *= 4/3;
        break;
      case 3: // Paddle Shorten code
        myPaddle.paddleWidth *= 3/4;
        break;
      default: // If all else fails
        println("ERROR: UNIDENTIFIED POWERUP TYPE: " + powerupType);
      }
    }
  }
}
