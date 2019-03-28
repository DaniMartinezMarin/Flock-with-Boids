// The Flock (a list of Boid objects)

class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boids
  ArrayList<Boid> boids_esquivar;
  
  color color_flock;

  Flock(color c1) {
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
    color_flock = c1;
  }

  void run() {
    
    ArrayList<Boid> toRemove = new ArrayList<Boid>();
    for (Boid b : boids) {
      
      if(b.borrarBoid(b)){     
          toRemove.remove(b);      
      }
      else{
        b.run(boids, boids_esquivar, color_flock);  // Passing the entire list of boids to each boid individuall   
      }
    }
  }

  void addBoid(Boid b) {
    boids.add(b);
  }
  
  ArrayList getBoids(){
    
    return boids;
  }
  
  void addBoids(ArrayList<Boid> boids){
    
     boids_esquivar = boids;
  }

}