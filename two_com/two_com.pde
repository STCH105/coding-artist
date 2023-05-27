bar1 b1; bar2 b2; ball ba;

import processing.net.*;
Server s;
Client c;
String input;
int data[];

void setup() {
  size(800, 500);
  
  b1=new bar1();
  b2=new bar2();
  ba=new ball();
  
  stroke(0);
  frameRate(60);
  s= new Server(this,14758);
  c=new Client(this,"127.0.0.1",14758);
}

void draw(){
  background(0);
  b1.ex(); b2.ex();
  ba.move(); ba.display();
  float dx1,dy1,dx2,dy2,D1,D2;
  dx1=(b1.x+15) - ba.x; dx2=b2.x - ba.x;
  dy1=(b1.y+50) - ba.y; dy2=b2.y - ba.y;
  D1=sqrt(dx1*dx1+dy1*dy1); D2=sqrt(dx2*dx2+dy2*dy2);
  if (D1<35){ba.vx*=-1; /*ba.vy*=-1;*/}
  if (D2<20){ba.vx*=-1; /*ba.vy*=-1;*/}
  
  /*if(mousePressed==true){
    stroke(255);
    line(pmouseX,pmouseY,mouseX,mouseY);
    s.write(pmouseX+" "+pmouseY+" "+mouseX+" "+mouseY+"\n");
  }*/
  c=s.available();
  if(c!=null){
    input=c.readString();
    input=input.substring(0,input.indexOf("\n"));
    stroke(0);
    line(data[0],data[1],data[2],data[3]);
  }
}
void keyPressed(){
  if(key=='w') b1.y-=10;
  if(key=='s') b1.y+=10;
  //-----------
  if (key==CODED){
    if(keyCode==UP) b2.y-=10;
    if(keyCode==DOWN) b2.y+=10;
  }
}
