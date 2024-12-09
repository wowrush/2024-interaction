PImage img;
void setup() {
  size(500, 500);
  img = createImage(500, 500, RGB);//用來畫圖的畫布
  img.loadPixels();
  for (int i=0; i<500*500; i++)img.pixels[i] = color(#FFFFF2);//-14
  img.updatePixels();
}
int x=250, y=0;
void draw() {
  background(img);
  ellipse(x, y, 20, 20);
  if (img.pixels[x+y*250]==-14)y++;
}
void mouseDragged() {
  background(img);
  line(mouseX, mouseY, pmouseX, pmouseY);
  loadPixels();//取出畫面的像素
  img.loadPixels();
  for (int i=0; i<500*500; i++) img.pixels[i]=pixels[i];//把畫面色彩,搬到img裡
  img.updatePixels();
  updatePixels();
}
