void game() {
  image(bgImage, width/2, height/2);

  for (int i = 0; i < brickColumns; i++) {
    for (int j = 0; j < brickRows; j++) {
      Brick b = myBricks.get(i*brickRows + j); // Getting brick
      b.x = 64 * i + 32; // Positioning based on I and J
      b.y = 32 * j + 32;
      b.currentBrickImage = brickRows-j-1; // Purple for top row, red for bottom.
      b.show();
      b.act();
    }
  }
  
  if (bricksAlive == 0) { // If game has won
    bricksAlive = totalBricks;
    mode = GAMEDONE;
  }
  
  Ball mainBall = myBalls.get(0);
  mainBall.show();
  mainBall.act();
  myPaddle.show();
  myPaddle.act();
}
