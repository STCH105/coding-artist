class waddle{
  waddle(float a, float b, float c) {x=a; y=b; z=c; vx=random(-5,5); vy=random(-5,5);}
  float x,y,z, vx,vy;
void display(){
  noStroke();
  fill(255,188,0);ellipse(x-80/z,y+150/z,150/z,100/z);
  fill(255,188,0);ellipse(x+80/z,y+150/z,150/z,100/z);
  fill(253,149,58);circle(x-120/z,y+80/z,110/z); 
  fill(253,149,58);circle(x+120/z,y+80/z,110/z);
  fill(253,149,58);circle(x,y+50/z,250/z);
  fill(255,225,200);ellipse(x,y+80/z,220/z,150/z);
  fill(255,225,200);ellipse(x,y+20/z,180/z,150/z);
  //----------------
  //눈
  fill(0,0,0);ellipse(x-30/z,y,20/z,80/z);
  fill(255,204,153);ellipse(x-30/z,y+20/z,10/z,15/z);
  fill(233,168,130);ellipse(x-30/z,y+15/z,10/z,15/z);
  fill(174,122,70);ellipse(x-30/z,y+10/z,10/z,15/z);
  fill(105,67,29);ellipse(x-30/z,y+5/z,10/z,15/z);
  fill(65,38,10);ellipse(x-30/z,y,10/z,15/z);
  fill(255,255,255);ellipse(x-29/z,y-15/z,10/z,35/z);
  
  fill(0,0,0);ellipse(x+30/z,y,20/z,80/z);
  fill(255,204,153);ellipse(x+30/z,y+20/z,10/z,15/z);
  fill(233,168,130);ellipse(x+30/z,y+15/z,10/z,15/z);
  fill(174,122,70);ellipse(x+30/z,y+10/z,10/z,15/z);
  fill(105,67,29);ellipse(x+30/z,y+5/z,10/z,15/z);
  fill(65,38,10);ellipse(x+30/z,y,10/z,15/z);
  fill(255,255,255);ellipse(x+31/z,y-15/z,10/z,35/z);
  //--------------------------
  //볼
  fill(250,170,154);ellipse(x+65/z,y+40/z,40/z,20/z);
  fill(250,170,154);ellipse(x-65/z,y+40/z,40/z,20/z);
}
  void move(){
    x+=vx; y+=vy;
    if((x<0) || (x>width)) vx= (-1)*vx;
    if((y<0) || (y>height)) vy= (-1)*vy;
  }
}
