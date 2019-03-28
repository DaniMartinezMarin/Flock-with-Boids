class Esquivar{
  
  PVector pos_objetivo; 
  color color_objetivo;
  
  Esquivar(color c, PVector pos){
    
    pos_objetivo = pos;
    color_objetivo = c;
  }
  
  void display(){
    
    ellipse(pos_objetivo.x, pos_objetivo.y, 30, 30);
    fill(color_objetivo);
    stroke(0);
  }
}