//week06_4_arduino_slow_jogging1
void setup() {
  // put your setup code here, to run once:
  pinMode(8, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  tone(8, 780, 60);  //自己決定聲音的HZ  pin8, 780 HZ, 60ms
  delay(300); //等0.333秒 換下一個音
  tone(8, 320, 60);  //自己決定聲音的HZ  pin8, 320 HZ, 60ms
  delay(333);  //等0.333秒 換下一個音

} //每秒會較3聲，60s會叫180聲, 180 BPM (Beat Per Minute)


