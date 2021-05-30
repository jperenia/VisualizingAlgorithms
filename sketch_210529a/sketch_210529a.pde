int[] integerArray = new int[200];


void setup() {
  size(800, 800);
   
  for(int i = 0; i < integerArray.length; i++){
    int randomNumbers = int(random(0, height));
    rect(i*4, height-randomNumbers, 4, randomNumbers);
  }
}

void draw() {  

}
