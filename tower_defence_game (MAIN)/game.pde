//menu vars
int health = 100;
int cash = 0;
int price;
boolean speedup = false;

void game() {
  background(white);
  strokeWeight(7); //purchase menu outline
  gameMap();
  
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
  text(health, 1277, 115);
  
  fill(255); //price display
  text("Price: " + price, 1233, 170);
  
  fill(#39B4FF); //speedup button
  stroke(#0489D8);
  strokeWeight(4);
  tactile(1300,840, 40);
  circle(1300,840, 70);
  if (speedup == false) {
    fill(#0489D8);
    stroke(#0489D8);
  } else if (speedup) {
    fill(#62F3FF);
    stroke(#62F3FF);
  }
  triangle(1283,830, 1283,850, 1297,840);
  triangle(1303,830, 1303,850, 1317,840);
  
  normalCat(900,500);
  
}

void gameMap() {
 line (lx[1],ly[1],lx[2],ly[2]);
 line (lx[2],ly[2],lx[3],ly[3]);
 line (lx[3],ly[3],lx[4],ly[4]);
}

void normalCat(int x, int y) {
  translate(x, y);
  pushMatrix();
  fill(255);
  stroke(0);
  strokeWeight(3);
  ellipse(0,0, 70,61);
  triangle(-20,-27, -10,-31, -17,-38);
  triangle(20,-27, 10,-31, 17,-38);
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
  
}

void gameMouseDragged() {
  
}

void gameMouseReleased() {
 
}

void gameKeyPressed() {
  if (dist(1300,840, mouseX, mouseY) < 40) {
    if (speedup == false) speedup = true;
    else if (speedup) speedup = false;
  }
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
