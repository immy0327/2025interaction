//File new (ctrl N)開新專案
//week01_2_pressed_textsize_text
void setup(){
  size(500,500);
}
void draw(){//用鍵盤來互動
  if(keyPressed){//記的關掉注音
    background(#FF0000);//紅色背景
    textSize(80);//很大字形
    text(""+key, 100, 100);
  }
}
