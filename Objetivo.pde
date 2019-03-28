class Objetivo{
  
  PVector pos_goal; 
  color color_objetivo;
  
  Objetivo(color c, PVector pos){
    
    pos_goal = pos;
    color_objetivo = c;
  }
  
  void display(){
    
    ellipse(pos_goal.x, pos_goal.y, 30, 30);
    fill(color_objetivo);
    stroke(0);
    
  }

}