//week08_02_RPG_background_640_480_rect_32_32
PImage img;
void setup(){
  size(640,480);//15格=480
  img = loadImage("640x480.png");
}
void draw(){
  background(img);
  for(int i=0; i<20;i++){
      for(int j=0; j<15;j++){
        noFill();
        rect(j*32,i*32,32,32);
     }
  }
}
