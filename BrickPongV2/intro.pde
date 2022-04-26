int buttonHover;

void intro() {
  background(3, 34, 67);
  fill(2, 129, 215);
  textAlign(CENTER);
  textSize(100);
  text("GALAXY BREAKER", width/2, height/2);
  buttonHover = 0;
  
  if(mouseX > width/2-100 && mouseX < width/2+100 && mouseY > height/1.3-50 && mouseY < height/1.3+50){
    if(mousePressed) mode = GAME;
    buttonHover = 10;
  }
  
  strokeWeight(buttonHover);
  stroke(0);
  rect(width/2, height/1.3, 200, 100, 10);
  textSize(40);
  fill(buttonHover/10*255);
  text("PLAY!", width/2, height/1.3 + 10);
  
}
