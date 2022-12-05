  float a1=random(200,1900);
  float a2=random(200,1800);
  float a3=random(200,1900);
  float a4=random(200,1800);
  float a5=random(200,1900);
  float a6=random(200,1800);
  float a7=random(200,1900);
  float a8=random(200,1800);
  float a9=random(200,1900);
  float a10=random(200,1800);
  
  float b1=random(600,1000);
  float b2=random(300,700);
  float b3=random(500,1000);
  float b4=random(200,870);
  float b5=random(700,1200);
  float b6=random(200,850);
  float b7=random(560,1100);
  float b8=random(200,600);
  float b9=random(300,800);
  float b10=random(200,760);
   
  int n=12;
  int z=1;
  int s=0;
  
void setup() {
  size(2000, 1200);
  ps=new ParticleSystem(new PVector(width-310,-600));
  smooth();
}

void draw() {
  background(0);
    if(z==1){
    ps.addParticle(); 
    }
    ps.run();
  stroke(0,125,0);
  strokeWeight(4);
line(a1,height,a1,b1);
line(a2,height,a2,b2);
line(a3,height,a3,b3);
line(a4,height,a4,b4);
line(a5,height,a5,b5);
line(a6,height,a6,b6);
line(a7,height,a7,b7);
line(a8,height,a8,b8);
line(a9,height,a9,b9);
line(a10,height,a10,b10);
for(int i=0;i<n;i++){
  pushMatrix();
  translate(a1, b1);
  rotate(i*PI/6);
  branch(map(mouseX,0,width,1,47),map(mouseY, 0, height,PI/36 , PI/3));
  popMatrix();
  }
for(int i=0;i<n;i++){
  pushMatrix();
  translate(a2, b2);
  rotate(-PI/6+i*PI/6);
  branch(map(mouseX,0,width,1,31),map(mouseY, 0, height,PI/30 , PI/8));
  popMatrix();
  }
for(int i=0;i<n;i++){
  pushMatrix();
  translate(a3, b3);
  rotate(PI/3+i*PI/6);
  branch(map(mouseX,0,width,1,34),map(mouseY, 0, height,PI/28 , PI/2));
  popMatrix();
  }
for(int i=0;i<n;i++){
  pushMatrix();
  translate(a4, b4);
  rotate(PI/6+i*PI/6);
  branch(map(mouseX,0,width,1,41),map(mouseY, 0, height,PI/46 , PI/6));
  popMatrix();
  }
for(int i=0;i<n;i++){
  pushMatrix();
  translate(a5, b5);
  rotate(-PI/2+i*PI/6);
  branch(map(mouseX,0,width,1,48),map(mouseY, 0, height,PI/33 , PI/3));
  popMatrix();
  }
for(int i=0;i<n;i++){
  pushMatrix();
  translate(a6, b6);
  rotate(PI/2+i*PI/6);
  branch(map(mouseX,0,width,1,30),map(mouseY, 0, height,PI/51 , PI/5));
  popMatrix();
  }
for(int i=0;i<n;i++){
  pushMatrix();
  translate(a7, b7);
  rotate(2*PI/3+i*PI/6);
  branch(map(mouseX,0,width,1,44),map(mouseY, 0, height,PI/40 , PI/2));
  popMatrix();
  }
for(int i=0;i<n;i++){
  pushMatrix();
  translate(a8, b8);
  rotate(4*PI/3+i*PI/6);
  branch(map(mouseX,0,width,1,33),map(mouseY, 0, height,PI/45 , PI/7));
  popMatrix();
  }
for(int i=0;i<n;i++){
  pushMatrix();
  translate(a9, b9);
  rotate(-7*PI/4+i*PI/6);
  branch(map(mouseX,0,width,1,46),map(mouseY, 0, height,PI/54 , PI/4));
  popMatrix();
  }
for(int i=0;i<n;i++){
  pushMatrix();
  translate(a10, b10);
  rotate(-5*PI/3+i*PI/6);
  branch(map(mouseX,0,width,1,35),map(mouseY, 0, height,PI/66 , PI/7));
  popMatrix();
  }
 if(s==1){
     saveFrame();
 }
}



void keyPressed(){
  if(key == 's' || key == 'S'){
    s=1;
  }
  if(key=='n'){
  n--;
  }
   if(key=='a'){
  n=12;
  }
  if(key=='z'){
  z=0;
  }
  if(key=='x'){
  z=1;
  }
}
