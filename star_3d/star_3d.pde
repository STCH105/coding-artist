void setup(){
  size(500,500,P3D);
  translate(width/2, height/2,0);
  stroke(0);
  noFill();
  camera(300,300,300,0,50,0,0,1,0);
   star_3D(TRIANGLE_STRIP);
}

void star_3D(int option){
  beginShape(option); //앞면
  vertex(0,0,50); vertex(0,-250,0); vertex(50,-50,0);
  vertex(0,0,50); vertex(0,-250,0); vertex(-50,-50,0);
  vertex(0,0,50); vertex(-250,0,0); vertex(-50,50,0);
  vertex(0,0,50); vertex(-250,0,0); vertex(-50,-50,0);
  endShape(option);
  
  beginShape(option);
  vertex(0,0,50); vertex(0,250,0); vertex(-50,50,0);
  vertex(0,0,50); vertex(0,250,0); vertex(50,50,0);
  vertex(0,0,50); vertex(250,0,0); vertex(50,-50,0);
  vertex(0,0,50); vertex(250,0,0); vertex(50,50,0);
  endShape(option);
  //-------뒷면
  beginShape(option); //앞면
  vertex(0,0,-50); vertex(0,-250,0); vertex(50,-50,0);
  vertex(0,0,-50); vertex(0,-250,0); vertex(-50,-50,0);
  vertex(0,0,-50); vertex(-250,0,0); vertex(-50,50,0);
  vertex(0,0,-50); vertex(-250,0,0); vertex(-50,-50,0);
  endShape(option);
  
  beginShape(option);
  vertex(0,0,-50); vertex(0,250,0); vertex(-50,50,0);
  vertex(0,0,-50); vertex(0,250,0); vertex(50,50,0);
  vertex(0,0,-50); vertex(250,0,0); vertex(50,-50,0);
  vertex(0,0,-50); vertex(250,0,0); vertex(50,50,0);
  endShape(option);
}
