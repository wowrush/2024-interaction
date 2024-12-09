void setup() {
  size(500, 500);
  background(#FFFFF2);
}
void draw() {
  if (mousePressed && mouseButton==LEFT) line(mouseX, mouseY, pmouseX, pmouseY);
  if (mousePressed && mouseButton==RIGHT) {
    loadPixels();//把畫面,讀入pixels[]陣列裡
    color c1 = pixels[mouseX+mouseY*500];//原本的色彩
    color c2 = color(random(255), random(255), random(255));//亂數色彩
    if (c1!=c2)myFloodFill(mouseX, mouseY, c1, c2);
    updatePixels();//把陣列的數值,放回畫面
  }
}
boolean isOk(int x,int y,color c1){
  if(x<0 || y<0 || x>=500 || y>=500)return false;//超過邊界,不能做
  if(pixels[x+y*500]!=c1)return false;//色彩原本的c1色彩不同,就不要變色
  return true;
}

void myFloodFill(int x, int y, color c1, color c2) {
  pixels[x+y*500]=c2;//這一格,設成新色彩
  if(isOK(x+1, y, c1))myFloodFill(x+1, y, c1, c2);//試右邊,色彩對嗎
  if(isOK(x-1, y, c1))myFloodFill(x-1, y, c1, c2);//試左邊,色彩對嗎
  if(isOK(x, y+1, c1))myFloodFill(x, y+1, c1, c2);
  if(isOK(x, y-1, c1))myFloodFill(x, y-1, c1, c2);
}//不要點太大區域,因為函式呼叫函式太多層,會被警告出錯
