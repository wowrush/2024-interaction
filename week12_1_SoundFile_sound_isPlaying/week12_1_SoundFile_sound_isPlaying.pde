//官網-Documentation文件-Libraies函式庫(圖書館)-sound聲音部分
//https://processing.org/reference/libraies.sound/index.html

import processing.sound.*;
SoundFile sound1,sound2;//兩段音樂
int playing=2;
void setup(){
  size (640,360);
  background(255);
  sound1=new SoundFile(this,"Intro Sound_Final.mp3");
  sound2=new SoundFile(this,"In Game Music.mp3");
}
void graw(){
  if(sound1.isPlaying()){//音樂1有沒有再播放
    playing=1;
  }else if(sound2.isPlaying()){//音樂2有沒有再播放
    playing=2;
  }else{
     if(playing==1)sound2.play();//換另外一首
     else sound1.play();
  }
}
