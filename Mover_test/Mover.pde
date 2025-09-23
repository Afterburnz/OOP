class Mover {
  float x, y;

  Mover() {
    x= width/2;
    y= height/2;
  }
  void show() {
    strokeWeight(5);
    stroke(0);
    fill(255);
    circle(x, y, 100);
  }

  void act() {

    x = x+ random(-2, 2);
    y = y+ random(-2, 2);
  }
}
