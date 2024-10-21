void setup(){
  size(500,400);
}
float x=250,y=250;
void draw(){
  background(215,184,200);
  float dx = mouseX-x,dy=mouseY-y;
  float a = atan2(dy,dx);//atan2長度
  strokeWeight(20);
  line(x,y,x+cos(a)*40,y+sin(a)*40);//cos()算出方向,sin()算出y方向
  
  fill(167,167,175);
  stroke(110,110,113);
  strokeWeight(4);
  rect(260,160,20,20);//砲管砲塔
  
  fill(204,102,156);
  stroke(124,84,105);
  strokeWeight(3);
  ellipse(x,y,55,55);
}
