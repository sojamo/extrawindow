import extrawindow.*;

ExtraWindow ew1;
ExtraWindow ew2;

void setup() {
  size(400,400);
  ew1 = new ExtraWindow(this,"hello-a",100,100,200,200);
  ew2 = new ExtraWindow(this,"hello-b",100,300,200,200);
  ew1.smooth();
}

void draw() {
  ew1.stroke(255,40);
  ew1.line(100,100,mouseX,mouseY);
}

void keyPressed() {
  println(key);
  switch(key) {
    case('1'):
      ew1.setUndecorated(true);
      break;
    case('2'):
      ew1.setUndecorated(false);
      break;
  }
}

void mousePressed() {
  ew1.background(0);
}
