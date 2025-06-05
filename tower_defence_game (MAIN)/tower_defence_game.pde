//Tower Defence
//Gabriel Somthing, Christopher Bennett, Damon Chan
String mode = "intro";

//set colour
color red = #F94144;
color orange = #F3722C;
color yelloworange = #F8961E;
color bloodorange = #F9844A;
color yellow = #F9C74F;
color green = #90BE6D;
color cyan = #43AA8B;
color greyblue = #4D908E;
color navy = #577590;
color blue = #277DA1;
color black = 0;
color white = 255;
float background = 100;
float s = 120;
float b = 255;

float x = width/2;
float y = height/2;

//array vars
float[] lx;
float[] ly;
int ln;


void setup() {
  size(1400,900);
  colorMode(HSB);
  textAlign(CENTER,CENTER);
  
  strokeWeight(7);
  stroke(black);
  fill(red);
  
  x = width/2;
  y = height/2;
}

void draw() {
  if(mode == "game") game();
  else if(mode == "intro") intro();
  else if(mode == "options") options();
  else if(mode == "gameover") gameover();
  else pause();
}

void mousePressed() {
  if(mode == "game") gameMousePressed();
  else if(mode == "intro") introMousePressed();
  else if(mode == "options") optionsMousePressed();
  else if(mode == "gameover") gameoverMousePressed();
  else pauseMousePressed();
}

void mouseDragged() {
  if(mode == "game") gameMouseDragged();
  else if(mode == "intro") introMouseDragged();
  else if(mode == "options") optionsMouseDragged();
  else if(mode == "gameover") gameoverMouseDragged();
  else pauseMouseDragged();
}

void mouseReleased() {
  if(mode == "game") gameMouseReleased();
  else if(mode == "intro") introMouseReleased();
  else if(mode == "options") optionsMouseReleased();
  else if(mode == "gameover") gameoverMouseReleased();
  else pauseMouseReleased();
}

void keyPressed() {
  if(mode == "game") gameKeyPressed();
  else if(mode == "intro") introKeyPressed();
  else if(mode == "options") optionsKeyPressed();
  else if(mode == "gameover") gameoverKeyPressed();
  else pauseKeyPressed();
}

void keyReleased() {
  if(mode == "game") gameKeyReleased();
  else if(mode == "intro") introKeyReleased();
  else if(mode == "options") optionsKeyReleased();
  else if(mode == "gameover") gameoverKeyReleased();
  else pauseKeyReleased();
}
