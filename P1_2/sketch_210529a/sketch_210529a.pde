int[] integerArray = new int[200];
int deltaX = 4;
int index = 0;


void setup() {
  size(1800, 800);
  deltaX = width/integerArray.length;
  
  for(int i = 0; i < integerArray.length; i++){
    int randomNumbers = int(random(0, height));
    integerArray[i] = randomNumbers;
  }
}

void draw() {
  if(mousePressed){
    for(int i = 0; i < integerArray.length; i++){
      int randomNumbers = int(random(0, height));
      integerArray[i] = randomNumbers;
    }
    background(209);
    index = 0;
  }
  
  background(209);

  for(int i = 0; i < integerArray.length; i++){
    if(i < index)
      fill(50, 50, 255, 255);
    else
      fill(50, 50, 50, 100);

    rect(i*deltaX, height-integerArray[i], deltaX, integerArray[i]);    
  }
  
  if(index < integerArray.length)
    selectionSort();
}

void swapElements(int a, int b) {
  int temp = integerArray[a];
  integerArray[a] = integerArray[b];
  integerArray[b] = temp;
}

void selectionSort() {
  int smallest = index;
  
  for(int i = index+1; i < integerArray.length; i++) {
     if(integerArray[i] < integerArray[smallest])
       smallest = i;
  }
  
  swapElements(index, smallest);
  index++;
}
