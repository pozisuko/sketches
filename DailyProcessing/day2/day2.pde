void setup() {

  size(1000, 600);
  background(200);
  stroke(0);
  fill(0);

}


void draw() {
  
  float centX, centY;
  
  centX = width/2;
  centY = height/2;
  
  ellipse(centX, centY, 100, 100);
  noFill();

  float x, y;
  float radius, ang;
  float thisRadius, rad;
  float radiusNoise = random(1);

  for (radius = 100; radius <= 600; radius += 120) {
   
    for (ang = 0; ang <= 360; ang += 1) {
      
      radiusNoise += 0.1;
      thisRadius = radius + (noise(radiusNoise) * 180) - 400;
      rad = radians(ang);
      x = centX + (thisRadius * cos(rad));
      y = centY + (thisRadius * sin(rad));
      
      point(x, y);
      
    }
    
  }

  saveFrame("screen.jpg");

}
