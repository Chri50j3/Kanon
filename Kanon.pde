ArrayList<Objekt> ting = new ArrayList<Objekt>();
float counter,barY = 250;
boolean skyd = false;
PImage bar;
int ArrayLength;
boolean slut = false, vandt = false;

//verden
PImage ocean;
PImage cloud;
int oceanX = 0;
boolean oceanPicLeft = false;
boolean oceanPicRight = true;


void setup(){
  fullScreen();
  bar = loadImage ("Bar.png");
  ting.add(new Skib(130,800,true));
  ting.add(new Skib(1500,800,false));
  frameRate(60);
  textAlign(CENTER);
  
  //verden
  ocean = loadImage("ocean.png");
  cloud = loadImage("cloud.png");

}

void draw(){
  //verden
  background(131, 200, 242);
  image(ocean, oceanX - 50, height - height/2, width + 100, height/2);
  image(cloud, 70, 100, 350, 150);
  image(cloud, 700, 200, 700, 200);
  
    if(oceanX >= 50){
    oceanPicLeft = true; 
    oceanPicRight = false;
  }
  if(oceanX <= -50){
    oceanPicLeft = false; 
    oceanPicRight = true;
  }
  
  if(oceanPicLeft == true){
    oceanX--;
  }
  
  if(oceanPicRight == true){
    oceanX++;
  }
  
  //ik verden
  for(Objekt r: ting){
    ArrayLength = ting.size();
    r.update();
    if(ArrayLength != ting.size())
      break;
  }
  fill(255);
  barY = 250-counter*6.66;
  image(bar,50,50,50,200);
  rect(50,barY,60,10);
  
  if(slut){
    textSize(200);
    if(vandt)
      text("You won!",width/2,height/2);
    else
      text("Game over!",width/2,height/2);

    
  }
 
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
