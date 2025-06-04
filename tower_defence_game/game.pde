void game() {
  background += 1;
  background(background,s,b);
  
  if(background >= 255) background = 0;
}

void gameMousePressed() {
  mode = "gameover";
}

void gameMouseDragged() {
  
}

void gameMouseReleased() {
  
}

void gameKeyPressed() {
  
}

void gameKeyReleased() {
  
}
