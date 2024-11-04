PImage board;//外面宣告變數
void setup(){
  size(600,400);
  board = loadImage("board.png");//裡面修改變數
}
float appleX=100,appleY=500,appleVX=3,appleVY=-30;
char appleKey;
void randomApple(){
  appleX=random(100,500);
  appleY=500;
  if(appleX<300)appleVX=random(0,8);
  else appleVX=random(-8,0);
  appleVY=random(-30,-20);
  appleKey=(char)('a'+int(random(26)));
}

void draw(){
  background(board);//裡面的變數
  fill(255,0,0);
  ellipse(appleX,appleY,80,80);//紅色的蘋果
  appleX+=appleVX;
  appleY+=appleVY;
  appleVY+=0.98;//重力加速度
  if(appleX>600 || appleX<0 || appleY>550){
    appleX=100;appleY=500;appleVX=5;appleVY=-30;
  }
}
  
