void intro() {
  background(greyblue);
  rect(550, 350, 300, 200);
}

void introMousePressed() {
}

void introMouseDragged() {
}

void introMouseReleased() {
  //TEMPORARY PERAMITERS FOR BUTTON, NOT FINAL
  if (mouseX > 550 && mouseX < 850 &&  mouseY >350 && mouseY < 550) {
    print("yes");
    mode = "game";
    //array stuff for map
    ln = 5;
    lx = new float[ln];
    ly = new float[ln];

    int i = 1;
    while (i < ln) {
      lx[i] = random(1200);
      ly[i] = random(900);
      while (dist(lx[i], ly[i], lx[i-1], ly[i-1]) < 400) {
        lx[i] = random(1200);
        ly[i] = random(900);
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
