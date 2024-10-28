//week08_02_RPG_background_640_480_rect_32_32
int[][]floor={
  {4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,3,4,5,6},
  {4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,3,4,5,6},
  {4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,3,4,5,6},
};
PImage img;
PImage []fimg=new PImage[40];
void setup(){
  size(640,480);//15格=480
  img = loadImage("640x480.png");
}
void draw(){
  
  for(int i=0; i<20;i++){//高度480對應y座標 左手i
      for(int j=0; j<15;j++){//寬度640對應y座標 右手i
        int now=floor[i][j];
        image(fimg[now],j*32,i*32);
     }
  }
}
 
