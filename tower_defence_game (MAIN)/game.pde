void game() {
  background(white);
  
  fireWizard();
}

void gameMousePressed() {
  
}

void gameMouseDragged() {
  
}

void gameMouseReleased() {
  
}

void gameKeyPressed() {
  
}

void gameKeyReleased() {
  
}

void fireWizard() {
  pushMatrix();
  translate(x,y);
  scale(2);
  rotate(atan2(mouseY-y,mouseX-x)+PI/2);
  //rotate(radians(mouseY));
  circle(0,0, 100);
  circle(0,10, 60);
  circle(0,15, 30);
  circle(0,27, 20);
  popMatrix();
}
