void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 30); 
  
  // create data structure full of n circle objects
  
}

void draw() {
  

}

class Circle {
  color stroke, fill;
  int posX, posY, size;
  
  Circle(color stroke, color fill, int posX, int posY, int size) {
    stroke = stroke;
    fill = fill;
    posX = posX;
    posY = posY;
    size = size;
  }
  int getPosX() {
    return posX;
  }
  int getPosY() {
    return posY;
  }
  int getSize() {
    return size;
  }
}
// get
    
