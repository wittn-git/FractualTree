
void setup(){
  fullScreen();
  init();
}

void draw(){}

void init(){
  float length = 120;
  background(30, 100, 200);
  translate(width/2, height);
  branch(length);
}

void branch(float length){
  strokeWeight(random(length/20, length/12));
  if(length > 30) {
    stroke(color(60, 40, 20));
  }else{
    stroke(color(20, 40+random(0,120), 20));
  }
  line(0, 0, 0, -length);  
  if(length > 10){
    for(int i=0; i<(int)random(2,4); i++){
      float angle = random(10, 30);
      if(random(0, 1) > 0.5){
        angle *= -1;
      }
      paintBranch(angle, length);
    }
  }
}

void paintBranch(float angle, float oldLength){
  pushMatrix();
  translate(0, -oldLength);
  rotate(radians(angle));
  branch(oldLength*random(0.5, 1));
  popMatrix();
}

void keyPressed() {
  if(key == ENTER){
    init();
  }
}
