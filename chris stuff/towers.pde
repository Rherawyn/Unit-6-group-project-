class firewiz {
  float x,y, rot;
  boolean switching = true;
  boolean firering = false;
  boolean can = true;
  
  firewiz() {
    x=mouseX;
    y=mouseY;
    rot = 46;
  }
  
  void act() {
    can = false;
    if(dist(x,y, mouseX,mouseY) < 300*0.7) can = true;
    
    if(rot<=0) switching = firering = true;
    if(rot>=45) switching = false;
    
    if(switching == false) rot -= 10;
    if(switching == true) rot += 0.2;
    
    if(firering && rot > 30) firering = false;
    
    if (can == false) {
      rot = 45;
      firering = false;
      switching = true;
    }
    
    pushMatrix();
    translate(x,y);
    scale(0.7);
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
  boolean can = true;
  
  icewiz() {
    x=mouseX;
    y=mouseY;
    charge = 0;
    size = 40;
  }
  
  void act() {
    can = false;
    if(dist(x,y, mouseX,mouseY) < 500*0.7) can = true;
    
    if(charge >= size) {
      charge = 0;
      icebulletclass.add(new ice(x,y, atan2(mouseY-y,mouseX-x)+radians(90) ));
    }
    charge+=0.6;
    
    if (can == false) {
      charge = 0;
    }
    
    pushMatrix();
    translate(x,y);
    scale(0.7);
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
  boolean beam;
  boolean can = true;
  
  elecwiz() {
    x=mouseX;
    y=mouseY;
    charge = 0;
    size = 60;
    side = 60;
    paused = 1;
    timer = 40;
    beam = false;
    
  }
  
  void act() {
    can = false;
    if(dist(x,y, mouseX,mouseY) < 400*0.7) can = true;
    
    if(charge >= size) {
      charge = 0;
      side = 60;
      paused = 1;
    }
    if(charge < size-paused) {
      charge+=0.3;
      side -= 0.3;
    } else {
      timer -= 1;
    }
    
    if (timer < 40 && timer >= 0) beam = true;
    
    if (timer == 0) {
      paused = 0;
      timer = 40;
      beam = false;
    }
    
    if (can == false) {
      charge = 0;
      size = 60;
      side = 60;
      paused = 1;
      timer = 40;
      beam = false;
    }
    
    pushMatrix();
    translate(x,y);
    scale(0.7);
    rotate(atan2(mouseY-y,mouseX-x)+radians(90 + side));
    strokeWeight(7);
    fill(yellow);
    noStroke();
    circle(0,-90, charge);
    rotate(radians(-side*2));
    circle(0,-90, charge);
    rotate(radians(side));
    if(beam) rect(-timer/2-2, -80, timer+4, -10000);
    stroke(black);
    fill(yellow);
    circle(0,0, 100);
    circle(0,10, 60);
    circle(0,15, 30);
    circle(0,27, 20);
    popMatrix();
  }
  
}



class sword {
  float x,y;
  
  sword() {
    x = mouseX;
    y = mouseY;
  }
  
  void act() {
    pushMatrix();
    translate(x,y);
    strokeWeight(7);
    scale(0.7);
    rotate(atan2(mouseY-y,mouseX-x)+radians(90));
    strokeWeight(7);
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
    
    
    //sword code
    translate(0, -30);
    stroke(70);
    fill(70);
    quad(0,-220, 0,-100, 15,-100, 10,-200);
    fill(50);
    quad(0,-220, 0,-100, -15,-100, -10,-200);
    fill(black);
    stroke(black);
    triangle(-25,-110, -15,-100, -15,-90);
    triangle(25,-110, 15,-100, 15,-90);
    quad(-15,-100, -15,-90, 15,-90, 15,-100);
    quad(-15,-90, 15,-90, 5,-85, -5,-85);
    quad(-5,-85, -5,-75, 5,-75, 5,-85);
    
    stroke(black);
    noFill();
    strokeWeight(7);
    line(-10,-200, -15,-100);
    line(10,-200, 15,-100);
    line(-10,-200, 0,-220);
    line(10,-200, 0,-220);
    line(-15,-100, 15,-100);
    
    line(-15,-100, -25,-110);
    line(15,-100, 25,-110);
    line(-25,-110, -15,-90);
    line(25,-110, 15,-90);
    line(-15,-90, -5,-85);
    line(15,-90, 5,-85);
    line(-5,-85, -5,-75);
    line(5,-85, 5,-75);
    
    strokeWeight(2);
    line(0,-220, 0,-100);
    
    fill(red);
    stroke(red);
    strokeWeight(2);
    quad(0,-105, 8,-100, 0,-95, -8,-100);
    quad(0,-78, 5,-73, 0,-68, -5,-73);
    
    
    stroke(black);
    noFill();
    strokeWeight(5);
    line(0,-105, 8,-100);
    line(8,-100, 0,-95);
    line(0,-95, -8,-100);
    line(0,-105, -8,-100);
    quad(0,-78, 5,-73, 0,-68, -5,-73);
    //line();
    //line();
    //line();
    //line();
    
    popMatrix();
  }
}



class sniper {
  float x,y;
  
  sniper() {
    x = mouseX;
    y = mouseY;
  }
  
  void act() {
    pushMatrix();
    translate(x,y);
    scale(0.7);
    rotate(atan2(mouseY-y,mouseX-x)+radians(90));
    strokeWeight(7);
    stroke(black);
    fill(200);
    circle(0,0, 100);
    popMatrix();
  }
}



class farm {
  float x,y, timer, pick, rot;
  
  farm() {
    x = mouseX;
    y = mouseY;
    timer = 0;
    pick = int(random(5));
    rot = 0;
  }
  
  void act() {
    pushMatrix();
    translate(x,y);
    scale(0.7);
    strokeWeight(7);
    textAlign(CENTER, CENTER);
    textSize(40);
    rotate(radians(rot));
    for(int i = 0; i<5; i++) {
      //fill(black);
      //if(pick == i) {
      //  if(rot <= 50) text("$", 0,-50 - rot);
      //  if(rot > 50) text("$", 0,-100);
      //}
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
    fill(100, 200, rot);
    text("$", 0,-5);
    popMatrix();
    //timer += 2;
    //if(timer >= 150) {
    //  timer = 0;
    //  pick = int(random(5));
    //}
    if (rot > 360) rot = 0;
    rot += 0.01;
    rot *= 1.03;
  }
}
