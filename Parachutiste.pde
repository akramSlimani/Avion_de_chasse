class Parachutiste{
  
// attributs de la classe Parachutistes 
  float x;
  float y;
  float taille;
  float vitesse; 
  color couleur;



// constructeur par defaut 
 Parachutiste(){
   x=255;
   y=0;
   taille=10;
   vitesse=1;
   couleur = color(132, 129, 30);

 }


// constructeur avec des parametres 
 Parachutiste(float x, float y, float taille, float vitesse, color couleur){
  this.x=x;
  this.y=y;
  this.taille=taille;
  this.vitesse=vitesse;
  this.couleur=couleur;
 }

 
// la methode qui dessine un parachutiste
 void dessiner(){
  
  ellipseMode(RADIUS);
  stroke(132, 129, 30);
  fill(132, 129, 30);
  arc(x, y, 20, 10, -PI, 0, CHORD);
  rect(x-5, y+15, taille, taille+5);
  line(x-5, y+15, x-15, y);
  line(x+5, y+15, x+15, y);
 
 }



// la methode qui fait deplacer le parachutiste en chutant 
 void chuter(){
  y += vitesse;
  if(y>=380){
  y=380;
  }
 }



 }
