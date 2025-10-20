//week07_3_arduino_blink_blink_blink
//修改自week07_2_arduino_blink_blink 只是多插兩支
//使用麵包版 , 每隔五洞是一版,所以用GND接之後
//小心, 有一支腳要接地,另一隻腳要接13
//小心, 有一支腳要接地,另一隻腳要接12
//小心, 有一支腳要接地,另一隻腳要接11
//小心, 有一支腳要接地,另一隻腳要接10
void setup() {
  pinMode(10, OUTPUT); 
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT); // 把第12支腳，能送出資料
  pinMode(13, OUTPUT); // 把第13支腳，能送出資料


}

void loop() {
  for(int i=10; i<=13; i++){
    digitalWrite(13, LOW); //暗掉
    digitalWrite(i-1, HIGH); //暗掉
    digitalWrite(i, LOW); //發亮
    delay(500);
  }

}
