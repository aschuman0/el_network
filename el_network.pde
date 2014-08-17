int NUM_CIRCLES = 300;
Circle[] circles;

void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100);
  
  circles = new Circle[NUM_CIRCLES];
  
  color fillColor, strokeColor;
  float xPos, yPos, size;
  
  for(int i=0; i < NUM_CIRCLES; i++) {
    fillColor = color(int(random(0,360)), int(random(0,100)), int(random(0, 100)));
    strokeColor = color(int(random(0,360)), int(random(0,100)), int(random(0, 100)));
    xPos = int(random(WIDTH)*1000);
    yPos = int(random(HEIGHT)*1000); 
    size = int(random(WIDTH*150)+10);
    circles[i] = new Circle(fillColor, strokeColor, xPos, yPos, size);
  }
}

void draw() {
  background(0, 0, 30);
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
    posX = posX + int(random(-1, 1)*10);
    posY = posY + int(random(-1, 1)*10);
  }
  void draw() {
    fill(fill);
    stroke(stroke);
    ellipse(posX, posY, size, size);
  }
}
