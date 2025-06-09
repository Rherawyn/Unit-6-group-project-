class firewiz {
  float x,y, rot;
  boolean switching = false;
  boolean firering = false;
  
  firewiz() {
    x=mouseX;
    y=mouseY;
    rot = 50;
  }
  
  void act() {
    if(rot<=0) switching = firering = true;
    if(rot>=45) switching = false;
    
    if(switching == false) rot -= 10;
    if(switching == true) rot += 0.2;
    
    if(firering && rot > 30) firering = false;
    
    
    pushMatrix();
    translate(x,y);
    scale(1);
    rotate(atan2(mouseY-y,mouseX-x)+radians(90+rot));
    strokeWeight(7);
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
    rotate(radians(-rot));
    stroke(black);
    fill(red);
    circle(0,0, 100);
    circle(0,10, 60);
    circle(0,15, 30);
    circle(0,27, 20);
    popMatrix();
  }
}



class icewiz {
  float x,y, charge, size;
  
  icewiz() {
    x=mouseX;
    y=mouseY;
    charge = 0;
    size = 40;
  }
  
  void act() {
    if(charge >= size) {
      charge = 0;
      icebulletclass.add(new ice(x,y, atan2(mouseY-y,mouseX-x)+radians(90) ));
    }
    charge+=0.6;
    
    pushMatrix();
    translate(x,y);
    scale(1);
    rotate(atan2(mouseY-y,mouseX-x)+radians(90));
    strokeWeight(7);
    fill(blue);
    noStroke();
    circle(0,-80, charge);
    stroke(black);
    fill(blue);
    circle(0,0, 100);
    circle(0,10, 60);
    circle(0,15, 30);
    circle(0,27, 20);
    popMatrix();
  }
  
}

class elecwiz {
  float x,y, charge, size, side, paused,timer;
  
  elecwiz() {
    x=mouseX;
    y=mouseY;
    charge = 0;
    size = 60;
    side = 60;
    paused = 1;
    timer = 40;
  }
  
  void act() {
    if(charge >= size) {
      charge = 0;
      side = 60;
      paused = 1;
      icebulletclass.add(new ice(x,y, atan2(mouseY-y,mouseX-x)+radians(90) ));
    }
    if(charge < size-paused) {
      charge+=0.3;
      side -= 0.3;
    } else {
      timer -= 1;
    }
    
    if (timer == 0) {
      paused = 0;
      timer = 40;
    }
    
    
    pushMatrix();
    translate(x,y);
    scale(1);
    rotate(atan2(mouseY-y,mouseX-x)+radians(90 + side));
    strokeWeight(7);
    fill(yellow);
    noStroke();
    circle(0,-90, charge);
    rotate(radians(-side*2));
    circle(0,-90, charge);
    rotate(radians(side));
    stroke(black);
    fill(yellow);
    circle(0,0, 100);
    circle(0,10, 60);
    circle(0,15, 30);
    circle(0,27, 20);
    popMatrix();
  }
  
}
