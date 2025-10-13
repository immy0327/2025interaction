//week06_1_sound_library_play
//File-Preference 字型大一點
//Sketch-Library-ManageLibraries，找Sound安裝他
//File-Examples_Libraries核心函式庫-Sound-soundfile-SimplePlayback
//參考這個範例有聲音 有相關的函式可學習參考
import processing.sound.*; //使用聲音的外掛模組
SoundFile sound;  //宣告SoundFile物件變數
void setup(){
  size(500,400); //視窗大小
  sound = new SoundFile(this, "music.mp3");  //將聲音檔設好
  //老師把music.mp3傳給我，然後把它拉進程式裡
  sound.play(); //播放聲音
}
void draw(){
}
