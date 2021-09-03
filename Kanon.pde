ArrayList<ball> balls = new ArrayList<ball>();
float counter,barY = 250;
boolean skyd = false;
PImage bar;

void setup(){
fullScreen();
bar = loadImage ("Bar.png");
}

void draw(){
  background(209, 227, 255);
  for(ball r: balls){
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
  balls.add(new ball(counter));
  counter = 0;
}
