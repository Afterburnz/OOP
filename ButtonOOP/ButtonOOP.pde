Button [] myButtons;
int n = 5;
color black = #000000;
color white = #ffffff;
color purple = #b997e8;
color pink = #de4362;
color red = #ff3b3b;
color blue = #3bc7ff;
color green = #65ff42;

boolean mouseReleased;
boolean wasPressed;

void setup() {
  size(800, 800);
  myButtons=new Button[2];


  myButtons[0] =  new Button("purple", 600, 200, 300, 300, pink, purple);
  myButtons[1] = new Button("red", 200, 200, 300, 200, red, blue);
}


void draw() {
  background();
  myButtons[0].show();
  myButtons[1].show();
}
