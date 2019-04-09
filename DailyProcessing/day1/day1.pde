float centX, centY;
float x, y;

void setup() {
  
  size(1000, 600);
  background(50);
  stroke(255);
  
}


void draw() {
  
  centX = width/2;
  centY = height/2;
  
  for (float radius = 100; radius <= 500; radius +=10) {
    
    for (float ang = 0; ang <= 360; ang += 5){
      float rad = radians(ang);
      x = centX + (radius * cos(rad));
      y = centY + (radius * sin(rad));
      point(x, y);
  }
  
 }
 
  saveFrame("screen.jpg");

}
