void gameover() {
  background -= 1;
  background(background,s,b);
  
  if(background <= 0) background = 255;
}

void gameoverMousePressed() {
  mode = "game";
}

void gameoverMouseDragged() {
  
}

void gameoverMouseReleased() {
  
}

void gameoverKeyPressed() {
  
}

void gameoverKeyReleased() {
  
}
