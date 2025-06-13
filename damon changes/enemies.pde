class normcat {
  float x, y;
  
  normcat() {
    x= random(width);
    y = random(height);
    
  }
  
  void act() {
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
  
}
