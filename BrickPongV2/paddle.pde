class Paddle {
  float x, y, paddleWidth, paddleHeight;
  
  Paddle() {
    y = height - 40;
    x = width/2;
    paddleWidth = 80;
    paddleHeight = 15;
  }
  
  void act() {
    x = mouseX;
  }
  
  void show() {
    image(paddleImage, x, y);
  }
}
