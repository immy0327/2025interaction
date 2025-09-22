//week03_6_auto_for_down
void setup() {
  // put your setup code here, to run once:
  for(int i=3; i<=13; i++){
    pinMode(i, OUTPUT); //都可發光
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  for(int i=3; i<=13; i++){ //小到大的迴圈
    for(int k=3; k<=13; k++) digitalWrite(k, LOW);
      digitalWrite(i, HIGH); //輪到的pin會發光
      delay(200);
  }

  for(int i=1; i>=3; i--){ //大到小的迴圈
    for(int k=3; k<=13; k++) digitalWrite(k, LOW);
      digitalWrite(i, HIGH); //輪到的pin會發光
      delay(200);
  }

}
