//week03_5_pin2_BUTTON_digitalRead_digitalWrite
//手動按按鈕,看到燈 「慢慢改變 now 之後, 把now變亮」
void setup() {
  // put your setup code here, to run once:
  pinMode(2, INPUT_PULLUP); //按鈕button 是 2 號,沒接下去,就會「拉高」
  for(int i=3; i<=13; i++){ //把pin  3,4,5,......,13都設為OUTPUT
    pinMode(i, OUTPUT); // 都是可以光的、發光的
  }

}
int now = 3; //現在是發亮的, 是 pin 3
void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(2)==LOW){ //按下去囉
    now == now + 1;
    if(now>13) now = 3;
    for(int i=3; i<=13; i++){
      digitalWrite(i, LOW); //全部清空、變成 LOW 不亮
    }

    digitalWrite(now, HIGH); // now 負責亮
    delay(500); //休息一下 等0.5秒,才不會運作
  }
}
