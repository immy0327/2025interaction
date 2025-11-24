//week12_7_coins_falling_part3_you got coins score
//修改自week12_6_coins_falling_part2_for_array_recycle_random
//接金幣 (5) 小人在下面接金幣 (6)得分
PImage imgCoin; //把圖檔,拉進程式裡
void setup(){
  size(300, 500);
  imgCoin = loadImage("coin.png");
  for(int i=0; i<10; i++){
    x[i] = random(300-100);
    y[i] = -100 - random(1000);
  }
}
float userX = 150, userY = 450; // 我們要控制小人
float [] x = new float[10];
float [] y = new float[10]; //float x = 0, y = 0;
int score = 0;
void draw(){
  background(255);
  for(int i=0; i<10; i++){
    rect(x[i]-1, y[i]-1, 102, 102); //用框框,了解座標
    image(imgCoin, x[i], y[i], 100, 100);
    y[i] += 3; //往下掉
    if(dist(userX,userY, x[i]+50, y[i]+50) < 50){ //夠近
      score += 100; //加分!!!
      x[i] = random(300-100); //金幣放在上面、 重生
      y[i] = -100 - random(1000);
    }
    if(y[i]>500){
      x[i] = random(300-100);
      y[i] = -100 - random(1000);
  }
 }
 fill(255, 0, 0); //紅色小人
 ellipse(userX, userY, 50, 10);
 if(keyPressed && keyCode==LEFT) userX--;
 if(keyPressed && keyCode==RIGHT) userX++;
 fill(0); //黑色得分數
 text("Sore: " +score, 200, 50);
}
