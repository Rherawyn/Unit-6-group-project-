boolean difficulty = true;

void intro() {
  background(greyblue);
  rect(550, 350, 300, 200);
  rect(600, 600, 200, 200);
}

void introMousePressed() {
}

void introMouseDragged() {
}

void introMouseReleased() {
  //difficulty button
  if (mouseX > 600 && mouseX < 800 &&  mouseY >600 && mouseY < 800) {
   difficulty = !difficulty; 
  }
  //TEMPORARY PERAMITERS FOR BUTTON, NOT FINAL
  if (mouseX > 550 && mouseX < 850 &&  mouseY >350 && mouseY < 550) {
    print("yes");
    mode = "game";
    //array stuff for map
    if (difficulty) {
    ln = 6;
    } else {
    ln = 4; 
    }
    lx = new float[ln];
    ly = new float[ln];

    int i = 1;
    while (i < ln) {
      lx[i] = random(75,1125);
      ly[i] = random(75,825);
      while (dist(lx[i], ly[i], lx[i-1], ly[i-1]) < 400) {
        lx[i] = random(75,1125);
        ly[i] = random(75,825);
      }
      i ++;
    }
    lx[1] = 0;
    lx[ln - 1] = 1200;
  }
}

void introKeyPressed() {
}

void introKeyReleased() {
}
