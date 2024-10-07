void setup(){
  size(400,600);
  c = new PVector(200,100);//new出新物件
  p = new PVector(200,130);//new出新物件
}
PVector c,p;
void draw(){
  background(255);
  ellipse(c.x,c.y,10,10);//使用物件c,x
  ellipse(p.x,c.y,10,10);
}
