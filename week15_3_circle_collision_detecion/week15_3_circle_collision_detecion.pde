//week15_3
void setup(){
  size(640,360);
}
Ball ball = new Ball(100,200,20);
Ball ball2 = new Ball(100,200,20);
void draw(){
  background(51);
  if(ball.checkCollision(ball2))fill(#FFAAAA);//有碰撞偵測就變色
  else fill(255);
  ball.update();//加這行
  ball.display();
  ball2.update();//加這行
  ball2.display();
}
