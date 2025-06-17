void game() {
  background(white);
  strokeWeight(7); //purchase menu outline
  gameMap();
  stroke(#332000);
  fill(#704700); //brown
  strokeWeight(5);
  rect(1200,-10, 210,920);
  rect(1200,-10, 210, 200);
  line(1300,190, 1300,590);
  line(1200,290, 1400,290);
  line(1200,390, 1400,390);
  line(1200,490, 1400,490);
  line(1200,590, 1400,590);
  

  fill(#F9C74F); //money display
  textSize(40);
  text("$$ " + cash, 1230,50);
  
  fill(#F70202); //health display
  stroke(#F70202);
  strokeWeight(2);
  triangle(1250, 115, 1265, 95, 1235, 95);
  ellipse(1242, 93, 14, 12);
  ellipse(1258, 93, 14, 12);
  text(health, 1277, 101);
  
  fill(255); //price display
  text("Price: " + price, 1233, 150);
  
  fill(#39B4FF); //speedup button
  stroke(#0489D8);
  strokeWeight(4);
  tactile(1250,840, 40);
  circle(1250,840, 70);
  
  tactile(1350,840, 40); //start round button
  circle(1350,840, 70);
  
  tactile(1125,70,40); //pause button
  circle(1125,70,70);
  fill(#0489D8);
  noStroke();
  rect(1108,53, 12,35);
  rect(1130,53, 12,35);
  
  if (speedup == false) {
    fill(#0489D8);
    stroke(#0489D8);
  } else if (speedup) {
    fill(#62F3FF);
    stroke(#62F3FF);
  }
  triangle(1233,830, 1233,850, 1247,840);
  triangle(1253,830, 1253,850, 1267,840);
  
  gamePlay();
}


void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(255);
  } else {
    stroke(#0489D8);
  }
}

void gameMousePressed() {
  if (dist(1250,840, mouseX, mouseY) < 40) {
    if (speedup == false) speedup = true;
    else if (speedup) speedup = false;
  }
  
  if (dist(1350,840, mouseX, mouseY) < 40) {
    if (roundPhase == false) roundPhase = true;
  }
  
  if (dist(1125,70, mouseX, mouseY) < 40) {
    fill(#414B58,180);
    rect(-20,-20,1450,1000);
    if (mode == "game") mode = "pause";
  }
}

void gameMouseDragged() {
  
}

void gameMouseReleased() {
 
}

void gameKeyPressed() {
  if (key == 'a') { //remove enemy
    normcat anEnemy = normalcatclass.get(0);
    normalcatclass.remove(anEnemy);
  }
  
  //if (key == 's') {
  //  squarecat anEnemy = squarecatclass.get(0);
  //  squarecatclass.remove(anEnemy);
  //}
  
  //if (key == 'd') {
  //  moab anEnemy = moabclass.get(0);
  //  moabclass.remove(anEnemy);
  //}
  
  //if (key == 'f') {
  //  rollcat anEnemy = rollcatclass.get(0);
  //  rollcatclass.remove(anEnemy);
  //}
  
  //if (key == 'g') {
  //  mediccat anEnemy = mediccatclass.get(0);
  //  mediccatclass.remove(anEnemy);
  //}
  
  
  
  
  if (key == 'z') { //spawn enemy
    normalcatclass.add(new normcat());
  }
  //if (key == 'x') {
  //  squarecatclass.add(new squarecat());
  //}
  //if (key == 'c') { 
  //  moabclass.add(new moab());
  //}
  //if (key == 'v') {
  //  rollcatclass.add(new rollcat());
  //}
  //if (key == 'b') {
  //  mediccatclass.add(new mediccat());
  //}
}
  

void gameKeyReleased() {
  
}

void gameMap() {
  int i = 1;
  while (i < ln-1) {
 line (lx[i],ly[i],lx[i+1],ly[i+1]);
 i ++;
  }
}
