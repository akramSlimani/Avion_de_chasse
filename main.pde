int k =0;
Parachutiste[] pa ;
Aeromarine a;
Projectile[] pr = new Projectile[1];

 void setup(){
  size(500, 500);
//creer un aeromarine 
  a = new Aeromarine();
  
// creer le premier projectile , le reste sera generer par la fonction qui prolonge le tableau 
  pr[0] = new Projectile(mouseX, mouseY, 5);
  
// creer des parachutistes 
  pa = new Parachutiste[30];
  
   for(int i=0; i<pa.length; i++){
     pa[i] = new Parachutiste(random(width), 0, 1, random(1,2), color(132, 129, 30) );
    }

 }

 void draw(){
//  separation de la fenetre en ciel , champs et terre 
  background(83, 182, 177);

  noStroke();
  fill(42, 112, 37);
  rect(0,393, width, 7);


  fill(100, 56, 30);
  rect(0, 400,width,height);

// appel aux methodes de la classe parachutiste 
  pa[k].dessiner();
  pa[k].chuter();
  
  
// appel aux methodes de la classe projectiles 
    for(int j=0; j<pr.length; j++){
       pr[j].dessiner();
       pr[j].deplacer();
       // verifier si le parachutiste est bien vise si oui un autre parachutiste arrive 
       if(pr[j].bienVise(pa[k])){
         k++;
       }
     }
     
/*en appuyant sur la souris les projectiles se lancent en utilisant 
la foncrtion append qui prolonge la taille du tableau qui construit les projectiles */
    if(mousePressed) {
      Projectile p = new Projectile(mouseX, mouseY, 5);
      pr = (Projectile[]) append(pr, p);
     }
     
// appel aux methodes de la classe Aeromarine     
  a.arriver();
  a.lutter();
 
 

 
 }
