void gameover() {
  background(5, 10, 29);
  for (int i = 0; i < totalBricks; i++) { // Reset health of all bricks
    Brick b = myBricks.get(i);
    b.reset();
  }
  fill(81, 211, 210);
  textSize(100);
  text("FAILURE", width/2, height/2);
  textSize(40);
  text("PRESS ANYWHERE TO TRY AGAIN", width/2, height/2 + 100);
  if (mousePressed) mode = INTRO;
}
