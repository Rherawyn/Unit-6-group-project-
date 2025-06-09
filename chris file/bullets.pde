class ice {
  float speed, size, wherex,wherey, rot, dist;
  boolean shouldRemove;
  
  ice(float x, float y, float rotation) {
    speed = 20;
    size = 40;
    wherex = x;
    wherey = y;
    rot = rotation;
    dist = 0;
    shouldRemove = false;
  }
  
  void act() {
    if(dist == width + 200) shouldRemove = true;
    
    strokeWeight(7);
    fill(blue);
    noStroke();
    pushMatrix();
    translate(wherex,wherey);
    rotate(rot);
    circle(0,-80 -dist, size);
    popMatrix();
    dist += 20;
  }
  
  
}
