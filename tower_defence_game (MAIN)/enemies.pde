class normcat {
  int i = 0;
  float x = lx[0];
  float y = ly[0];
  float enemyHealth;
  int w1 = 30;
  int w2 = 30;
  int blink = 0;
  float twitch = 0;
  int ear = -38;
  boolean isDead = false;
  normcat() {
    enemyHealth = 5;
  }
  void act() {
    if (dist(x, y, lx[i], ly[i]) > dist(lx[i], ly[i], lx[i+1], ly[i+1])) {
      i ++;
      println("yipee");
    }
    x = x + cx[i];
    y = y + cy[i];
    pushMatrix();
    translate(x, y);
    fill(255);
    stroke(0);
    strokeWeight(3);
    ellipse(0, 0, 70, 61);
    triangle(-20, -27, -10, -31, -17, -38);
    triangle(20, -27, 10, -31, 17, ear);
    triangle(-20, 26, -15, 28, -18, w1);
    triangle(20, 26, 15, 28, 18, w2);
    noFill();
    ellipse(-2, -8, 14, 10);
    ellipse(8, -8, 14, 10);
    fill(255);
    stroke(255);
    ellipse(5, -15, 45, 10);
    stroke(0);
    fill(0);
    circle(-11, -15, 2); //eyes
    circle(15, -13, 2);
    if (blink < 192) {
      circle(-11, -15, 2); //eyes
      circle(15, -13, 2);
    } else {
      line(-13, -15, -9, -15);
      line(13, -13, 17, -13);
    }
    if (twitch < 300) {
      ear = -38;
    } else {
      ear = -35;
    }
    if (wTimer >= 0 && wTimer <= 20) w1 = 30;
    if (wTimer > 20 && wTimer <= 40) w1 = 32;
    if (wTimer >= 0 && wTimer <= 20) w2 = 32;
    if (wTimer > 20 && wTimer <= 40) w2 = 30;
    if (blink == 200) blink = 0;
    if (twitch >= 310) twitch = 0;
    popMatrix();
    blink += 1;
    twitch += random(0, 3);

    if (x >= 1300) {
      isDead = true;
      health -= 5;
    }

    if (enemyHealth <= 0) {
      isDead = true;
    }
  }
}


class squarecat {
  int i = 0;
  float x = lx[0];
  float y = ly[0];
  float enemyHealth;
  int w1 = 30;
  int w2 = 30;
  int blink = 0;
  float twitch = 0;
  int ear = -38;
  boolean isDead = false;
  squarecat() {
    enemyHealth = 20;
  }
  void act() {
    if (dist(x, y, lx[i], ly[i]) > dist(lx[i], ly[i], lx[i+1], ly[i+1])) {
      i ++;
      println("yipee");
    }
    x = x + cx[i];
    y = y + cy[i];
    pushMatrix();
    translate(x, y);
    fill(255);
    stroke(0);
    strokeWeight(3);
    rect(-35, -30, 70, 53);
    triangle(-20, -30, -10, -30, -17, -38);
    triangle(20, -30, 10, -30, 17, ear);
    triangle(-20, 26, -15, 26, -18, w1-1);
    triangle(20, 26, 15, 26, 18, w2-1);
    noFill();
    ellipse(-2, -8, 14, 10);
    ellipse(8, -8, 14, 10);
    fill(255);
    stroke(255);
    ellipse(5, -15, 45, 10);
    stroke(0);
    fill(0);
    if (blink < 192) {
      circle(-11, -15, 2); //eyes
      circle(15, -13, 2);
    } else {
      line(-13, -15, -9, -15);
      line(13, -13, 17, -13);
    }
    if (twitch < 300) {
      ear = -38;
    } else {
      ear = -35;
    }
    if (wTimer >= 0 && wTimer <= 20) w1 = 29;
    if (wTimer > 20 && wTimer <= 40) w1 = 31;
    if (wTimer >= 0 && wTimer <= 20) w2 = 31;
    if (wTimer > 20 && wTimer <= 40) w2 = 29;
    if (blink == 200) blink = 0;
    if (twitch >= 310) twitch = 0;
    popMatrix();
    blink += 1;
    twitch += random(0, 3);

    if (x >= 1300) {
      isDead = true;
      health -= 15;
    }

    if (enemyHealth <= 0) {
      isDead = true;
    }
  }
}


class moab {
  int i = 0;
  float x = lx[0];
  float y = ly[0];
  float enemyHealth;
  int w1 = 30;
  int w2 = 30;
  int blink = 0;
  float twitch = 0;
  int ear = -38;
  boolean isDead = false;
  moab() {
    enemyHealth = 100;
  }
  void act() {
    if (dist(x, y, lx[i], ly[i]) > dist(lx[i], ly[i], lx[i+1], ly[i+1])) {
      i ++;
      println("yipee");
    }
    x = x + (cx[i] * 0.5);
    y = y + (cy[i] * 0.5);
    pushMatrix();
    translate(x, y);
    fill(255);
    stroke(0);
    strokeWeight(3);
    ellipse(0, 0, 140, 130);
    noFill();
    ellipse(-2, -8, 14, 10);
    ellipse(8, -8, 14, 10);
    fill(255);
    stroke(255);
    ellipse(5, -15, 45, 10);
    stroke(0);
    fill(0);
    if (blink < 192) {
      circle(-11, -15, 2); //eyes
      circle(15, -13, 2);
    } else {
      line(-13, -15, -9, -15);
      line(13, -13, 17, -13);
    }
    scale(2);
    strokeWeight(1.5);
    fill(255);
    triangle(-20, -27, -10, -31, -17, -38);
    triangle(20, -27, 10, -31, 17, ear);
    fill(0);
    triangle(-20, 28, -15, 30, -18, w1+2);
    triangle(20, 28, 15, 30, 18, w2+2);
    if (twitch < 300) {
      ear = -38;
    } else {
      ear = -35;
    }
    if (wTimer >= 0 && wTimer <= 20) w1 = 30;
    if (wTimer > 20 && wTimer <= 40) w1 = 32;
    if (wTimer >= 0 && wTimer <= 20) w2 = 32;
    if (wTimer > 20 && wTimer <= 40) w2 = 30;
    if (blink == 200) blink = 0;
    if (twitch >= 310) twitch = 0;
    popMatrix();
    blink += 1;
    twitch += random(0, 3);

    if (x >= 1300) {
      isDead = true;
      health -= 45;
    }

    if (enemyHealth <= 0) {
      isDead = true;
    }
  }
}

class rollcat {
  int i = 0;
  float x = lx[0];
  float y = ly[0];
  float enemyHealth;
  int blink = 0;
  float twitch = 0;
  int ear = -38;
  float angle;
  boolean isDead = false;
  rollcat() {
    enemyHealth = 10;
    angle = 0;
  }
  void act() {
    if (dist(x, y, lx[i], ly[i]) > dist(lx[i], ly[i], lx[i+1], ly[i+1])) {
      i ++;
      println("yipee");
    }
    x = x + (cx[i] * 2);
    y = y + (cy[i] * 2);
    pushMatrix();
    translate(x, y);
    rotate(angle);
    fill(0);
    stroke(255);
    strokeWeight(3);
    ellipse(0, 0, 70, 61);
    noFill();
    ellipse(-2, -8, 14, 10);
    ellipse(8, -8, 14, 10);
    fill(0);
    stroke(0);
    ellipse(5, -15, 45, 10);
    stroke(255);
    fill(255);
    if (blink < 192) {
      circle(-11, -15, 2); //eyes
      circle(15, -13, 2);
    } else {
      line(-13, -15, -9, -15);
      line(13, -13, 17, -13);
    }
    if (twitch < 300) {
      ear = -38;
    } else {
      ear = -35;
    }
    fill(0);
    triangle(-23, -27, -7, -31, -17, -40);
    triangle(23, -27, 7, -31, 17, ear-2);
    if (blink == 200) blink = 0;
    if (twitch >= 310) twitch = 0;
    popMatrix();
    angle += 0.09;
    blink += 1;
    twitch += random(0, 3);

    if (x >= 1300) {
      isDead = true;
      health -= 5;
    }

    if (enemyHealth <= 0) {
      isDead = true;
    }
  }
}


class mediccat {
  int i = 0;
  float x = lx[0];
  float y = ly[0];
  float enemyHealth;
  int w1 = 30;
  int w2 = 30;
  int blink = 0;
  boolean isDead = false;
  mediccat() {
    enemyHealth = 15;
  }
  void act() {
    if (dist(x, y, lx[i], ly[i]) > dist(lx[i], ly[i], lx[i+1], ly[i+1])) {
      i ++;
      println("yipee");
    }
    x = x + cx[i];
    y = y + cy[i];
    pushMatrix();
    translate(x, y);
    fill(255); //hat
    stroke(0);
    strokeWeight(3);
    line(-20, -26, -25, -50);
    line(20, -26, 25, -50);
    quad(-20, -26, 20, -26, 12, -56, -12, -56);
    noFill();
    arc(0, -50, 50, 10, radians(-40), radians(220));
    line(-19, -47, -20, -53);
    line(19, -47, 20, -53);
    fill(255);
    quad(-20, -26, 20, -26, 25, -47, -25, -47);
    fill(#DE6565);
    noStroke();
    rect(-3, -42, 6, 8);
    rect(-7, -40, 14, 3.5);

    fill(255);
    stroke(0);
    strokeWeight(3);
    ellipse(0, 0, 70, 61);
    triangle(-20, 26, -15, 28, -18, w1); //legs
    triangle(20, 26, 15, 28, 18, w2);
    noFill();
    ellipse(-2, -8, 14, 10);
    ellipse(8, -8, 14, 10);
    fill(255);
    stroke(255);
    ellipse(5, -15, 45, 10);
    stroke(0);
    fill(0);
    if (blink < 192) {
      circle(-11, -15, 2); //eyes
      circle(15, -13, 2);
    } else {
      line(-13, -15, -9, -15);
      line(13, -13, 17, -13);
    }

    if (heal >= 120 && heal <= 160) {
      stroke(#009312);
      fill(#00C418, 100);
      ellipse(0, 0, 250, 250);
    }
    if (wTimer >= 0 && wTimer <= 20) w1 = 30;
    if (wTimer > 20 && wTimer <= 40) w1 = 33;
    if (wTimer >= 0 && wTimer <= 20) w2 = 33;
    if (wTimer > 20 && wTimer <= 40) w2 = 30;
    if (blink == 200) blink = 0;

    popMatrix();
    blink += 1;

    if (x >= 1300) {
      isDead = true;
      health -= 7;
    }

    if (enemyHealth <= 0) {
      isDead = true;
    }
  }
}
