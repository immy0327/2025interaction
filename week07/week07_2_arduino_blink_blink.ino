//week07_2_arduino_blink_blink
//安裝好後，Select Board要選剛剛裝置管理員的那個 USB-Serial
//COM5 or COM4 or COM3, 選好後, 在Boards 打字 Arduino Uno 選它
//小心, 有一支腳要接地,另一隻腳要接13
//小心, 有一支腳要接地,另一隻腳要接12
void setup() {
  pinMode(12, OUTPUT); // 把第12支腳，能送出資料
  pinMode(13, OUTPUT); // 把第13支腳，能送出資料


}

void loop() {
  digitalWrite(12, LOW); //暗掉
  digitalWrite(13, HIGH); //發亮
  delay(500);
  digitalWrite(13, LOW); //暗掉
  digitalWrite(12, HIGH); //發亮
  delay(500);

}
