Player player = new Player(300, 550);
Car car1= new Car(width+400, 0);
Car car2= new Car(width+300, 0);
Car car3= new Car(width, 0);


void setup() {
  size(600, 600);
  background(0);
  Player player = new Player(300, 550);
  car1.carw = 80;
  car2.carw = 100;
  car3.carw = 120;
  car3.speed = 7;
}

void draw() {
  background(0);
  for (int i = 100; i<500; i+= 166) {
    road(i, 90);
    car1.position.y = i + 40;
    car2.position.y = i/4 + 40;
    car3.position.y = i/1.60 +40;
  }
  player.render();
  player.update();
  car1.update();
  car1.render();
  car2.update();
  car2.render();
  car3.update();
  car3.render();
}

void road(float y, float w) {

  stroke(255);
  line(0, y, width, y);
  line(0, y+ w, width, y+w);
  stroke(200, 200, 3);
  for (float x=20; x<=width; x+=50) {

    line(x, y+(w/2), x+25, y+(w/2));
  }
} 

