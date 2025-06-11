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
  textAlign(LEFT,CENTER);
  textSize(50);
  text("Difficulty", 125, 325);
  text("Placeholder", 125, 475);
  text("Placeholder", 125, 625);
  text("Placeholder", 775, 325);
  text("Placeholder", 775, 475);
  text("Placeholder", 775, 625);
  textAlign(CENTER,CENTER);
  textSize(30);
  //difficulty setting
  if(difficulty) {stroke(white);}else{stroke(black);}
  rect(400,300,100,50);
  if(!difficulty) {stroke(white);}else{stroke(black);}
  rect(525,300,100,50);
  stroke(black);
  fill(black);
  text("Easy", 450, 325);
  text("Hard", 575, 325);
 
 fill(yelloworange);
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
  
  if (mouseX > 400 && mouseX < 500 &&  mouseY >300 && mouseY < 350) {
   difficulty = !difficulty;
  }
  
  if (mouseX > 525 && mouseX < 625 &&  mouseY >300 && mouseY < 350) {
   difficulty = !difficulty;
  }
}

void optionsKeyPressed() {
  
}

void optionsKeyReleased() {
  
}
