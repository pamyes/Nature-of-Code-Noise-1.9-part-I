Noisee points;
float x=0.1;
float v=0.15;
void setup(){
  size(600,600);
  points= new Noisee();
}

void draw(){
  if(x>1||x<0){
    v=v*(-1);
  }
  x=x+v;
  points.updatePoints(x);
}