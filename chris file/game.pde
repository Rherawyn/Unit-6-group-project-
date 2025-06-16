void game() {
  background(white);
  
  //println(firewizardclass.size());
  //println(icewizardclass.size());
  //println(icebulletclass.size());
  //println(elecwizardclass.size());
  //println(pointerclass.size());
  println(firewizardclass.size() + icewizardclass.size() + elecwizardclass.size() + swordguyclass.size() + sniperguyclass.size() + farmfarmclass.size());
  
  
  
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
  
  
  //if you held the f*cken mouse
  if(towerThingHeld) {
    pushMatrix();
    translate(mouseX,mouseY);
    strokeWeight(7);
    rotate(radians(90));
    scale(0.7);
    
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
      fill(200);
      circle(0,0, 100);
      fill(200);
      circle(0,10, 40);
      fill(255);
      rect(-20,-30, 40,10, 50, 50, 0, 0);
      
    } else if(tower == "sniper") {
      placementCircle(10000);
      stroke(black);
      fill(200);
      circle(0,0, 100);
    } else {
      placementCircle(110);
      rotate(radians(-90));
      stroke(black);
      fill(200);
      circle(0,0, 100);
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
}

void gameMousePressed() {
  if(mouseButton == LEFT) towerThingHeld = true;
  if(mouseButton == RIGHT) towerThingHeld = false;
}

void gameMouseDragged() {
}

void gameMouseReleased() {
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
  if(key == '1' || key == '!') tower = "fire";
  if(key == '2' || key == '@') tower = "ice";
  if(key == '3' || key == '#') tower = "elec";
  if(key == '4' || key == '$') tower = "sword";
  if(key == '5' || key == '%') tower = "sniper";
  if(key == '6' || key == '^') tower = "farm";
}

void gameKeyReleased() {
  
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
