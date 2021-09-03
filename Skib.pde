class Skib extends Objekt{
  PImage skib;
  float size = 2;
  PVector vinkel;

  Skib(){
    skib = loadImage ("Skib1.png");
    lokation.x = 130;
    lokation.y = 800;
    vinkel = new PVector();
  }
  
  void update(){
    image(skib,lokation.x,lokation.y,189*size,141*size);
    strokeWeight(20); 
    vinkel.x = (mouseX-(lokation.x+70));
    vinkel.y = (mouseY-(lokation.y+120));
    vinkel.limit(30);
    line(lokation.x+70,lokation.y+120,lokation.x+70+vinkel.x,lokation.y+120+vinkel.y);
    strokeWeight(1);
  }
}
