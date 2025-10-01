class Mover {
  PVector location;
  PVector velocity;
  float d;
  boolean alive;
  Mover() {
    d=100;
    location = new PVector (random(0, width), random(0, height));
    velocity = new PVector (1, 0);
    velocity.setMag(random(1, 5));
    velocity.rotate(radians(random(0, 360)));
    alive = true;
  }
  Mover(float x, float y) {
    d = 100;
    location = new PVector (x,y);
    velocity = new PVector (1, 0);
    velocity.setMag(random(1, 5));
    velocity.rotate(radians(random(0, 360)));
    alive = true;
  }

  void act() {
    move();
    bounceOffEdge();
    checkForDeletion();
  }

  void checkForDeletion(){
    if (dist(location.x,location.y,mouseX,mouseY) < d/2 && mousePressed){
      alive = false;
    }
  }

  void move() {
    location.add(velocity);
  }

  void bounceOffEdge() {
    if (location.x<0 || location.x > width) velocity.x = -velocity.x;
    if (location.y<0 || location.y > height) velocity.y = -velocity.y;
  }



  void showBody() {
    noStroke();
    fill(255, 50);
    circle(location.x, location.y, d);
  }


  void showConnections() {
    int i = 0;
    while (i < myMovers.size()) {
      Mover other = myMovers.get(i);
      float dist = dist(location.x, location.y, other.location.x, other.location.y);
      if (dist <=200) {
        float a = map(dist, 0, 200, 255, 0);
        stroke(255, a);
        strokeWeight(2);
        line(location.x, location.y, other.location.x, other.location.y);
      }
      i++;
    }
  }
}
