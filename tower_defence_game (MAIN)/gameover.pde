void gameover() {
  background(navy);
  textAlign(CENTER,CENTER);
  fill(yelloworange);
  textSize(100);
  text("YOU LOSE",700,300);
  stroke(black);
  line(500,350,900,350);
  
  pausetile(500, 450, 400, 200);
  rect(500, 450, 400, 200);
  fill(black);
  textSize(100);
  text("Quit", 700, 525);
  stroke(black);
  textAlign(LEFT,CENTER);
}

void gameoverMousePressed() {
  
}

void gameoverMouseDragged() {
  
}

void gameoverMouseReleased() {
  if (mouseX > 500 && mouseX < 900 && mouseY > 450 && mouseY < 650) mode = "intro";
}

void gameoverKeyPressed() {
  
}

void gameoverKeyReleased() {
  
}
