PImage img; 
void setup(){
  size(600,400); //因為圖檔大小，剛好是600X400
  img = loadImage("arufa.jpg");
  
}
  void draw(){
   image(img,0,0);
   noStroke();
   fill(200,200,255,128); //128代表半透明越小越透
   rect(mouseX,mouseY-80,70,50);
   
   rect(mouseX-30,mouseY-40,70,50);
   rect(mouseX+30,mouseY-40,70,50);
   
   rect(mouseX+60,mouseY,70,50);
   rect(mouseX,mouseY,70,50);
   rect(mouseX-60,mouseY,70,50);
   
   rect(mouseX-90,mouseY+40,70,50);
   rect(mouseX-30,mouseY+40,70,50);
   rect(mouseX+30,mouseY+40,70,50);
   rect(mouseX+90,mouseY+40,70,50);
   
    rect(mouseX+60,mouseY+80,70,50);
   rect(mouseX,mouseY+80,70,50);
   rect(mouseX-60,mouseY+80,70,50);
   
   rect(mouseX-30,mouseY+120,70,50);
   rect(mouseX+30,mouseY+120,70,50);
   
   rect(mouseX,mouseY+160,70,50);
 }
