void mousePressed() {
  if(mode == "game") gameMousePressed();
  else if(mode == "intro") introMousePressed();
  else if(mode == "options") optionsMousePressed();
  else if(mode == "gameover") gameoverMousePressed();
  else pauseMousePressed();
}

void mouseDragged() {
  if(mode == "game") gameMouseDragged();
  else if(mode == "intro") introMouseDragged();
  else if(mode == "options") optionsMouseDragged();
  else if(mode == "gameover") gameoverMouseDragged();
  else pauseMouseDragged();
}

void mouseReleased() {
  if(mode == "game") gameMouseReleased();
  else if(mode == "intro") introMouseReleased();
  else if(mode == "options") optionsMouseReleased();
  else if(mode == "gameover") gameoverMouseReleased();
  else pauseMouseReleased();
}

void keyPressed() {
  if(mode == "game") gameKeyPressed();
  else if(mode == "intro") introKeyPressed();
  else if(mode == "options") optionsKeyPressed();
  else if(mode == "gameover") gameoverKeyPressed();
  else pauseKeyPressed();
}

void keyReleased() {
  if(mode == "game") gameKeyReleased();
  else if(mode == "intro") introKeyReleased();
  else if(mode == "options") optionsKeyReleased();
  else if(mode == "gameover") gameoverKeyReleased();
  else pauseKeyReleased();
}
