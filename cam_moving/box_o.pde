class Bx{
  Bx(){x=70; vx=10;}
  float x,vx;
  void ex(){
    fill(220);
    stroke(0);
    translate(0,300,200);
    box(x,50,40);
  }
  void move(){
    x+=vx;
    if(x>600){vx*=-1;}
    if(x<0){vx*=-1;}
  }
}

class OO{
  OO(){z=0; r=100; D=500; th=0;}
  float r,D,z,th;
  void ex(){
    float th_r=th*PI/180;
    translate(300+D*sin(th_r),500,z+D*cos(th_r));
    fill(255,220,220);
    noStroke();
    sphere(r);
  }
  void move(){
    th+=1;
    if(th==361) th=0;
  }
}
