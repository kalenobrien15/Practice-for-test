class Player extends GameObject {
  boolean alive = true;
  Player(float x, float y) {
    super(x, y);
    speed= 5;
  } 

  void update() {
    if (keyPressed) {
      if (key == 'w' || key == 'W') {
        position.y -= speed;
      }
      if (key == 's' || key == 'S') {
        position.y += speed;
      }
      if (key == 'a' || key == 'A') {
        position.x -= speed;
      }
      if (key == 'd' || key == 'D') {
        position.x += speed;
      }
    }
  }

  void render() {
    if(alive==true){
    rectMode(CENTER);
    pushMatrix();

    stroke(255);
    fill(255);
    rect(position.x, position.y, 50, 50); 
    popMatrix();
  }
  else {
    
  }
  }
}

