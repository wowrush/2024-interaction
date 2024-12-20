//week08_02_RPG_background_640_480_rect_32_32
int[][]floor={
  {4,1,1,1,1,1,1,8,1,1,1,8,1,9,9,2,2,3,4,5,6,3,2},
  {4,1,1,1,1,1,8,1,3,1,1,8,1,9,9,2,2,3,4,5,6,8,9},
  {4,1,1,1,1,1,8,1,1,1,8,1,1,9,9,2,2,3,4,5,6,7,8},
  {4,1,1,1,1,1,1,8,1,1,1,8,1,9,9,2,2,3,4,5,6,3,2},
  {4,1,1,1,1,1,8,1,3,1,1,8,1,9,9,2,2,3,4,5,6,8,9},
  {4,1,1,1,1,1,8,1,1,1,8,1,1,9,9,2,2,3,4,5,6,7,8},
  {4,1,1,1,1,1,1,8,1,1,1,8,1,9,9,2,2,3,4,5,6,3,2},
  {4,1,1,1,1,1,8,1,3,1,1,8,1,9,9,2,2,3,4,5,6,8,9},
  {4,1,1,1,1,1,8,1,1,1,8,1,1,9,9,2,2,3,4,5,6,7,8},
  {4,1,1,1,1,1,1,8,1,1,1,8,1,9,9,2,2,3,4,5,6,3,2},
  {4,1,1,1,1,1,8,1,3,1,1,8,1,9,8,2,2,3,4,5,6,8,9},
  {4,1,1,1,1,1,8,1,1,1,8,1,1,9,8,2,2,3,4,5,6,7,8},
  {4,1,1,1,1,1,1,8,1,1,1,8,1,9,9,2,2,3,4,5,6,3,2},
  {4,1,1,1,1,1,8,1,3,1,1,8,1,9,8,2,2,3,4,5,6,8,9},
  {4,1,1,1,1,1,8,1,1,1,8,1,1,9,7,2,2,3,4,5,6,7,8},
  {4,1,1,1,1,1,1,8,1,1,1,8,1,9,8,2,2,3,4,5,6,3,2},
  {4,1,1,1,1,1,8,1,3,1,1,8,1,9,6,2,2,3,4,5,6,8,9},
  {4,1,1,1,1,1,8,1,1,1,8,1,1,9,5,2,2,3,4,5,6,7,8},
  {4,1,1,1,1,1,1,8,1,1,1,8,1,9,8,2,2,3,4,5,6,3,2},
  {4,1,1,1,1,1,8,1,3,1,1,8,1,9,2,2,2,3,4,5,6,8,9},
  {4,1,1,1,1,1,8,1,1,1,8,1,1,9,2,2,2,3,4,5,6,7,8},
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
  image(user,16,16);//左面的上面的圖
  textSize(30);
  text("Level:"+level,16,90);
  textSize(20);
  text("Live:"+live,16,150);
  text("attack:"+attack,16,170);
  text("defencse:"+defencse,16,200);
  text("magic:"+magic,16,230);
  text("exp:"+exp,16,260);
  text("coins:"+coin,16,290);
  image(user,userJ*32,userI*32);
  if(gameOver)background(0,255,0);
}
int level=1,live=2693,attack=14,defencse=16,magic=10,exp=75,coin=12;
boolean gameOver=false;
void keyPressed(){
  int newI=userI,newJ=userJ;
  if(keyCode==RIGHT)newJ++;
  if(keyCode==LEFT)newJ--;
  if(keyCode==UP)newI--;
  if(keyCode==DOWN)newI++;
  if(floor[newI][newJ]!=1 && floor[newI][newJ]!=2){

    userI=newJ;
    userJ=newJ;
    if(floor[userI][userJ]==9) gameOver=true;
    floor[userI][userJ]=2;
  }
}
 
