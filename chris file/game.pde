void game() {
  background(white);
  
  fireWizard(x,y);
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

void fireWizard(float x, float y) {
  float hit = 0;
  pushMatrix();
  translate(x,y);
  scale(1);
  rotate(atan2(mouseY-y,mouseX-x)+radians(140));
  fill(brown);
  rect(-10,0, 20,-80, 50);
  rotate(radians(-50));
  fill(red);
  circle(0,0, 100);
  circle(0,10, 60);
  circle(0,15, 30);
  circle(0,27, 20);
  popMatrix();
}
