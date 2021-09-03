ArrayList<Objekt> ting = new ArrayList<Objekt>();
float counter,barY = 250;
boolean skyd = false;
PImage bar;


void setup(){
fullScreen();
bar = loadImage ("Bar.png");
ting.add(new Skib());

}

void draw(){
  background(209, 227, 255);
  for(Objekt r: ting){
    r.update();
  }
  fill(255);
  barY = 250-counter*6.66;
  image(bar,50,50,50,200);
  rect(50,barY,60,10);
}
void keyPressed(){
  if(keyCode == ' '){
    counter ++;
    if(counter > 30){counter = 30;}
  }
}

void mouseClicked(){
  ting.add(new Ball(counter));
  counter = 0;
}
