class Card {
  int x, y;
  Card(int _x, int _y) {//建構函式
    x=_x;
    y=_y;
  }
  void draw() {
    rect(x, y, 100, 150);
  }
}//下面:照著卡片類別，發明一個物件card1
Card card1=new Card(100,100);
void setup(){
  size(500,400);
}
void draw(){
  card1.draw();
}
