PImage img;
void setup() {
  size(500, 300);
  img = loadImage("turkcy.png");
  imageMode(CENTER);
}
void turkcy(int x,int y) {
  pushMatrix();
  translate(x, y);
  rotate(radians(frameCount));
  image(img, 0, 0);
  popMatrix();
}
void draw(){
  background(255);
  turkcy(mouseX,mouseY);
  turkcy(100,100);
  turkcy(200,200);
  turkcy(300,200);
  turkcy(400,200);
}
