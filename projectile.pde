class Projectile {
  
// attributs de la classe Projectile   
  float xp;
  float yp;
  float v;
  
  
// constructeur par defaut 
  Projectile() {
   xp=250;
   yp=250;
   v=10;
   
  }
  
// constructeur avec des parametres 
  Projectile( float xp, float yp, float v) {
   this.xp=xp;
   this.yp=yp;
   this.v=v;
   
  }

//la methode qui dessine les projectiles 
  void dessiner() {
    noStroke();
    fill(232, 3, 27);
    ellipse(xp, yp, 2, 2);
    
  }
  
// la methode qui fait deplacer les projectiles 
  void deplacer() {
    yp -= v;  
  }
  
/* la methode qui fait disparaitre les parachutistes morts(ils sont bien vises) 
  elle calcule la distance entre le projectile et le parachutiste courant */
  boolean bienVise(Parachutiste pa){
    return dist(xp, yp, pa.x, pa.y)<10;
  }
  
}
