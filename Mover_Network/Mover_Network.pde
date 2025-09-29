Mover [] myMovers;
int n = 50;
void setup() {
  size(800, 800,P2D);
  myMovers = new Mover[n];

  int i = 0;
  while (i< n) {
    myMovers[i] = new Mover();
    i++;
  }
}
void draw() {
  background(0, 0, 0);
  int i = 0;
  while (i<n) {
    myMovers[i].act();
    myMovers[i].showBody();
    myMovers[i].showConnections();
    i++;
  }
}
