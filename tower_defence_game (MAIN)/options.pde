void options() {
  background(blue);
  strokeWeight(7);
  textAlign(CENTER,CENTER);
  textSize(100);
  line(475,145,925,145);
  strokeWeight(5);
  line(100,250,1300,250);
  for (int i = 0; i < 3; i ++) {
    line(100, 400 + 150* i, 650, 400 + 150 * i);
  }
  for (int i = 0; i < 3; i ++) {
    line(750, 400 + 150* i, 1300, 400 + 150 * i);
  }
  fill(navy);
  rect(50, 825, 125, 50);
  triangle(62, 850, 82, 865, 82, 835);
  fill(yelloworange);
  text("OPTIONS", 700, 100);
  //settings
  textSize(50);
  text("BACK", 175, 325);
  
  textSize(30);
  text("BACK", 125, 850);
}

void optionsMousePressed() {
  
}

void optionsMouseDragged() {
  
}

void optionsMouseReleased() {
  if (mouseX > 50 && mouseX < 175 &&  mouseY >825 && mouseY < 875) {
   mode = "intro";
  }
}

void optionsKeyPressed() {
  
}

void optionsKeyReleased() {
  
}
