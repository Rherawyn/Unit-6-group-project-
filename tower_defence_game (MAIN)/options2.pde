void options2() {
  background(blue);
  strokeWeight(7);
  textAlign(CENTER, CENTER);
  textSize(100);
  line(400, 145, 1000, 145);
  strokeWeight(5);
  line(100, 250, 1300, 250);
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
  text("GAME OPTIONS", 700, 100);
  textAlign(LEFT, CENTER);
  textSize(50);
  text("Placeholder", 125, 325);
  text("Placeholder", 125, 475);
  text("Placeholder", 125, 625);
  text("Placeholder", 775, 325);
  text("Placeholder", 775, 475);
  text("Placeholder", 775, 625);
  
  //volume
  textAlign(CENTER, CENTER);
  fill(black);
  strokeWeight(7);
  stroke(yelloworange);
  line(125, 200, bx, 200);
  stroke(black);
  line(bx, 200, 625, 200);
  circle(bx, 200, 25);

  stroke(yelloworange);
  line(775, 200, bx2, 200);
  stroke(black);
  line(bx2, 200, 1275, 200);
  circle(bx2, 200, 25);
  
  fill(yelloworange);
  textSize(20);
  text("vol",100,200);
  text(round(vol),650,200);
  
  vol = map(bx, 125, 625, 0, 100);
  
  textAlign(CENTER, CENTER);
  textSize(30);
  fill(yelloworange);
  text("BACK", 125, 850);
  textAlign(LEFT, CENTER);
}

void options2MousePressed() {
}

void options2MouseDragged() {
  if (mouseX > 125 && mouseX < 625 && mouseY > 175 && mouseY < 225) {
    bx = mouseX;
  }
  
  if (mouseX > 775 && mouseX < 1275 && mouseY > 175 && mouseY < 225) {
    bx2 = mouseX;
  }
}

void options2MouseReleased() {
  if (mouseX > 50 && mouseX < 175 &&  mouseY >825 && mouseY < 875) {
   mode = "game";
  }
}

void options2KeyPressed() {
}

void options2KeyReleased() {
}
