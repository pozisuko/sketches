int cols, rows;
int scl = 50;
int[] colors = {#0D1A26, #2F4959, #4F758C, #9FB3BF, #F2E0D5};
int getColors() {
    return colors[(int)random(colors.length)];
}


void setup() {
  size(600, 600);
  int w = 600;
  int h = 600;

  cols = w / scl;
  rows = h / scl;
  
}


void draw() {
  background(0);
  noStroke();
  noFill();
  noLoop();

  
  for (int y = 0 ; y < rows; y++) {
    beginShape(TRIANGLE_STRIP);
    for(int x = 0; x < cols + 1; x++) {
      vertex(x*scl, y*scl);
      fill(getColors());
      vertex(x*scl, (y+1)*scl);
      
    }
  endShape();
  
  } 
  saveFrame("color.png");
  
}
