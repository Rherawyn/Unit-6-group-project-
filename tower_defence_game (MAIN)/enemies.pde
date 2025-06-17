class normcat {
  int i = 1;
  float x = lx[1];
  float y = ly[1];
  float enemyHealth;
  boolean isDead = false;
  normcat() {
    enemyHealth = 5;
  }
  void act() {
    x = x + cx[i];
    y = y + cy[i];
    pushMatrix();
    translate(x, y);
    fill(255);
    stroke(0);
    strokeWeight(3);
    ellipse(0, 0, 70, 61);
    triangle(-20, -27, -10, -31, -17, -38);
    triangle(20, -27, 10, -31, 17, -38);
    triangle(-20, 26, -15, 28, -18, 30);
    triangle(20, 26, 15, 28, 18, 30);
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
    popMatrix();

    if(x == lx[i+1] && y == ly[i+1]){
      i ++;
    }

    if (enemyHealth <= 0) {
      isDead = true;
    }
  }
}


class squarecat {
  int i = 1;
  float x, y, enemyHealth;
  boolean isDead = false;
  squarecat() {
    x = cx[i];
    y = cy[i];
    enemyHealth = 20;
  }
  void act() {
    pushMatrix();
    translate(x, y);
    fill(255);
    stroke(0);
    strokeWeight(3);
    rect(-35, -30, 70, 53);
    triangle(-20, -30, -10, -30, -17, -38);
    triangle(20, -30, 10, -30, 17, -38);
    triangle(-20, 26, -15, 26, -18, 30);
    triangle(20, 26, 15, 26, 18, 30);
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
    popMatrix();
    
    if(x == lx[i] && y == ly[i]){
      i ++;
    }

    if (enemyHealth <= 0) {
      isDead = true;
    }
  }
}


class moab {
  int i = 1;
  float x, y, enemyHealth;
  boolean isDead = false;
  moab() {
    x = cx[i];
    y = cy[i];
    enemyHealth = 100;
  }
  void act() {
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
    circle(-11, -15, 2); //eyes
    circle(15, -13, 2);
    scale(2);
    strokeWeight(1.5);
    fill(255);
    triangle(-20, -27, -10, -31, -17, -38);
    triangle(20, -27, 10, -31, 17, -38);
    triangle(-20, 28, -15, 30, -18, 32);
    triangle(20, 28, 15, 30, 18, 32);
    popMatrix();
    
    if(x == lx[i] && y == ly[i]){
      i ++;
    }

    if (enemyHealth <= 0) {
      isDead = true;
    }
  }
}

class rollcat {
  int i = 1;
  float x, y, enemyHealth;
  boolean isDead = false;
  rollcat() {
    x = cx[i];
    y = cy[i];
    enemyHealth = 10;
  }
  void act() {
    pushMatrix();
    translate(x, y);
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
    circle(-11, -15, 2); //eyes
    circle(15, -13, 2);
    fill(0);
    triangle(-23, -27, -7, -31, -17, -42);
    triangle(23, -27, 7, -31, 17, -42);
    popMatrix();
    
    if(x == lx[i] && y == ly[i]){
      i ++;
    }

    if (enemyHealth <= 0) {
      isDead = true;
    }
  }
}


class mediccat {
  int i = 1;
  float x, y, enemyHealth;
  boolean isDead = false;
  mediccat() {
    x = cx[i];
    y = cy[i];
    enemyHealth = 15;
  }
  void act() {
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
    triangle(-20, 26, -15, 28, -18, 30); //legs
    triangle(20, 26, 15, 28, 18, 30);
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

    heal += 1;
    
    if(x == lx[i] && y == ly[i]){
      i ++;
    }

    if (heal >= 120 && heal <= 160) {
      stroke(#009312);
      fill(#00C418, 100);
      ellipse(0, 0, 250, 250);

      if (enemyHealth <= 0) {
        isDead = true;
      }
    }
    if (heal == 160) heal = 0;
    popMatrix();
  }
}
