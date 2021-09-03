
class Ball extends Objekt{
  float size,angle = PI/size;
  PVector Power;
  
  Ball(float PowerLimit){
   size = 25;
   G.y = 0.011*size;
   lokation.x = 200;
   lokation.y = 900;
   Power = new PVector((mouseX-lokation.x),(mouseY-lokation.y));
   Power.limit(PowerLimit);
   Velocity.add(Power);
  }
  
  void update(){
    fill(90,90,90);
    circle(lokation.x,lokation.y,size);
    Velocity.add(G);
    lokation.add(Velocity);
  }
  
}
