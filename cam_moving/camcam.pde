class cam{
  cam(){x=300; y=500; z=2000; vz=20;}
  float x,y,z,vz;
  void on(){
    camera(x,y,z,300,500,0,0,-1,0);
  }
  void move(){
    z-=vz;
    if(z<500) vz*=-1;
    if(z>2000) vz*=-1;
  }
}
