
class ball{
  float size,angle = PI/size;
  PVector lokation = new PVector(200,900);
  PVector Velocity = new PVector();
  PVector G = new PVector();
  PVector Power;
  
  ball(float PowerLimit){
   size = 25;
   G.y = 0.011*size;
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
