//Tower Defence
//Gabriel Somthing, Christopher Bennett, Damon Chan
String mode = "game";

float background = 100;
float s = 120;
float b = 255;

void setup() {
  size(1400,900);
  colorMode(HSB);
}

void draw() {
  if(mode == "game") game();
  else if(mode == "intro") intro();
  else if(mode == "options") options();
  else if(mode == "gameover") gameover();
  else pause();
}
