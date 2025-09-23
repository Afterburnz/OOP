class Mover {
  float x, y;
  int d;
  Mover() {
    x= width/2;
    y= height/2;
    d = int(random(25,100));
  }
  void show() {
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
