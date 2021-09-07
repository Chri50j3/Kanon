
class Ball extends Objekt{
  float size,angle = PI/size;
  PVector Power;
  PImage boom;
  float start;
  float Ix,Iy;
  
  Ball(float PowerLimit){
   size = 25;
   G.y = 0.011*size;
   lokation.x = 200;
   lokation.y = 900;
   Power = new PVector((mouseX-200),(mouseY-900));
   Power.limit(PowerLimit);
   Velocity.add(Power);
   boom = loadImage("Boom.png");
  }
  
  void update(){
    fill(90,90,90);
    circle(lokation.x,lokation.y,size);
    Velocity.add(G);
    lokation.add(Velocity);
    
    if(lokation.x > 1600 && lokation.y > 800 && lokation.y < 1050 && Velocity.x > 1){
      hit();
    }
    if(start > millis()){
      image(boom,Ix,Iy,200,200);
    }
  }
  
  void hit(){
    Velocity.mult(-0.1);
    start = millis()+1000;
    Ix = lokation.x-100;
    Iy = lokation.y-100;
  }
  
}
