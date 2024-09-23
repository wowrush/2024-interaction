PImage img; 
void setup(){
  size(600,400); //因為圖檔大小，剛好是600X400
  img = loadImage("arufa.jpg");
  
}
  void draw(){
   image(img,0,0);
   noStroke();
   fill(200,200,255,128); //128代表半透明越小越透
   rect(mouseX,mouseY,70,50);
 }
