class Particle { 
  PVector location; 
  PVector velocity;
  PVector acceleration;
  float lifespan;
  PVector f;
  PVector a;

Particle(PVector I) {
  acceleration = new PVector(0,0.04);
  velocity = new PVector(random(-11,5),random(1,3));// apawn's position 
  location = I.copy();
  lifespan =235.0;
}
  void run() { 
    update(); 
    display();
  }
  void update(){
    velocity.add(acceleration);
    location.add(velocity); 
    lifespan-=0.5;
  }
  void display(){
    stroke(0, lifespan);
    fill(255,lifespan);
    ellipse(location.x, location.y,8,8);
  }
}
