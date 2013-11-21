class World{
  float speed, size;
  float x = 0;
  int y = height/2;
  float sizeChange;
  int modeClose = 1;
  int modeFar = 0;
  //Constructor:
  World(float tempSpeed, float tempSize){
    speed = tempSpeed;
    size = tempSize;
    sizeChange = width/size;
  }
  void orbit(){
    //When modeClose is activated:
    if(modeFar == 1 || modeFar == 2){
      modeClose = 0;
    }
    if(x<width/2 && modeFar == 0){
      modeClose = 1;
    }
    if(x>width/2 && modeFar == 0){
      modeClose = 2;
    }
    //When modeFar is activated
    if(x>width/2 && modeClose == 0){
      modeFar = 1;
    }
    if(x<width/2 && modeClose == 0){
      modeFar = 2;
    }
    if(modeClose == 1 || modeClose == 2){
      modeFar = 0;
    }
    if(modeClose == 1){
      fill(0,0,120);
      ellipse(x,y,size,size);
      x+=speed;
      size+= sizeChange;
    }
    if(modeClose == 2){
      fill(0,0,120);
      ellipse(x,y,size,size);
      x+=speed;
      size-= sizeChange;
    }
    if(modeFar == 1){
      fill(0,0,120);
      ellipse(x,y,size,size);
      x-=speed;
      size-= sizeChange;
    }
    if(modeFar == 2){
      fill(0,0,120);
      ellipse(x,y,size,size);
      x-=speed;
      size+= sizeChange;
    }
  }
}
