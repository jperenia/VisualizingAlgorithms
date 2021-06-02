int[] integerArray = new int[200];
int deltaX = 4;

void setup() {
  size(1800, 800);
  deltaX = width/integerArray.length;
  
  for(int i = 0; i < integerArray.length; i++){
    int randomNumbers = int(random(0, height));
    integerArray[i] = randomNumbers;
  }
}

void draw() {  
  for(int i = 0; i < integerArray.length; i++){
    rect(i*deltaX, height-integerArray[i], deltaX, integerArray[i]);
  }
  
  if (mousePressed) {
    background(209);
    for(int i = 0; i < integerArray.length; i++){
      int randomNumbers = int(random(0, height));
      integerArray[i] = randomNumbers;
    }
    
    for(int i = 0; i < integerArray.length; i++){
      rect(i*deltaX, height-integerArray[i], deltaX, integerArray[i]);
    }
  }
}
