class Mover {
  float x, y;
  int d;
  Mover() {
    x= width/2;
    y= height/2;
  }
  void show() {
    d = int(random(25, 100));
    strokeWeight(5);
    stroke(0);
    fill(255);
    circle(x, y, d);
  }

  void act() {

    x = x+ random(-2, 2);
    y = y+ random(-2, 2);
  }
}
