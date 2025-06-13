void game() {
  background(white);
  strokeWeight(7); //purchase menu outline
  gameMap();
  //normalCat(1000,500);
  squareCat(1000,650);
  moab(1000,800);
  rollCat(1000,300);
  medicCat(1000,100);
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
  
  
  for (normcat anEnemy : normalcatclass) {
    anEnemy.act();
  }
  
}

//void normalCat(int x, int y) {
  
//}

void squareCat(int x, int y) {
  pushMatrix();
  translate(x, y);
  fill(255);
  stroke(0);
  strokeWeight(3);
  rect(-35,-30, 70,53);
  triangle(-20,-30, -10,-30, -17,-38);
  triangle(20,-30, 10,-30, 17,-38);
  triangle(-20,26, -15,26, -18,30);
  triangle(20,26, 15,26, 18,30);
  noFill();
  ellipse(-2,-8, 14,10);
  ellipse(8,-8, 14,10);
  fill(255);
  stroke(255);
  ellipse(5,-15, 45,10);
  stroke(0);
  fill(0);
  circle(-11,-15, 2); //eyes
  circle(15,-13, 2);
  popMatrix();
}

void moab(int x, int y) {
  pushMatrix();
  translate(x,y);
  fill(255);
  stroke(0);
  strokeWeight(3);
  ellipse(0,0, 140,130);
  noFill();
  ellipse(-2,-8, 14,10);
  ellipse(8,-8, 14,10);
  fill(255);
  stroke(255);
  ellipse(5,-15, 45,10);
  stroke(0);
  fill(0);
  circle(-11,-15, 2); //eyes
  circle(15,-13, 2);
  scale(2);
  strokeWeight(1.5);
  fill(255);
  triangle(-20,-27, -10,-31, -17,-38);
  triangle(20,-27, 10,-31, 17,-38);
  triangle(-20,28, -15,30, -18,32);
  triangle(20,28, 15,30, 18,32);
  popMatrix();
}

void rollCat(int x, int y) {
  pushMatrix();
  translate(x, y);
  fill(0);
  stroke(255);
  strokeWeight(3);
  ellipse(0,0, 70,61);
  noFill();
  ellipse(-2,-8, 14,10);
  ellipse(8,-8, 14,10);
  fill(0);
  stroke(0);
  ellipse(5,-15, 45,10);
  stroke(255);
  fill(255);
  circle(-11,-15, 2); //eyes
  circle(15,-13, 2);
  fill(0);
  triangle(-23,-27, -7,-31, -17,-42);
  triangle(23,-27, 7,-31, 17,-42);
  popMatrix();
}

void medicCat(int x, int y) {
  pushMatrix();
  translate(x, y);
  fill(255); //hat
  stroke(0);
  strokeWeight(3);
  line(-20,-26, -25,-50);
  line(20,-26, 25,-50);
  quad(-20,-26, 20,-26, 12,-56, -12,-56);
  noFill();
  arc(0,-50, 50, 10, radians(-40), radians(220));
  line(-19,-47, -20,-53);
  line(19,-47, 20,-53);
  fill(255);
  quad(-20,-26, 20,-26, 25,-47, -25,-47);
  fill(#DE6565);
  noStroke();
  rect(-3,-42, 6,8);
  rect(-7,-40, 14,3.5);

  fill(255);
  stroke(0);
  strokeWeight(3);
  ellipse(0,0, 70,61);
  triangle(-20,26, -15,28, -18,30); //legs
  triangle(20,26, 15,28, 18,30);
  noFill();
  ellipse(-2,-8, 14,10);
  ellipse(8,-8, 14,10);
  fill(255);
  stroke(255);
  ellipse(5,-15, 45,10);
  stroke(0);
  fill(0);
  circle(-11,-15, 2); //eyes
  circle(15,-13, 2);
  
  heal += 1;

  if (heal >= 120 && heal <= 160) {
    stroke(#009312);
    fill(#00C418, 100);
    ellipse(0,0, 250,250);
  }
  if (heal == 160) heal = 0;
  popMatrix();
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
  
  if (key == 'z') { //spawn enemy
    normalcatclass.add(new normcat());
  }
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
