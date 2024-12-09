PImage img234,img123;
void setup(){
  size(500,500);
  
  img234 = loadImage("234.png");
  img123 = loadImage("123.png");
  img123 = img234;
}
void draw(){
  background(#FFFFF2);
  imageMode(CENTER);
  image(img123,mouseX,mouseY);
  imageMode(CENTER);
  if(frameCount%120==0)cursor(img123);
  if(frameCount%120==60)cursor(img234);
}
