void setup(){
  size(500,500);
  background(255);
}
void draw(){
  //pixels
}
void mouseDragged(){
  if(mouseButton==LEFT){//左鍵拖曳
    line(mouseX,mouseY,pmouseX,pmouseY);
    loadPixels();//取出畫面的像素
    for(int i=1; i<width*height; i++){//全部的點,都循一下色彩
      if(pixels[i] != -1)pixels[i]=color(random(255),random(255),random(255));
    }//如果不是白色就是有畫圖碰到的pixels,都變成亂數的彩色
    updatePixels();
  }
}
