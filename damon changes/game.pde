void game() {
  background(white);
  strokeWeight(7); //purchase menu outline
  stroke(#332000);
  fill(#704700); //brown
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
  tactile(1350,840, 40);
  circle(1350,840, 70);
  if (speedup == false) {
    fill(#0489D8);
    stroke(#0489D8);
  } else if (speedup) {
    fill(#62F3FF);
    stroke(#62F3FF);
  }
  triangle(1233,830, 1233,850, 1247,840);
  triangle(1253,830, 1253,850, 1267,840);
}

void normalCat(int x, int y) {
  pushMatrix();
  translate(x, y);
  fill(255);
  stroke(0);
  strokeWeight(3);
  ellipse(0,0, 70,61);
  triangle(-20,-27, -10,-31, -17,-38);
  triangle(20,-27, 10,-31, 17,-38);
  triangle(-20,26, -15,28, -18,30);
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
  popMatrix();
}

void camoCat(int x, int y) {
  pushMatrix();
  translate(x, y);
  fill(255);
  stroke(0);
  strokeWeight(3);
  ellipse(0,0, 70,61);
  triangle(-20,-27, -10,-31, -17,-38);
  triangle(20,-27, 10,-31, 17,-38);
  triangle(-20,26, -15,28, -18,30);
  triangle(20,26, 15,28, 18,30);
  noFill();
  ellipse(-2,-8, 14,10);
  ellipse(8,-8, 14,10);
  fill(255);
  stroke(255);
  ellipse(5,-15, 45,10);
  stroke(#B2B0B0);
  fill(#B2B0B0);
  circle(-20,15, 8);
  circle(10,20, 12);
  circle(4,10, 7);
  circle(-27,0, 10);
  circle(-20,15, 9);
  circle(20,5, 7);
  circle(10,-20, 8);
  circle(-20,15, 6);
  circle(-11,-15, 12);
  stroke(0);
  fill(0);
  circle(-11,-15, 2);
  circle(15,-13, 2);
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
}

void gameMouseDragged() {
  
}

void gameMouseReleased() {
  
}

void gameKeyPressed() {

}

void gameKeyReleased() {
  
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
