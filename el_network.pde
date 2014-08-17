int NUM_CIRCLES = 100;
Circle[] circles;

void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 30); 
  
  circles = new Circle[NUM_CIRCLES];
  
  color fillColor, strokeColor;
  float xPos, yPos, size;
  
  for(int i=0; i < NUM_CIRCLES; i++) {
    fillColor = color(random(0,360), random(0,100), random(0, 100));
    strokeColor = color(random(0,360), random(0,100), random(0, 100));
    xPos = random(0, WIDTH);
    yPos = random(0, HEIGHT); 
    size = random(10, (WIDTH/2));
    circles[i] = new Circle(fillColor, strokeColor, xPos, yPos, size);
  }
}

void draw() {
  for(int i=0; i < NUM_CIRCLES; i++) {
    circles[i].draw();
  }
}

class Circle {
  color stroke, fill;
  float posX, posY, size;
  
  Circle(color inStroke, color inFill, float inPosX, float inPosY, float inSize) {
    stroke = inStroke;
    fill = inFill;
    posX = inPosX;
    posY = inPosY;
    size = inSize;
  }
  void draw() {
    ellipse(posX, posY, size, size);
  }
}
