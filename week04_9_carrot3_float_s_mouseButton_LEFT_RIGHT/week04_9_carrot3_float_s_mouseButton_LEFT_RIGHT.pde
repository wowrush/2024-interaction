void setup(){
  size(600,500);
  background(0);
  stroke(255);
  fill(0);
}
void draw(){
  //ellipse(mouseX,mouseY,100,100);
}
float s=25;
void mousePressed(){
  ellipse(mouseX,mouseY,s,s);
  if(mouseButton==LEFT) s*=1.1;
  if(mouseButton==RIGHT) s*=0.9;
}
