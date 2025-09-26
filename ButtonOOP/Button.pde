class Button {
  int x, y, w, h;
  boolean clicked;
  color highlight, normal;
  String text = "";



  Button(String t, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = t;
    highlight = high;
    normal = norm;
    clicked = false;
  }

  Button(int _x, int _y, int _w, int _h, PImage _i) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    i = _i;
    clicked = false;
  }
  Button(int _x, int _y, int _w, int _h, PImage[] _gif) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    gif  = _gif;
    clicked = false;
  }


  void show() {
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(highlight);
    } else {
      fill(normal);
    }
    stroke(0);
    strokeWeight(4);
    rect(x, y, w, h, 15);


    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(normal);
    } else {
      fill(highlight);
    }
    textSize(w/4);
    text(text, x, y);

    if (mouseReleased && mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      clicked = true;
      backgroundColor = highlight;
    } else {
      clicked = false;
    }
    imageMode(CENTER);

    image(i, 200, 650, 300, 200);
    image(gif[f], 600, 400, 300, 200);
    f=f+1;
    if (f == gif.length) f = 0;
  }
}
