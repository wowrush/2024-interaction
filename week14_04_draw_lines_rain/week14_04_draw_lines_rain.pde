PImage img;
void setup() {
  size(500, 500);
  img = createImage(500, 500, RGB);//用來畫圖的畫布
}//換黑背景,可以用mouse刮出彩色的線條
int x=250, y=0;
void draw() {
  background(img);
  ellipse(x, y, 20, 20);
  if (y<498 && img.pixels[x+y*250]==-16777216)y++;
}
void mouseDragged() {
  background(img);
  stroke(random(255), random(255), random(255));
  line(mouseX, mouseY, pmouseX, pmouseY);
  ellipse(x, y, 20, 20);
  loadPixels();
  img.loadPixels();
  for(int i=0; i<500*500; i++) img.pixels[i]=pixels[i];//把畫面色彩,搬到img裡
  img.updatePixels();
  updatePixels();
  ellipse(x, y, 20, 20);
}
