
int c = 0;
class Mover {
  int r;
  int g;
  int b;
  float x, y;

  Mover() {
    x= width/2;
    y= height/2;
  }
  void show() {
    r = int(random(0, 256));
    g = int(random(0, 256));
    b = int(random(0, 256));
    strokeWeight(5);
    stroke(0);
    fill(r, g, b);
    circle(x, y, 100);
  }

  void act() {

    x = x+ random(-2, 2);
    y = y+ random(-2, 2);
  }
}
