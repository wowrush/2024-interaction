PImage []  img = new PImage[3];
void setup(){
  size(550,370);
  img[0] = loadImage("snai101.png");
  img[1] = loadImage("snai102.png");
  img[2] = loadImage("snai103.png");

}
int I=0;
void draw(){
  background(img[I]);
  if(frameCount%60==0) I=(I+1)%3;
}
