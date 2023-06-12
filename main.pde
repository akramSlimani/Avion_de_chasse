int k =0;
Parachutiste[] pa ;
Aeromarine a;
Projectile[] pr = new Projectile[1];

 void setup(){
  size(500, 500);
  a = new Aeromarine();
  
  pr[0] = new Projectile(mouseX, mouseY, 5);
  
  pa = new Parachutiste[30];
  
   for(int i=0; i<pa.length; i++){
     pa[i] = new Parachutiste(random(width), 0, 1, random(1,2), color(132, 129, 30) );
    }

 }

 void draw(){
  background(83, 182, 177);

  noStroke();
  fill(42, 112, 37);
  rect(0,393, width, 7);


  fill(100, 56, 30);
  rect(0, 400,width,height);

  pa[k].dessiner();
  pa[k].chuter();
  
  
    for(int j=0; j<pr.length; j++){
       pr[j].dessiner();
       pr[j].deplacer();
       // verifier si le parachutiste est bien vise si oui un autre parachutiste arrive 
       if(pr[j].bienVise(pa[k])){
         k++;
       }
     }

    if(mousePressed) {
      Projectile p = new Projectile(mouseX, mouseY, 5);
      pr = (Projectile[]) append(pr, p);
     }
     
  a.arriver();
  a.lutter();
 
 

 
 }
