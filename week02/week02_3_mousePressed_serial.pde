//week02_3_mousePressed_serial
import processing.serial.*; //第一行，使用 USB 的 serial
Serial myPort; //第二行，宣告 USB 的 Serial 變數 myPort
void mousePressed(){
  myPort.write(' '); //第四行，mouse按下時，就送出' ' 出去
}
void setup(){
  size(400,400);
  myPort = new Serial(this, "COM4", 9600); //第三行，準備好
} //剛剛你在Arduino 裡設定 COM 多少，就多少
void draw(){
  if(mousePressed) background(#FF0000);
  else background(#00FF00);
}
