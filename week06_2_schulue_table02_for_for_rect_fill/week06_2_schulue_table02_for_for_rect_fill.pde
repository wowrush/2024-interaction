void setup(){
  size(500,500);
  textSize(50);
  textAlign(CENTER,CENTER);
}
void draw(){
  for(int i=0;i<5;i++){
    for(int j=0;j<5;j++){
      fill(255); rect(j*100,i*100,100,100);
      fill(0); text("1",50+j*100,50+i*100);
    }
  }
}
