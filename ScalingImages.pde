//Scaling Images (making them shrink/grow)

//Changes to scale are cumulative ( scale(1.5) followed by scale(2.0) is the same as scale(3.5) )
//Changes to scale revert when draw() resets
//After scaling below 0, image will scale into the negative

PImage testImage;
float scaleAmountA = 1;
float scaleAmountB = 1;

void setup()
{
  size(750,500);
  imageMode(CENTER);
  
  testImage = loadImage("queenBee.png");
  testImage.resize(200,0);
}

void draw()
{
  background(255);
  
  push();
  translate(250,250); //Transformations (movement) is relative to the origin point
  scale(scaleAmountA);
  image( testImage, 0,0 );
  pop();
  
  push();
  translate(500,250); //Transformations (movement) is relative to the origin point
  scale(scaleAmountB);
  image( testImage, 0,0 );
  pop();
  
  scaleAmountA += 0.001;
  scaleAmountB -= 0.001;
}
