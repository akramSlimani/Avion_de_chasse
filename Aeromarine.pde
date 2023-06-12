class Aeromarine{
   float aX;
  float aY; 
  float vitesse;
  color couleur;
  
  Aeromarine() {
    aX = 250;
    aY = 385;
    vitesse = 1;
    couleur = color(255, 0, 0);
  }
  
 Aeromarine(float aX, float aY, float vitesse, color couleur){
    this.aX = aX;
    this.aY = aY;
    this.vitesse = vitesse;
    this.couleur = couleur;
  }
  
  
 void arriver(){
    noStroke();
    fill(84, 89, 24);
    rect(aX, aY, 30, 10);
    rect(aX+12, aY-7, 6, 30);
    arc(aX+15, aY-5, 5, 5, -PI, 0, CHORD);
    triangle(aX+15, aY+20, aX+8, aY+30, aX+22, aY+30);
    rect(aX+5, aY+10, 5, 8);
    rect(aX+20, aY+10, 5, 8);

    
 }
 void lutter(){ 
      aX = mouseX-12;
      aY = mouseY-12;
}
}
