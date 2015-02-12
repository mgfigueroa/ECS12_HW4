
int count = 0;
void setup()
{
  size(800, 800);
  smooth();
  //noLoop();
  //frameRate(0);
}

void draw()
{

  background(255);   
  strokeWeight(5);
  for (int x = 0; x<=725; x+=125) {
    for (int y = 0; y<=725; y+=125) {
      pushMatrix();
      
      translate(100+x, 100+y); 

      drawAnimal(5, 25);
      popMatrix();
    }
  }
  noLoop();
}

void drawAnimal(int depth, float size) {
  //REAR LEFT LEG
  ellipse(-22, 18, 17, 30);
  //REAR RIGHT LEG
  ellipse(7, 15, 17, 30);
  //BODY
  ellipse(0, 0, 75, 50);
  //TAIL
  ellipse(36, 7, 2, 22);
  //NEAR LEFT LEG
  ellipse(-7, 20, 17, 30);
  //NEAR RIGHT LEG
  ellipse(23, 17, 17, 30);
  //WHITE ELLIPSE TO REMOVE LEG LINES
  stroke(255);
  ellipse(0, 0, 65, 40);
  stroke(0);
  //SPOTS
  fill(0);
  ellipse( random(-15, 15), random(-15, 15), random(15, 25), random(15, 25) );
  fill(255);
  //HEAD
  ellipse(-25, -10, 35, 48);
  //NOSE
  fill(#FF9999);
  ellipse(-25, 0, 40, 23);
  fill(255);
  //NOSE HOLES
  ellipse(-15, 0, 10, 5);
  ellipse(-35, 0, 10, 5);  
  //EYES
  strokeWeight(3);
  ellipse(-32, -20, 8, 5);
  ellipse(-19, -20, 8, 5);
  //EARS
  ellipse(-3, -22, 15, 8);
  ellipse(-47, -22, 15, 8); 
  strokeWeight(5);
 

}

