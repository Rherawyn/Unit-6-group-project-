class firewiz {
  float x,y, rot;
  boolean switching = false;
  int firering;
  
  firewiz() {
    x=mouseX;
    y=mouseY;
    rot = 50;
    firering = 0;
  }
  
  void act() {
    if(rot<=0) switching = true;
    if(rot>=45) switching = false;
    
    if(switching == false) rot -= 10;
    if(switching == true) rot += 0.2;
    
    pushMatrix();
    translate(x,y);
    scale(1);
    rotate(atan2(mouseY-y,mouseX-x)+radians(90+rot));
    stroke(black);
    fill(brown);
    rect(-5,0, 10,-80, 50);
    fill(orange);
    stroke(red);
    circle(0,-80, 15);
    rotate(radians(-rot));
    stroke(orange);
    fill(red);
    circle(0,0, 100);
    circle(0,10, 60);
    circle(0,15, 30);
    circle(0,27, 20);
    popMatrix();
  }
}
