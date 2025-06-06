void game() {
  background(white);
  
  println(wizard.size());
  for(firewiz aWiz : wizard){
    aWiz.act();
  }
}

void gameMousePressed() {
  wizard.add(new firewiz() );
}

void gameMouseDragged() {
  
}

void gameMouseReleased() {
  
}

void gameKeyPressed() {
  
}

void gameKeyReleased() {
  
}
