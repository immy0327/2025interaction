//week12_5_coins_falling_part1
//接金幣 (1) 有金幣 (2)掉下來
PImage imgCoin; //把圖檔,拉進程式裡
void setup(){
  size(300, 500);
  imgCoin = loadImage("coin.png");
}
float x = 0, y = 0;
void draw(){
  background(255);
  //image(img, mouseX, mouseY, 100, 100)
  image(imgCoin, x, y, 100, 100);
  y += 3;
}
