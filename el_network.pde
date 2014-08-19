int NUM_CIRCLES = 100;
Circle[] circles;

void setup() {
  size(1440, 900);
  colorMode(HSB, 360, 100, 100, 100);
  frameRate(30);
  
  circles = new Circle[NUM_CIRCLES];
  
  color fillColor, strokeColor;
  float xPos, yPos, size;
  
  for(int i=0; i < NUM_CIRCLES; i++) {
    fillColor = color(int(random(0,360)), int(random(0,100)), int(random(0, 100)), int(random(0, 100)));
    strokeColor = color(int(random(0,360)), int(random(0,100)), int(random(0, 100)), int(random(0, 100)));
    xPos = int(random(WIDTH)*1000);
    yPos = int(random(HEIGHT)*1000); 
    size = int(random(WIDTH*500)+10);
    circles[i] = new Circle(fillColor, strokeColor, xPos, yPos, size);
  }
}

void draw() {
  background(0, 0, 0);
  for(int i=0; i < NUM_CIRCLES; i++) {
    circles[i].update();
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
  void update() {
    size = size + int(random(-10, 10));
    posX = posX + int(random(-2, 2));
    posY = posY + int(random(-2, 2));
  }
  void draw() {
    fill(fill);
    stroke(stroke);
    ellipse(posX, posY, size, size);
  }
}
