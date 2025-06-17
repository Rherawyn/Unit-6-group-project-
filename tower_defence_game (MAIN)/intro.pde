boolean difficulty = true; // true = easy

void intro() {
  background(greyblue);
  strokeWeight(7);
  textAlign(CENTER, CENTER);
  textSize(100);
  fill(navy);
  rect(525, 350, 350, 200);
  rect(600, 575, 200, 75);
  fill(yelloworange);
  text("TOWER DEFENSE", 700, 250);
  line(345, 295, 1055, 295);
  text("PLAY", 700, 450);
  textSize(42);
  text("OPTIONS", 700, 613);
  textSize(40);
  textAlign(LEFT, CENTER);
}

void introMousePressed() {
}

void introMouseDragged() {
}

void introMouseReleased() {
  //difficulty button
  if (mouseX > 600 && mouseX < 800 &&  mouseY >575 && mouseY < 650) {
    //difficulty = !difficulty;
    mode = "options";
  }
  //TEMPORARY PERAMITERS FOR BUTTON, NOT FINAL
  if (mouseX > 525 && mouseX < 875 &&  mouseY >350 && mouseY < 550) {
    print("yes");
    //array stuff for map
    if (difficulty) {
      ln = 6;
    } else {
      ln = 4;
    }
    lx = new float[ln];
    ly = new float[ln];
    v = new float[ln];
    cx = new float[ln];
    cy = new float[ln];

    for (int i = 0; i < ln-1; i ++) {
      lx[i] = random(75, 1125);
      ly[i] = random(75, 825);
    }
    for (int i = 0; i < ln-1; i ++) {
      while (dist(lx[i], ly[i], lx[i+1], ly[i+1]) < 400) {
        lx[i] = random(75, 1125);
        ly[i] = random(75, 825);
      }
    }
    lx[1] = 0;
    lx[ln - 1] = 1300;
    mode = "game";
  }
}

void introKeyPressed() {
}

void introKeyReleased() {
}
