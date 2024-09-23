int [][]board = new int [9][9]; //java 2D 陣列，預設0
void setup() {
  size(450, 450);
}
void draw() {
  background(200, 179, 92);
  strokeWeight(2);
  for (int i=0; i<9; i++) {
    line(25, 25+i*50, 425, 25+i*50);
    line(25+i*50, 25, 25+i*50, 425);
  }
  for (int i=0; i<9; i++) {
    for (int j=0; j<9; j++) {
      if (board[i][j]==1)ellipse(25+j*50, 25+i*50, 45, 45);
    }
  }
  ellipse(mouseX, mouseY, 45, 45);
}

void mousePressed(){
  int i=mouseY/50,j=mouseX/50;
  board[i][j] = 1;
}
