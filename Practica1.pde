Flock flock1, flock2;
color color1 = color(255,0,0), color2 = color(0,255,0), color_blanco = color(255, 255, 255);
Objetivo objetivo1, objetivo2;
PVector pos_objetivo1, pos_objetivo2;

Esquivar obstaculo1;
PVector pos_obstaculo1;

void setup() {
  size(1200, 700);
  flock1 = new Flock(color1);
  flock2 = new Flock(color2);
  
  pos_objetivo1 = new PVector(150, 350);
  pos_objetivo2 = new PVector(1050, 350);
  pos_obstaculo1 = new PVector(600 , 350);
  //pos_obstaculo1 = new PVector(600 , 800);
  
  objetivo1 = new Objetivo(color1, pos_objetivo1);
  objetivo2 = new Objetivo(color2, pos_objetivo2);
  
  obstaculo1 = new Esquivar(color_blanco, pos_obstaculo1);  
  
  // Add an initial set of boids into the system
  for (int i = 0; i < 10; i++) {
    flock1.addBoid(new Boid(1000, 400, objetivo1, obstaculo1));
    //flock2.addBoid(new Boid(100 , 300, objetivo2, obstaculo1));
    flock2.addBoid(new Boid(100 , 450, objetivo2, obstaculo1));
  }
  
  flock1.addBoids(flock2.getBoids());
  flock2.addBoids(flock1.getBoids());
}

void draw() {
  
  background(50);
  
  flock1.run();
  objetivo1.display();
  
  flock2.run();
  objetivo2.display();
    
  obstaculo1.display();
  
  line(0, 200, 1200, 200);
  
    
  line(0, 500, 1200, 500);
  
}

// Add a new boid into the System
void mousePressed() {
  flock1.addBoid(new Boid(mouseX,mouseY, objetivo1, obstaculo1));
  flock2.addBoid(new Boid(mouseX,mouseY, objetivo2, obstaculo1));
}