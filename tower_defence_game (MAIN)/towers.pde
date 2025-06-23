class firewiz {
  float[] vals = {0,0,0, 0,0,0};
  float x, y, rot;
  boolean switching = true;
  boolean firering = false;
  boolean can = true;

  firewiz() {
    x=mouseX;
    y=mouseY;
    rot = 46;
    vals[0] = x;
    vals[1] = y;
    vals[2] = 300*0.7;
  }

  void act() {
    vals = targetEnemy(vals);
    can = false;
    if (dist(x, y, vals[3],vals[4]) < 300*0.7) can = true;

    if (rot<=0) switching = firering = true;
    if (rot>=45) switching = false;

    if (switching == false) rot -= 10;
    if (switching == true) rot += 0.2;

    if (firering && rot > 30) firering = false;

    if (can == false) {
      rot = 45;
      firering = false;
      switching = true;
    }

    pushMatrix();
    translate(x, y);
    scale(0.7);
    rotate(atan2(vals[4]-y, vals[3]-x)+radians(90+rot));
    strokeWeight(7);
    stroke(black);
    fill(brown);
    rect(-5, 0, 10, -80, 50);
    fill(red);
    stroke(black);
    circle(0, -80, 20);
    fill(orange);
    noStroke();
    circle(0, -80, 6);
    strokeWeight(7);
    rotate(radians(-rot));
    stroke(black);
    fill(red);
    circle(0, 0, 100);
    circle(0, 10, 60);
    circle(0, 15, 30);
    circle(0, 27, 20);
    popMatrix();
  }
}



class icewiz {
  float[] vals = {0,0,0, 0,0,0};
  float x, y, charge, size;
  boolean can = true;

  icewiz() {
    x=mouseX;
    y=mouseY;
    charge = 0;
    size = 40;
    vals[0] = x;
    vals[1] = y;
    vals[2] = 500*0.7;
  }

  void act() {
    vals = targetEnemy(vals);
    can = false;
    if (dist(x, y, vals[3],vals[4]) < 500*0.7) can = true;

    if (charge >= size) {
      charge = 0;
      icebulletclass.add(new ice(x, y, atan2(vals[4]-y, vals[3]-x)+radians(90) ));
    }
    charge+=0.6;

    if (can == false) {
      charge = 0;
    }

    pushMatrix();
    translate(x, y);
    scale(0.7);
    rotate(atan2(vals[4]-y, vals[3]-x)+radians(90));
    strokeWeight(7);
    fill(blue);
    noStroke();
    circle(0, -80, charge);
    stroke(black);
    fill(blue);
    circle(0, 0, 100);
    circle(0, 10, 60);
    circle(0, 15, 30);
    circle(0, 27, 20);
    popMatrix();
  }
}

class elecwiz {
  float[] vals = {0,0,0, 0,0,0};
  float x, y, charge, size, side, paused, timer;
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
    vals[0] = x;
    vals[1] = y;
    vals[2] = 400*0.7;
  }

  void act() {
    vals = targetEnemy(vals);
    can = false;
    if (dist(x, y, vals[3],vals[4]) < 400*0.7) can = true;

    if (charge >= size) {
      charge = 0;
      side = 60;
      paused = 1;
    }
    if (charge < size-paused) {
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
    translate(x, y);
    scale(0.7);
    rotate(atan2(vals[4]-y, vals[3]-x)+radians(90 + side));
    strokeWeight(7);
    fill(yellow);
    noStroke();
    circle(0, -90, charge);
    rotate(radians(-side*2));
    circle(0, -90, charge);
    rotate(radians(side));
    if (beam) rect(-timer/2-2, -80, timer+4, -10000);
    stroke(black);
    fill(yellow);
    circle(0, 0, 100);
    circle(0, 10, 60);
    circle(0, 15, 30);
    circle(0, 27, 20);
    popMatrix();
  }
}



class sword {
  float[] vals = {0,0,0, 0,0,0};
  float x,y, timer, swordPos;
  boolean can = true;
  
  sword() {
    x = mouseX;
    y = mouseY;
    timer = swordPos = 0;
    vals[0] = x;
    vals[1] = y;
    vals[2] = 200*0.7;
  }
  
  void act() {
    vals = targetEnemy(vals);
    pushMatrix();
    translate(x,y);
    strokeWeight(7);
    scale(0.7);
    rotate(atan2(vals[4]-y, vals[3]-x)+radians(90));
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
    translate(80+(swordPos), -30+(swordPos*2));
    rotate(radians(-22.5));
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
    
    popMatrix();
    can = true;
    if(dist(x,y, vals[3],vals[4]) > 200*0.7) can = false;
    if(timer == 280) timer = swordPos = 0;
    timer++;
    if(timer >= 0 && timer <= 200) swordPos += 0.2;
    if(timer >= 250 && timer < 258) swordPos -= 5;
    if (can == false) timer = swordPos = 0;
  }
}



class sniper {
  float[] vals = {0,0,0, 0,0,0};
  float x,y;
  float bx1,by1, bx2,by2;
  float mult;
  float time;
  boolean can = false;
  
  sniper() {
    x = mouseX;
    y = mouseY;
    mult = 40;
    bx1 = by1 = bx2 = by2 = 0.5;
    time = 0;
    vals[0] = x;
    vals[1] = y;
    vals[2] = 10000*0.7;
  }
  
  void act() {
    vals = targetEnemy(vals);
    time++;
    can = false;
    if(dist(vals[3],vals[4], x,y) < 10000) can = true;
    if(time == 500||!can) time = 0;
    pushMatrix();
    translate(x,y);
    scale(0.7);
    rotate(atan2(vals[4]-y, vals[3]-x)+radians(90));
    strokeWeight(7);
    stroke(black);
    fill(#2A340E);
    circle(0,0, 100);
    fill(#8a925e);
    noStroke();
    circle(-30,-20, 20);
    circle(10,10, 30);
    circle(30,-10, 20);
    circle(-20,30, 15);
    circle(0,-25, 25);
    circle(25,35, 10);
    circle(-15,-5, 10);
    circle(-40,10, 15);
    stroke(black);
    noFill();
    circle(0,0, 100);
    circle(0,0, 60);
    
    //bullet
    if (time >= 470 || time < 200) bulletSpin(bx1,by1, mult, 1);
    if(time >= 480 || time < 210) bulletSpin(bx2,by2, mult, -1);
    if(time >= 490 || time < 220) bulletSpin(bx1*-1,by1*-1, mult, 1);
    if(time >= 500 || time < 230) bulletSpin(bx2*-1,by2*-1, mult, -1);
    popMatrix();
  }
}



class farm {
  float x, y, timer, pick, rot;

  farm() {
    x = mouseX;
    y = mouseY;
    timer = 0;
    pick = int(random(5));
    rot = 0;
  }

  void act() {
    pushMatrix();
    translate(x, y);
    scale(0.7);
    strokeWeight(7);
    textAlign(CENTER, CENTER);
    textSize(40);
    rotate(radians(rot));
    for (int i = 0; i<5; i++) {
      //fill(black);
      //if(pick == i) {
      //  if(rot <= 50) text("$", 0,-50 - rot);
      //  if(rot > 50) text("$", 0,-100);
      //}
      fill(150);
      noStroke();
      quad(-10, -70, 10, -70, 12, -50, -12, -50);
      noFill();
      stroke(black);
      line(-10, -70, 10, -70);
      arc(-30, -60, 40, 40, radians(-30), radians(35));
      arc(30, -60, 40, 40, radians(145), radians(210));
      rotate(radians(360/5));
    }
    stroke(black);
    fill(150);
    circle(0, 0, 100);
    textSize(70);
    fill(100, 200, rot);
    text("$", 0, -5);
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

void bulletSpin(float x, float y, float mult, float side) {
  pushMatrix();
    translate(100*side+(x*mult), 0+(y*mult));
    noStroke();
    fill(yellow);
    quad(-5,10, -5,-10, 5,-10, 5,10);
    stroke(black);
    line(-5,10, 5,10);
    line(-5,10, -5,-10);
    line(5,10, 5,-10);
    arc(0,-10, 10,10, radians(180),radians(360));
    popMatrix();
}

float[] targetEnemy(float[] vals) {
  vals[3] = 0;
  vals[4] = 0;
  vals[5] = 0;
  for(normcat anEnemy : normalcatclass) {
    if(dist(anEnemy.x,anEnemy.y, vals[0],vals[1]) < vals[2] && vals[5] < anEnemy.posTal) {
      vals[3] = anEnemy.x;
      vals[4] = anEnemy.y;
      vals[5] = anEnemy.posTal;
    }
    
  }
  return vals;
}
