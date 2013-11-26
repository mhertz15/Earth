class World{
  float speed, size;
  float x = 0;
  int y = height/2;
  float sizeChange;
  int modeClose = 1;
  int modeFar = 0;
  int direction = 0;
  //Constructor:
  World(float tempSpeed, float tempSize){
    speed = tempSpeed;
    size = tempSize;
    sizeChange = width/size;
  }
  
  void orbit(){
    println(x);
    //When modeClose is activated:
    if(x<0){
      direction = 0;
    }
    else if(x>width){
      direction = 1;
    }
    
    //When modeClose is activated
    if(x<width/2 && direction == 0){
      modeClose = 1;
    }
    else if(x>width/2 && direction == 0){
      modeClose = 2;
    }
    
    //When modeFar is activated
    else if(x>width/2 && direction == 1){
      modeClose = 0;
      modeFar = 1;
    }
    else if(x<width/2 && direction == 1){
      modeClose = 0;
      modeFar = 2;
    }
    
    if(modeClose == 1){
      fill(0,0,120);
      ellipse(x,y,size,size);
      x+=speed;
      size+= sizeChange;
    }
    else if(modeClose == 2){
      fill(0,0,120);
      ellipse(x,y,size,size);
      x+=speed;
      size-= sizeChange;
    }
    else if(modeFar == 1){
      println(modeFar);
      fill(0,0,120);
      ellipse(x,y,size,size);
      x-=speed;
      size-= sizeChange;
    }
    else if(modeFar == 2){
      fill(0,0,120);
      ellipse(x,y,size,size);
      x-=speed;
      size+= sizeChange;
    }
  }
}
