//week07_4_Arduino_analogWrite
void setup() {
  pinMode(11, OUTPUT); //第11個pin腳(有PM功能,可0-255輸出), 要輸出
} //這些特別的腳, 分別是 第3, 第5, 第6, 第9, 第10, 第11 共6個腳, 都可以控制它的亮暗程度 

int a=0;
void loop() {
  analogWrite(11, a); //亮的程度 , 是a的值
  a = (a+1) % 256; //會再亮一點點
  delay(10); //每0.01秒

}
