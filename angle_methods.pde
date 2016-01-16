  
  
  void setup() {
    background(255);
    size(500,500);
    PImage bow = loadImage("bow.png");
    PImage character = loadImage("character.png");
    
    
  }
  
  void draw() {
  int distX = personX + 50 - mouseX;
      int distY = personY + 639 - mouseY;

      //pushes current xy plain
      pushMatrix();

      translate(personX + 50, personY + 635);

      float angle = atan((distY + .01) / (distX +.01));

      if (distX < 0) {
        angle += PI;
      }
      angle += PI;
      //rotates the xyplain to point gun towards the mouse
      rotate(angle);

      translate(-(personX + 50), -(personY + 635));

      //draw arm and gunss
      line(50 + personX, 635 + personY, 65 + personX, 635 + personY); //arm of man
      strokeWeight(3);
      line(65 + personX, 639 + personY, 65 + personX, 630 + personY); // gun handle
      line(65 + personX, 630 + personY, gunBarrelX, gunBarrelY); // gun barrel
      noFill();
      rect(65 + personX, 630 + personY, 4, 3); //trigger box

      this.shoot();

      //reverts to pushed xy plain
      popMatrix();
      
  }
