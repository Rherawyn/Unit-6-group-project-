float catCoins = 3;
int cats;
float catType;
int rounds;
float catPause = 0;
float intermision = 0;
float[] catCost = new float [5];

void enemyspawns() {
  catCost[0] = 1;
  catCost[1] = 18;
  catCost[2] = 64;
  catCost[3] = 142;
  catCost[4] = 284;
  intermision ++;
  if (intermision > 50) {
    catPause ++;
    if (catPause >= 50) {
      catSpawn();
      catPause = 0;
      print(catCoins);
    }
  }
  if ( intermision > 300) {
    if (cats <= 0) {
      rounds ++;
      catCoins = round(sq(rounds)-(rounds/2)+3);
      intermision = 0;
      catPause = 0;
    }
  }
}

void catSpawn() {
  if (catCoins > 0) {
    catType = round(random(4));

    if (catCost[round(catType)] <= catCoins) {
      if (catType == 0) { //spawn enemy
        normalcatclass.add(new normcat());
      }
      if (catType == 1) {
        rollcatclass.add(new rollcat());
      }
      if (catType == 2) {
        mediccatclass.add(new mediccat());
      }
      if (catType == 3) {
        squarecatclass.add(new squarecat());
      }
      if (catType == 4) {
        moabclass.add(new moab());
      }
    } else {
      catSpawn();
    }
  }
}
