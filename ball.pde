
class Ball extends Objekt{
  float angle = PI/size;
  PVector Power;
  PImage boom;
  float start;
  float Ix,Iy;
  boolean spiller;
  
  Ball(float PowerLimit, boolean spiller_){
   size = 25;
   G.y = 0.011*size;
   spiller = spiller_;
   if(spiller){
     lokation.x = 200;
     lokation.y = 900;
     Power = new PVector((mouseX-lokation.x),(mouseY-lokation.y));
   }
   if(!spiller){
     lokation.x = 1500+308;
     lokation.y = 900;
     Power = new PVector(random(0,100)-lokation.x,random(0,100)-lokation.y);
   }
   Power.limit(PowerLimit);
   Velocity.add(Power);
   boom = loadImage("Boom.png");

  }
  
  void update(){
    fill(90,90,90);
    circle(lokation.x,lokation.y,size);
    Velocity.add(G);
    lokation.add(Velocity);
    
   //cheker om kuglen rammer modstanderskibet og køre hit funktion hvis rigtigt
    if(spiller){
      if(lokation.x > 1600 && lokation.x < 1820 && lokation.y > 800 && lokation.y < 1050 && Velocity.x > 1){
      hit();
      }
    }
    if(!spiller){
      if(lokation.x < 450 && lokation.x > 100 && lokation.y > 800 && lokation.y < 1050 && Velocity.x < 0){
      hit();
      }
    }
    
    //viser boom billede i 1000 millisekunder
    if(start > millis()){
      image(boom,Ix,Iy,200,200);
    }
    
    // slet når uden for skærm
    if(lokation.y > height)
      ting.remove(this);
  }
  
  // Når kuglen rammer skibet
  void hit(){
    Velocity.mult(-0.1);
    start = millis()+1000;
    Ix = lokation.x-100;
    Iy = lokation.y-100;
    if(spiller)
      ting.get(1).HP -= 10;
    else if(!spiller)
      ting.get(0).HP -= 10;
  }
  
}
