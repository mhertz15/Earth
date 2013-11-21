//Earth

World myWorld;

void setup(){
  size(400,400);
  background(0);
  myWorld = new World(2,50);
}

void draw(){
  background(0);
  myWorld.orbit();
 // println(myWorld.modeFar);
}


