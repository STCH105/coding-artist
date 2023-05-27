import processing.net.*;
String input;
int data[];
Client c;
bar1 b1; bar2 b2; ball ba;

void setup() {
  size(800, 500);

  frameRate(60);
    b1=new bar1();
  b2=new bar2();
  ba=new ball();
  c=new Client(this,"192.168.35.75",45678);
}

void draw(){
  background(0);
  b1.ex(); b2.ex();
  float dx1,dy1,dx2,dy2,D1,D2;
  dx1=(b1.x+15) - ba.x; dx2=b2.x - ba.x;
  dy1=(b1.y+50) - ba.y; dy2=b2.y - ba.y;
  D1=sqrt(dx1*dx1+dy1*dy1); D2=sqrt(dx2*dx2+dy2*dy2);
  if (D1<35){ba.vx*=-1; }
  if (D2<20){ba.vx*=-1; }
  if (c.available()>0){
    input=c.readString();
    input=input.substring(0,input.indexOf("\n"));
    data=int(split(input,' '));
    if(data[0]!=0){
      if(data[0]==1){b1.y-=10;} 
      else if(data[0]==2){b1.y+=10;} 
      else if(data[0]==3){b2.y-=10;} 
      else if(data[0]==4){b2.y+=10;} 
    }
  }
  int b=0;
  if(keyPressed){
    if(key=='w') {b1.y-=10; b=1;}
    if(key=='s') {b1.y+=10; b=2;}
    //-----------
    if (key==CODED){
      if(keyCode==UP) {b2.y-=10; b=3;}
      if(keyCode==DOWN) {b2.y+=10; b=4;}
    }
  }
  c.write(b+"\n");
}
