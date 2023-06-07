Bx b1; OO O1; cam c1;
void setup(){
  size(600,1000,P3D);
  b1=new Bx();
  O1=new OO();
  c1=new cam();
  camera(300,1000,2000,300,500,0,0,-1,-1); //bird's eye view
}

void draw(){
  background(150);
  b1.ex(); b1.move();
  O1.ex(); O1.move();
  //c1.on(); c1.move();  //FSP
}
