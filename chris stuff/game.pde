void game() {
  
  wTimer += 1;
  if (wTimer == 40) wTimer = 0;
  heal += 1;
  if (heal == 160) heal = 0;
  
  background(white);
  strokeWeight(7); //purchase menu outline
  stroke(black);
  fill(black);
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
  
  
  //Chris jumble gibberish code stuff from this point on :D
  placeable = true;
  
  strokeWeight(7*0.7);
  for(firewiz aWiz : firewizardclass){
    if(aWiz.firering) {
      stroke(red);
      fill(yelloworange);
      circle(aWiz.x, aWiz.y, 600*0.7);
      noFill();
      for(int l = 0; l < 20; l++) {
        for(boolean i = false; i == false;) {
          float ranx = random(-200 + aWiz.x,200 + aWiz.x);
          float rany = random(-200 + aWiz.y,200 + aWiz.y);
          if(dist(ranx,rany, aWiz.x,aWiz.y) < 270*0.7) {
            pushMatrix();
            translate(ranx,rany);
            rotate(radians(random(360)));
            arc(0,0, 50*0.7,50*0.7, radians(0),radians(random(360)));
            popMatrix();
            break;
          }
        }
      }
    }
  }
  
  for(firewiz aWiz : firewizardclass){
    aWiz.act();
    if(dist(aWiz.x,aWiz.y, mouseX,mouseY) < 100) placeable = false;
  }
  
  for(icewiz aWiz : icewizardclass){
    aWiz.act();
    if(dist(aWiz.x,aWiz.y, mouseX,mouseY) < 100) placeable = false;
  }
  
  for(ice aBullet : icebulletclass){
    aBullet.act();
  }
  
  for(elecwiz aWiz : elecwizardclass){
    aWiz.act();
    if(dist(aWiz.x,aWiz.y, mouseX,mouseY) < 100) placeable = false;
  }
  
  for(sword aSword : swordguyclass){
    aSword.act();
    if(dist(aSword.x,aSword.y, mouseX,mouseY) < 100) placeable = false;
  }
  
  for(sniper aSniper : sniperguyclass){
    aSniper.act();
    if(dist(aSniper.x,aSniper.y, mouseX,mouseY) < 100) placeable = false;
  }
  
  for(farm aFarm : farmfarmclass){
    aFarm.act();
    if(dist(aFarm.x,aFarm.y, mouseX,mouseY) < 100) placeable = false;
  }
  
  for(int i = icebulletclass.size()-1; i >= 0; i--) {
    ice aBullet = icebulletclass.get(i);
    
    if(aBullet.shouldRemove == true) icebulletclass.remove(aBullet);
  }
  
  if(mouseX < 35 || mouseX > width-235 || mouseY < 35 || mouseY > height - 35) placeable = false;
  //if you held the mouse
  if(towerThingHeld) {
    pushMatrix();
    translate(mouseX,mouseY);
    strokeWeight(7);
    rotate(radians(90));
    scale(0.7);
    textAlign(CENTER, CENTER);
    
    if(tower == "fire") {
      placementCircle(600);
      rotate(radians(45));
      stroke(black);
      fill(brown);
      rect(-5,0, 10,-80, 50);
      fill(red);
      stroke(black);
      circle(0,-80, 20);
      fill(orange);
      noStroke();
      circle(0,-80, 6);
      strokeWeight(7);
      rotate(radians(-45));
      stroke(black);
      fill(red);
      circle(0,0, 100);
      circle(0,10, 60);
      circle(0,15, 30);
      circle(0,27, 20);
      
    } else if(tower == "ice") {
      placementCircle(1000);
      stroke(black);
      fill(blue);
      circle(0,0, 100);
      circle(0,10, 60);
      circle(0,15, 30);
      circle(0,27, 20);
      
    } else if(tower == "elec") {
      placementCircle(800);
      stroke(black);
      fill(yellow);
      circle(0,0, 100);
      circle(0,10, 60);
      circle(0,15, 30);
      circle(0,27, 20);
      
    } else if(tower == "sword") {
      placementCircle(400);
      stroke(black);
      fill(50);
      circle(0,0, 100);
      noFill();
      arc(0,5, 70,70, radians(230),radians(310));
      translate(0,20);
      fill(red);
      stroke(red);
      strokeWeight(2);
      triangle(0,-20, 15,-10, -15,-10);
      
      triangle(0,-15, 20,0, -20,0);
      triangle(0,-15, 20,0, -20,0);
      
      triangle(20,-10, -20,-10, 0,20);
      
      triangle(-20,20, 0,20, -10,5);
      triangle(20,20, 0,20, 10,5);
      
      triangle(10,20, -10,20, 0,50);
      
      quad(0,30, 10,40, 0,15, -10,40);
      
    } else if(tower == "sniper") {
      placementCircle(10000);
      stroke(black);
      fill(200);
      circle(0,0, 100);
    } else {
      placementCircle(110);
      rotate(radians(-90));
      for(int i = 0; i<5; i++) {
        fill(150);
        noStroke();
        quad(-10,-70, 10,-70, 12,-50, -12,-50);
        noFill();
        stroke(black);
        line(-10, -70, 10, -70);
        arc(-30,-60, 40,40, radians(-30),radians(35));
        arc(30,-60, 40,40, radians(145),radians(210));
        rotate(radians(360/5));
      }
      stroke(black);
      fill(150);
      circle(0,0, 100);
      textSize(70);
      fill(100, 200, 0);
      text("$", 0,-5);
    }
    popMatrix();
  }
  
  
  //ponter
  pointerclass.add(new pointer());
  for(pointer aPointer : pointerclass){
    aPointer.act();
  }
  for(int i = pointerclass.size()-1; i >= 0; i--) {
    pointer aPointer = pointerclass.get(i);
    
    if(aPointer.shouldRemove == true) pointerclass.remove(aPointer);
  }
  
  textAlign(LEFT, CENTER);
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
  
  //Chris code to show tower before placed
  if(mouseButton == LEFT) towerThingHeld = true;
  if(mouseButton == RIGHT) towerThingHeld = false;
}

void gameMouseDragged() {
  
}

void gameMouseReleased() {
  //Chris code for making new class instance
  if(mouseButton == LEFT) {
    if(placeable && towerThingHeld) {
      if(tower == "fire") firewizardclass.add(new firewiz());
      if(tower == "ice") icewizardclass.add(new icewiz());
      if(tower == "elec") elecwizardclass.add(new elecwiz());
      if(tower == "sword") swordguyclass.add(new sword());
      if(tower == "sniper") sniperguyclass.add(new sniper());
      if(tower == "farm") farmfarmclass.add(new farm());
    }
    towerThingHeld = false;
  }
}

void gameKeyPressed() {
  if (key == 'a') { //remove enemy
    normcat anEnemy = normalcatclass.get(0);
    normalcatclass.remove(anEnemy);
  }
  
  if (key == 's') {
    squarecat anEnemy = squarecatclass.get(0);
    squarecatclass.remove(anEnemy);
  }
  
  if (key == 'd') {
    moab anEnemy = moabclass.get(0);
    moabclass.remove(anEnemy);
  }
  
  if (key == 'f') {
    rollcat anEnemy = rollcatclass.get(0);
    rollcatclass.remove(anEnemy);
  }
  
  if (key == 'g') {
    mediccat anEnemy = mediccatclass.get(0);
    mediccatclass.remove(anEnemy);
  }
  
  
  
  
  if (key == 'z') { //spawn enemy
    normalcatclass.add(new normcat());
  }
  if (key == 'x') {
    squarecatclass.add(new squarecat());
  }
  if (key == 'c') { 
    moabclass.add(new moab());
  }
  if (key == 'v') {
    rollcatclass.add(new rollcat());
  }
  if (key == 'b') {
    mediccatclass.add(new mediccat());
  }
  
  //Chris keys for placement
  if(key == '1' || key == '!') tower = "fire";
  if(key == '2' || key == '@') tower = "ice";
  if(key == '3' || key == '#') tower = "elec";
  if(key == '4' || key == '$') tower = "sword";
  if(key == '5' || key == '%') tower = "sniper";
  if(key == '6' || key == '^') tower = "farm";
}
  

void gameKeyReleased() {
  
}

void gameMap() {
  int i = 0;
  while (i < ln-1) {
 line (lx[i],ly[i],lx[i+1],ly[i+1]);
 i ++;
  }
}

void placementCircle(float size) {
  stroke(100);
  fill(200, 100);
  if(!(placeable)) {
    stroke(red);
    fill(red, 50);
  }
  circle(0,0, size);
}
