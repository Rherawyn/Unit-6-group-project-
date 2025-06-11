void pause() {
  stroke(0);
  textAlign(LEFT, CENTER);
  fill(navy); //text is yelloworange
  pausetile(500, 125, 400, 150);
  rect(500, 125, 400, 150);
  pausetile(500, 375, 400, 150);
  rect(500, 375, 400, 150);
  pausetile(500, 625, 400, 150);
  rect(500, 625, 400, 150);
  fill(yelloworange);
  textSize(70);
  text("Resume", 580, 200);
  text("Options", 580, 450);
  text("Quit", 635, 700);
  stroke(0);
}


void pausetile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) stroke(255);
  else stroke(0);
}


void pauseMousePressed() {
}

void pauseMouseDragged() {
}

void pauseMouseReleased() {
  if (mouseX > 500 && mouseX < 900 && mouseY > 125 && mouseY < 275) mode = "game";
  if (mouseX > 500 && mouseX < 900 && mouseY > 375 && mouseY < 525) mode = "options2";
  if (mouseX > 500 && mouseX < 900 && mouseY > 625 && mouseY < 775) mode = "intro";
}

void pauseKeyPressed() {
}

void pauseKeyReleased() {
}
