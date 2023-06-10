class Aeromarine{
 
// attributs de la classe Aeromarine (avion de chasse)  
  float aX;
  float aY; 
  float vitesse;
  color couleur;
  
// constructeur par defaut 
 Aeromarine() {
    aX = 250;
    aY = 385;
    vitesse = 1;
    couleur = color(255, 0, 0);
  }
  
// constructeur avec des parametres  
 Aeromarine(float aX, float aY, float vitesse, color couleur){
    this.aX = aX;
    this.aY = aY;
    this.vitesse = vitesse;
    this.couleur = couleur;
  }
  
  
// la methode qui dessine l'avion  
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
  
/* la methode qui fait bouger l'avion 
et en cliquant sur la souris les projectiles se lancent */
 void lutter(){ 
      aX = mouseX-12;
      aY = mouseY-12;
    
 }
  

}
