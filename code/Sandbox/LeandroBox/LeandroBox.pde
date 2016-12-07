



SDtimer timer;

void setup() {
  size(500,500);
  background(0);

  timer = new SDtimer(24, 60, 100, 100, 100,color(14, 194, 3));

}
void draw() {
  background(0);
  timer.Draw();
  if(mousePressed) {
    timer.unpause();
  }

}
