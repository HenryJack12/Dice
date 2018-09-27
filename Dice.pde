  void setup()
  {
    size(600, 600);  
    noLoop();
  }
  void draw()
  {
    background(255);
    int myX = 0;
    int myY = 0;
    int dieSum = 0;
    for(int x = 0; x < 11; x++) {
      for(int y = 0; y < 30; y++) {
        Die bob = new Die(myX, myY);
        bob.show();
        myX = myX + 50;
        dieSum = dieSum + bob.roll();
      }
      myY = myY + 50;
      myX = 0;
    }
    textSize(32);
    text("The sum of your die is: ", 0, 590);
    text(dieSum, 370, 590);
    fill((int) (Math.random() * 256), (int) (Math.random() * 256), (int) (Math.random() * 256));
    noFill();
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int numDots;
      int myX;
      int myY;
      
      Die(int x, int y) //constructor
      {
        myX = x;
        myY = y;
        roll();
      }
      int roll()
      {
      numDots = (int) (Math.random() * 6) + 1; 
      return numDots;
      }
      void show()
      {
        strokeWeight(3.5);
        stroke((int) (Math.random() * 256), (int) (Math.random() * 256), (int) (Math.random() * 256));
        rect(myX, myY, 50, 50);
        if(numDots == 1) {
          ellipse(myX + 25, myY + 25, 10, 10);
        }
        if(numDots == 2) {
          ellipse(myX + 15, myY + 35, 10, 10);
          ellipse(myX + 35, myY + 15, 10, 10);
        }
          if(numDots == 3) {
          ellipse(myX + 12, myY + 38, 10, 10);
          ellipse(myX + 38, myY + 12, 10, 10);
          ellipse(myX + 25, myY + 25, 10, 10);
        }
          if(numDots == 4) {
          ellipse(myX + 15, myY + 35, 10, 10);
          ellipse(myX + 35, myY + 15, 10, 10);
          ellipse(myX + 35, myY + 35, 10, 10);
          ellipse(myX + 15, myY + 15, 10, 10);
        }
          if(numDots == 5) {
          ellipse(myX + 12, myY + 38, 10, 10);
          ellipse(myX + 38, myY + 12, 10, 10);
          ellipse(myX + 38, myY + 38, 10, 10);
          ellipse(myX + 12, myY + 12, 10, 10);
          ellipse(myX + 25, myY + 25, 10, 10);
        }
          if(numDots == 6) {
          ellipse(myX + 13, myY + 40, 10, 10);
          ellipse(myX + 13, myY + 10, 10, 10);
          ellipse(myX + 13, myY + 25, 10, 10);
          ellipse(myX + 37, myY + 10, 10, 10);
          ellipse(myX + 37, myY + 25, 10, 10);
          ellipse(myX + 37, myY + 40, 10, 10);
        }
      }
  }
