class pointer {
  float x,y, opas;
  boolean shouldRemove;
  
  pointer() {
    x = mouseX;
    y = mouseY;
    opas = 255;
    boolean shouldRemove = false;
  }
  
  void act() {
    noStroke();
    fill(pink, opas);
    circle(x,y, 20);
    
    opas -= 20;
    if (opas <= 0) shouldRemove = true;
  }
}
