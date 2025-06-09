void game() {
  background(white);
  
  //println(firewizardclass.size());
  //println(icewizardclass.size());
  //println(icebulletclass.size());
  //println(elecwizardclass.size());
  //println(pointerclass.size());
  
  
  
  
  
  strokeWeight(7);
  for(firewiz aWiz : firewizardclass){
    if(aWiz.firering) {
      stroke(orange);
      fill(yellow);
      circle(aWiz.x, aWiz.y, 400);
      noFill();
      for(int l = 0; l < 10; l++) {
        for(boolean i = false; i == false;) {
          float ranx = random(-200 + aWiz.x,200 + aWiz.x);
          float rany = random(-200 + aWiz.y,200 + aWiz.y);
          if(dist(ranx,rany, aWiz.x,aWiz.y) < 170) {
            pushMatrix();
            translate(ranx,rany);
            rotate(radians(random(360)));
            arc(0,0, 50,50, radians(0),radians(random(360)));
            popMatrix();
            break;
          }
        }
      }
    }
  }
  
  for(firewiz aWiz : firewizardclass){
    aWiz.act();
  }
  
  for(icewiz aWiz : icewizardclass){
    aWiz.act();
  }
  
  for(ice aBullet : icebulletclass){
    aBullet.act();
  }
  
  for(elecwiz aWiz : elecwizardclass){
    aWiz.act();
  }
  
  for(int i = icebulletclass.size()-1; i >= 0; i--) {
    ice aBullet = icebulletclass.get(i);
    
    if(aBullet.shouldRemove == true) icebulletclass.remove(aBullet);
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
  if(tower == "fire") firewizardclass.add(new firewiz());
  if(tower == "ice") icewizardclass.add(new icewiz());
  if(tower == "elec") elecwizardclass.add(new elecwiz());
}

void gameMouseDragged() {
}

void gameMouseReleased() {
}

void gameKeyPressed() {
  if(key == '1' || key == '!') tower = "fire";
  if(key == '2' || key == '@') tower = "ice";
  if(key == '3' || key == '#') tower = "elec";
}

void gameKeyReleased() {
  
}
