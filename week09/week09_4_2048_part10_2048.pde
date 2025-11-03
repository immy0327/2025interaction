//week09_4_2048_part10_2048
//先不要接 (week08_6_2048_processing_R_L_myPort_write)
//修改week08_5_2048_part5_keyPressed_keyCode_RIGHT_merge
//(1) 按方向鍵，板子往那個方向走
color[] c = {#CEC2B9, #EFE5DA, #EDE1CA, #EFB37E, #EF7F63, #EF7F63, #F76543, #F67C5F, #F59563, #F2B179, #EDE0C8, #E6DBDD}; //色彩2^1, 2^2, 2^3, 2^4 ... 2^6
color[] c2 = {#776E66, #776E66, #776E66, #FDF8F5, #FDF8F5, #FDF8F5, #FDF8F5, #FDF8F5, #FDF8F5, #FDF8F5, #FDF8F5, #FDF8F5}; //字色
int[] N = {0, 2, 4, 8, 16, 32, 64}; //對應的數字
int[][] B = {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}; //板子

void keyPressed() { // 找出陣列0的地方，挑1個地方變成空白
  if (keyCode == RIGHT) { // 按 右
    for (int i = 0; i < 4; i++) {
      int now = 3;
      for (int j = 3; j >= 0; j--) {
        if (B[i][j] > 0) {
          B[i][now] = B[i][j];
          while (now < 3 && B[i][now + 1] == B[i][now]) {
            B[i][now + 1]++;
            now++;
          }
        }
        now--;
      }
      for (int j = now; j >= 0; j--) {
        B[i][j] = 0;
      }
    }
  } else if (keyCode == LEFT) { // 按 左
    for (int i=0; i<4; i++) {
      int now = 0;
      for (int j=0; j<4; j++) {
        if (B[i][j] > 0) {
          B[i][now] = B[i][j];
          while (now>0 && B[i][now-1] == B[i][now]) {
            B[i][now-1]++;
            now--;
          }
          now++;
        }
      }
      for (int j = now; j < 4; j++) {
        B[i][j] = 0;
      }
    }
  } else if (keyCode == UP) { // 按 上
    for (int j = 0; j < 4; j++) { // 遍歷每一列
      int now = 0;
      for (int i = 0; i < 4; i++) { // 遍歷每一行
        if (B[i][j] > 0) {
          B[now][j] = B[i][j];
          while (now > 0 && B[now-1][j] == B[now][j]) {
            B[now - 1][j]++;
            now--;
          }
          now++;
        }
      }
      for (int i = now; i < 4; i++) {
        B[i][j] = 0;
      }
    }
  } else if (keyCode == DOWN) { // 按 下
    for (int j=0; j<4; j++) { // 遍歷每一列
      int now = 3;
      for (int i=3; i>=0; i--) { // 遍歷每一行，從下到上
        if (B[i][j] > 0) {
          B[now][j] = B[i][j];
          while (now < 3 && B[now+1][j] == B[now][j]) {
            B[now + 1][j]++;
            now++;
          }
          now--;
        }
      }
      for (int i = now; i >= 0; i--) {
        B[i][j] = 0;
      }
    }
  }

  genTwo(); // 在隨機位置生成 2
}

void genTwo() { //找出陣列0的地方，挑1個變成空白
  int zero = 0;
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      if (B[i][j] == 0) zero++; // 找到 0 的位置
    }
  }
  int ans = int(random(zero)); // 隨機選擇一個空位
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      if (B[i][j] == 0) {
        if (ans == 0) {
          B[i][j] = 1; // 2的1次方
          return;
        } else ans--;
      }
    }
  }
}

void setup() {
  size(410, 410); // 讓邊線漂亮一點
}

void draw() {
  background(188, 174, 162);
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      int id = B[i][j]; // 對應的代碼
      fill(c[id]); // 填充顏色
      noStroke(); // 不要黑色外框
      rect(j * 100 + 10, i * 100 + 10, 90, 90, 5); // 畫出方塊
      fill(c2[id]); // 文字顏色
      textAlign(CENTER, CENTER);
      textSize(60);
      text(N[id], j * 100 + 55, i * 100 + 55); // 顯示數字
    }
  }
}
