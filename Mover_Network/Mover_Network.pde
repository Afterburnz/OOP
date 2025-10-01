ArrayList<Mover> myMovers;
int n = 100;
void setup() {
  size(800, 800, P2D);
  myMovers = new ArrayList();

  int i = 0;
  while (i< n) {
    myMovers.add(new Mover());
    i++;
  }
}
void draw() {
  background(0, 0, 0);
  int i = 0;
  while (i<myMovers.size()) {
    Mover m = myMovers.get(i);
    m.act();
    m.showBody();
    m.showConnections();
    if(m.alive == false){
      myMovers.remove(i);
    }
    i++;
  }
}
