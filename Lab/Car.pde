class Car extends GameObject {
  float carh, carw;
  color c= color(255, 255, 255);
  Car(float x, float y) 
  {
    super(x, y);
    speed =2;
    carw = 150;
    carh = 50;
  }

  void update()
  {
    position.x -= speed; 

    if (position.x <= -100) {
      position.x = width+100;
      c = color(random(0, 255), random(0, 255), random(0, 255));
      speed= random(3, 11);
    }

    if (position.x +(carw/2) >= player.position.x -25 && //left
    position.x -(carw/2) <= player.position.x +25 && //right
    position.y +(carh/2) >= player.position.y - 25 && // top
    position.y - (carh/2) <= player.position.y +25 ) //bottom
    {
      player.alive=false;
    }
  }

  void render() {

    pushMatrix();
    rectMode(CENTER);

    fill(c);
    stroke(255);

    rect(position.x-50, position.y, carw/3, 25);
    rect(position.x, position.y, carw, carh);
    popMatrix();
  }
}

