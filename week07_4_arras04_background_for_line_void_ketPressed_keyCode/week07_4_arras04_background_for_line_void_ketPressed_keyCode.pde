void setup(){
  size(500,400);
}
void KeyPressed(){//每次都問一次
  if(keyCode==RIGHT) x+=1;
  if(keyCode==LEFT) x-=1;
  if(keyCode==UP) y-=1;
  if(keyCode==DOWN) y+=1;
}
float x=250,y=250;
void draw(){
  ///background(215,184,200);
  background(219);//灰底
  stroke(214);//灰底的線
  strokeWeight(1);
  for(int i=0;i<30;i++){
  line(0,i*30,500,i*30);
  line(i*30,0,i*30,500);
  }
  float dx = mouseX-x,dy=mouseY-y;
  float a = atan2(dy,dx);//atan2長度
  line(x,y,mouseX,mouseY);
  myTank(x,y,a);
}
void myTank(float x,float y,float a){
  translate(x,y);//移動
  rotate(a);//旋轉
  fill(167,167,175);
  stroke(110,110,113);
  strokeWeight(4);
  rect(20,-10,20,20);//砲管砲塔
  
  fill(204,102,156);
  stroke(124,84,105);
  strokeWeight(3);
  ellipse(0,0,55,55);//圓形身體
}
