kirby k1; kirby k2;
waddle wa1;
void setup(){
  size(600,600);
  k1=new kirby(50,50,1.5);
  k2=new kirby(50,50,1.5,1);
  wa1= new waddle(550,550,1.5);
}
void draw(){
  background(0);
  k2.move(); k2.display();
  k1.move(); k1.display();
  wa1.move(); wa1.display();
  float kx, ky, wx, wy, dx, dy, D;
  kx=k1.x; ky=k1.y; wx=wa1.x; wy=wa1.y;
  dx=kx-wx; dy=ky-wy;
  D=sqrt(dx*dx+dy*dy);
  if (D<(250/k1.z/2+250/k1.z/2)) {k1.vx*=-1 ;k1.vy*=-1;  wa1.vx*=-1 ;wa1.vy*=-1;}
}
