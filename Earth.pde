//Earth

World myWorld;
World myWorld2;

void setup(){
  size(400,400);
  background(0);
  myWorld = new World(5,30,60,0,0,120);
  myWorld2 = new World(2,50,250,140,0,0);
}

void draw(){
  background(0);
  myWorld.orbit();
  myWorld2.orbit();
}


