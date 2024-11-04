//week08_02_RPG_background_640_480_rect_32_32
int[][]floor={
  {4,1,1,1,1,1,1,8,1,1,1,8,1,1,9,2,2,3,4,5,6,3,2},
  {4,1,1,1,1,1,8,1,3,1,1,8,1,1,9,2,2,3,4,5,6,8,9},
  {4,1,1,1,1,1,8,1,1,1,8,1,1,1,9,2,2,3,4,5,6,7,8},
  {4,1,1,1,1,1,1,8,1,1,1,8,1,1,9,2,2,3,4,5,6,3,2},
  {4,1,1,1,1,1,8,1,3,1,1,8,1,1,9,2,2,3,4,5,6,8,9},
  {4,1,1,1,1,1,8,1,1,1,8,1,1,1,9,2,2,3,4,5,6,7,8},
  {4,1,1,1,1,1,1,8,1,1,1,8,1,1,9,2,2,3,4,5,6,3,2},
  {4,1,1,1,1,1,8,1,3,1,1,8,1,1,9,2,2,3,4,5,6,8,9},
  {4,1,1,1,1,1,8,1,1,1,8,1,1,1,9,2,2,3,4,5,6,7,8},
  {4,1,1,1,1,1,1,8,1,1,1,8,1,1,9,2,2,3,4,5,6,3,2},
  {4,1,1,1,1,1,8,1,3,1,1,8,1,1,8,2,2,3,4,5,6,8,9},
  {4,1,1,1,1,1,8,1,1,1,8,1,1,1,8,2,2,3,4,5,6,7,8},
  {4,1,1,1,1,1,1,8,1,1,1,8,1,1,9,2,2,3,4,5,6,3,2},
  {4,1,1,1,1,1,8,1,3,1,1,8,1,1,8,2,2,3,4,5,6,8,9},
  {4,1,1,1,1,1,8,1,1,1,8,1,1,1,7,2,2,3,4,5,6,7,8},
  {4,1,1,1,1,1,1,8,1,1,1,8,1,1,8,2,2,3,4,5,6,3,2},
  {4,1,1,1,1,1,8,1,3,1,1,8,1,1,6,2,2,3,4,5,6,8,9},
  {4,1,1,1,1,1,8,1,1,1,8,1,1,1,5,2,2,3,4,5,6,7,8},
  {4,1,1,1,1,1,1,8,1,1,1,8,1,1,8,2,2,3,4,5,6,3,2},
  {4,1,1,1,1,1,8,1,3,1,1,8,1,1,2,2,2,3,4,5,6,8,9},
  {4,1,1,1,1,1,8,1,1,1,8,1,1,1,2,2,2,3,4,5,6,7,8},
};
PImage img,user;
PImage []fimg=new PImage[40];
void setup(){
  size(640,480);//15格=480
 user = loadImage("7.png");
  for(int i=1;i<22;i++)fimg[i]=loadImage(i+".png");
}
int userI=12,userJ=15;
void draw(){
  
  for(int i=0; i<floor.length;i++){//高度480對應y座標 左手i
      for(int j=0; j<15;j++){//寬度640對應y座標 右手i
        int now=floor[i][j];
        image(fimg[now],j*32,i*32);
     }
  }
  image(user,userJ*32,userI*32);
}
void keyPressed(){
  int newI=userI,newJ=userJ;
  if(keyCode==RIGHT)newJ++;
  if(keyCode==LEFT)newJ--;
  if(keyCode==UP)newI--;
  if(keyCode==DOWN)newI++;
  if(floor[newI][newJ]!=1 && floor[newI][newJ]!=2){
    userI=newJ;
    userJ=newJ;
  }
}
 