PImage board;//外面宣告變數
void setup(){
  size(600,400);
  board = loadImage("board.png");//裡面修改變數
}
float appleX=100,appleY=500,appleVX=3,appleVY=-30;
void draw(){
  background(board);//裡面的變數
  fill(255,0,0);
  ellipse(appleX,appleY,80,80);
  appleX+=appleVX;
  appleY+=appleVY;
  appleVY+=0.98;//重力加速度
  if(appleX>600){
    appleX=100;appleY=500;appleVX=5;appleVY=-30;
  }
}
  
