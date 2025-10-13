//week06_2_Example_Analyze_AudioWaveform
//使用File-Examples_Analyze核心函式庫-AudioWaveform
import processing.sound.*;

SoundFile sample; //宣告SoundFile 變數
Waveform waveform; //宣告Waveform 物件變數

int samples = 100; //一次讀多少sample: 100個sample

public void setup() {
  size(640, 360);
  //background(255);可註解掉

  sample = new SoundFile(this, "beat.aiff");//讀入音樂檔
  sample.loop(); //循環播放 vs. 之前 .play()是只撥放一次

  // Create the Waveform analyzer and connect the playing soundfile to it.
  waveform = new Waveform(this, samples);//想用100格，來分析音樂
  waveform.input(sample);//用剛剛的音樂檔，進行分析
}

public void draw() {
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  waveform.analyze();//進行波形分析
  
  beginShape();
  for(int i = 0; i < samples; i++){ //把這100格的座標，都算出來
    // Draw current data of the waveform
    // Each sample in the data array is between -1 and +1 
    vertex(
      map(i, 0, samples, 0, width),
      map(waveform.data[i], -1, 1, 0, height) //x座標，對應0....100的職，拉長到視窗的長度
    );
  }
  endShape();
}
