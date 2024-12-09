void setup() {
  size(500, 500);
}
int x=-1, y=-1;
void draw() {
  if (x!=-1) {
    ellipse(x, y, 1, 1);
    y++;//往下滴(x,y)座標中y慢慢變大,就是往下的感覺
  }
}
void mouseDragged() { //按下右鍵，才會滴水滴
  if (mouseButton==LEFT)line(mouseX, mouseY, pmouseX, pmouseY);
  if (mouseButton==RIGHT) {
    x=mouseX;
    y=mouseY;
  }
}
