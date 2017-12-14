PVector ps;
void setup() {
  size(300, 300);
  background(0);
  frameRate(12);
  pos = new PVector(width / 2, height / 2);
}

void draw() {
  // 色設定
  background(0);
  fill(255, 255, 0);

  // 中心位置を指定
  translate(pos.x, pos.y);

  // 星の揺れ
  rotate(PI + sin(frameCount / 5) / 5);

  // 星の形
  beginShape();
  for ( int i = 0; i < 10; i++) {
    float r = (i % 2 == 0 ? 30 : 60);
    vertex(r * cos( i * TWO_PI / 10), r * sin(i * TWO_PI / 10));
  }
  endShape();
}

void mouseClicked() {
  pos = new PVector(mouseX, mouseY);
}