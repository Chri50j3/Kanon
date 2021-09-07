PImage ocean;
PImage cloud;
int oceanX = 0;
boolean oceanPicLeft = false;
boolean oceanPicRight = true;

void setup(){
  fullScreen();
  background(131, 200, 242);
  ocean = loadImage("ocean.png");
  cloud = loadImage("cloud.png");
}

void draw(){
  clear();
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
}
