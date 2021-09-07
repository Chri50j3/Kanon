class Skib extends Objekt{
  PImage skib;
  float size = 2;
  PVector vinkel;
  boolean player;

  Skib(float x_,float y_,boolean player_){
    if(player_)
      skib = loadImage ("Skib1.png");
    if(!player_)
      skib = loadImage ("Skib2.png");
    lokation.x = x_;
    lokation.y = y_;
    vinkel = new PVector();
    player = player_;
  }
  
  void update(){
    image(skib,lokation.x,lokation.y,189*size,141*size);
    strokeWeight(20);
    if(player){
      vinkel.x = (mouseX-(lokation.x+70));
      vinkel.y = (mouseY-(lokation.y+120));
      vinkel.limit(30);
      line(lokation.x+70,lokation.y+120,lokation.x+70+vinkel.x,lokation.y+120+vinkel.y);
      strokeWeight(0);
      
      for(int i = 1; i < 25; i+=5){
        fill(255);
        circle(lokation.x + 70 + vinkel.x*i, lokation.y+120 + vinkel.y*i, 10);
      }
      
    }
    else if(!player){
      line(lokation.x+310,lokation.y+120,lokation.x+280,lokation.y+120);
    }
    strokeWeight(1);
  }
}
