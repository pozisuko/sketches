float x, y; 
int[] colors = {#8586A6, #6077A6, #2C3F59, #D97373};
int getColors() {
    return colors[(int)random(colors.length)];
}


void setup() {
  size(600, 600);
  background(#161D26);
  fill(getColors());
  noStroke();
  noLoop();
}


void draw() {
  
  float radius = 100;
  
  for (x = 0 ; x < 600; x += 50) {
    for (y = 0 ; y < 600; y += 50){
      arc(x, y, radius, radius, 0, HALF_PI);
      fill(getColors());
    }
  }
  saveFrame("color.png");
}
