class World{
  float speed, size, iSize;
  float x = 0;
  int y = height/2;
  float sizeChange;
  int modeClose = 1;
  int modeFar = 0;
  int direction = 0;
  int modeSmall = 0;
  
  //Constructor:
  World(float tempSpeed, float tempSize, float ){
    speed = tempSpeed;
    //"iSize" is initial size. I will use "size" for my variable size
    iSize = tempSize;
    size = tempSize;
    sizeChange = width/size;
  }
  
  void orbit(){
    println(x);
    if(x<iSize){
      direction = 0;
    }
    else if(x>width-iSize){
      direction = 1;
    }
    
    //When modeClose is activated
    if(x<iSize && modeSmall == 1){
      modeSmall = 0;
      modeClose =1;
    }
    if(x<width/2 && direction == 0){
      modeFar = 0;
      modeClose = 1;
    }
    else if(x>width/2 && direction == 0){
      modeFar = 0;
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
    
    //What modeClose and modeFar actually does:
    if(modeClose == 1 && modeSmall == 0){
      fill(0,0,120);
      ellipse(x,y,size,size);
      x+=speed;
      size+= sizeChange;
    }
    else if(modeClose == 2 && modeSmall == 0){
      fill(0,0,120);
      ellipse(x,y,size,size);
      x+=speed;
      size-= sizeChange;
    }
    else if(modeFar == 1 && modeSmall == 0){
      fill(0,0,120);
      ellipse(x,y,size,size);
      x-=speed;
      size-= sizeChange;
    }
    else if(modeFar == 2 && modeSmall == 0){
      fill(0,0,120);
      ellipse(x,y,size,size);
      x-=speed;
      size+= sizeChange;
    }
    
    /*When modeSmall is activated for each state of modeClose and modeFar
    (In reality, the size won't be < 0 when modeClose is 1, but I just want to have it in the code.)*/
    if(size<0 && modeClose == 1){
      modeSmall = 1;
      ellipse(x,y,0,0); 
      x+=speed;
    }
    else if(size<0 && modeClose == 2){
      modeSmall = 1;
      ellipse(x,y,0,0); 
      x+=speed;
    }
    else if(size<0 && modeFar == 1){
      modeSmall = 1;
      ellipse(x,y,0,0); 
      x-=speed;
    }
    else if(size<0 && modeFar == 2){
      modeSmall = 1;
      ellipse(x,y,0,0); 
      x-=speed;
    }
  }
}
