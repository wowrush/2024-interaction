//week08_02_RPG_background_640_480_rect_32_32
PImage img;
void setup(){
  size(640,480);//15格=480
  img = loadImage("640x480.png");
}
void draw(){
  background(img);
  for(int i=0; i<20;i++){//高度480對應y座標 左手i
      for(int j=0; j<15;j++){//寬度640對應y座標 右手i
        noFill();
        stroke(0);
        rect(j*32,i*32,32,32);
     }
  }
  stroke(255,0,0);
  rect(J*32,I*32,32,32);
}
int I=-1,J=-1;
void mouseMoved(){//移動時，要修改
  
  I=mouseY/32;//小心Y
  J=mouseY/32;//小心X
}
void mousePressed(){
  PImage now=createImage(32,32,RGB);
  now.copy(img,J*32,I*32,32,32,0,0,32,32);
  now.save("1.png");
}
