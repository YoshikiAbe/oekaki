void setup() {
  size(300, 300);
}

float a = 0;
void draw() {
  a += 0.01;
  
  // 色設定
  background(0);
  stroke(255, 0, 0);
  fill(255, 10, 0);

  // ハートのサイズ
  pushMatrix();
  translate(width / 2, height / 2);
  scale( 1 + 0.1 * sq(sin(a * 4) > 0 ? sin(a * 4) : 0) );
  translate(-width / 2, -height / 2);

  // ハートの形
  beginShape();
  vertex(150, 150);
  bezierVertex(150, 120, 100, 120, 100, 150);
  bezierVertex(100, 180, 150, 185, 150, 210);
  bezierVertex(150, 185, 200, 180, 200, 150);
  bezierVertex(200, 120, 150, 120, 150, 150);
  endShape();
  popMatrix();
}