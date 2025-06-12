//Tower Defence
//Gabriel Somthing, Christopher Bennett, Damon Chan
String mode = "game";
String tower = "fire";
boolean towerThingHeld = false;
boolean placeable = false;

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
color brown = #49311d;
color pink = #FF8DA1;
color black = 0;
color white = 255;
float background = 100;
float s = 120;
float b = 255;

ArrayList<pointer> pointerclass;

ArrayList<firewiz> firewizardclass;
ArrayList<icewiz> icewizardclass;
ArrayList<elecwiz> elecwizardclass;
ArrayList<ice> icebulletclass;
ArrayList<sword> swordguyclass;

void setup() {
  size(1400,900);
  colorMode(HSB);
  textAlign(CENTER,CENTER);
  
  strokeWeight(7);
  stroke(black);
  fill(red);
  
  pointerclass = new ArrayList<pointer>();
  
  firewizardclass = new ArrayList<firewiz>();
  icewizardclass = new ArrayList<icewiz>();
  elecwizardclass = new ArrayList<elecwiz>();
  icebulletclass = new ArrayList<ice>();
  swordguyclass = new ArrayList<sword>();
  
}

void draw() {
  if(mode == "game") game();
  else if(mode == "intro") intro();
  else if(mode == "options") options();
  else if(mode == "gameover") gameover();
  else pause();
}
