class bar1{
  bar1(){x=100; y=250;}
  float x,y;
  void ex(){
    fill(255);
    rect(x,y-50,30,100); //100,250
  }
}

class bar2{
  bar2(){x=670; y=250;}
  float x,y;
  void ex(){
    fill(255);
    rect(x,y-50,30,100);//700,250
  }
}

class ball{
  ball()
  {x=width/2; y=height/2; d=40; vx=random(-5,5); vy=random(-5,5);}
  float x,y,d,vx,vy;
  void display(){fill(255); circle(x,y,d);}
  void move(){
    x+=vx; y+=vy;
    if((x<0) || (x>width)) vx= (-1)*vx;
    if((y<0) || (y>height)) vy= (-1)*vy;
  }
}
