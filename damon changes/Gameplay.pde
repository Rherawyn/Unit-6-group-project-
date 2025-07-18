int Mcat, Hcat, Scat, Rcat, Ncat;
float cx[];
float cy[];
int catCoins;

void gamePlay() {
  //ENEMY PATHFINDING
  for(int i = 0; i < ln-1; i ++) {
   cx[i] = (lx[i+1]-lx[i])/dist(lx[i],lx[i],lx[i+1],ly[i+1]);
   cy[i] = (ly[i+1]-ly[i])/dist(lx[i],lx[i],lx[i+1],ly[i+1]);
  }
  
  
  
  //ENEMY HEALTH STUFF
  for (normcat anEnemy : normalcatclass) {
    anEnemy.act();
  }

  for (squarecat anEnemy : squarecatclass) {
    anEnemy.act();
  }

  for (moab anEnemy : moabclass) {
    anEnemy.act();
  }

  for (rollcat anEnemy : rollcatclass) {
    anEnemy.act();
  }

  for (mediccat anEnemy : mediccatclass) {
    anEnemy.act();
  }

  for (int i = normalcatclass.size()-1; i >= 0; i--) {
    normcat anEnemy = normalcatclass.get(i);

    if (anEnemy.isDead == true) normalcatclass.remove(anEnemy);
  }

  for (int i = squarecatclass.size()-1; i >= 0; i--) {
    squarecat anEnemy = squarecatclass.get(i);

    if (anEnemy.isDead == true) squarecatclass.remove(anEnemy);
  }

  for (int i = moabclass.size()-1; i >= 0; i--) {
    moab anEnemy = moabclass.get(i);

    if (anEnemy.isDead == true) moabclass.remove(anEnemy);
  }

  for (int i = rollcatclass.size()-1; i >= 0; i--) {
    rollcat anEnemy = rollcatclass.get(i);

    if (anEnemy.isDead == true) rollcatclass.remove(anEnemy);
  }

  for (int i = mediccatclass.size()-1; i >= 0; i--) {
    mediccat anEnemy = mediccatclass.get(i);

    if (anEnemy.isDead == true) mediccatclass.remove(anEnemy);
  }
}
