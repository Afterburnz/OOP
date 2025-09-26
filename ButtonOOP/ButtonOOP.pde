Button [] myButtons;
int n = 5;
color black = #000000;
color white = #ffffff;
color purple = #b997e8;
color pink = #de4362;
color red = #ff3b3b;
color blue = #3bc7ff;
color green = #65ff42;
color yellow = #fffc52;
color orange = #ff9238;
color gray = #828282;

boolean mouseReleased;
boolean wasPressed;

color backgroundColor;

PImage i;

void setup() {
  size(800, 800);
  i = loadImage("Image.jpg");

  myButtons=new Button[4];


  myButtons[0] = new Button("purple", 600, 275, 300, 350, pink, purple);
  myButtons[1] = new Button("red", 200, 150, 300, 200, red, blue);
  myButtons[2] = new Button("green", 200, 400, 300, 200, green, yellow);
  myButtons[3] = new Button(400, 650, 400, 200, i);
}


void draw() {
  if (myButtons[0].clicked) backgroundColor = myButtons[0].normal;
  if (myButtons[1].clicked) backgroundColor = myButtons[1].normal;
  if (myButtons[2].clicked) backgroundColor = myButtons[2].normal;
  if (myButtons[3].clicked) backgroundColor = black;

  background(backgroundColor);
  myButtons[0].show();
  myButtons[1].show();
  myButtons[2].show();
  myButtons[3].show();

  click();
}
