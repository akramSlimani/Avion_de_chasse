class Projectile {
  float xp;
  float yp;
  float v;
  
  Projectile() {
   xp=250;
   yp=250;
   v=10;
  }
  
  Projectile( float xp, float yp, float v) {
   this.xp=xp;
   this.yp=yp;
   this.v=v;
  }

  void dessiner() {
    noStroke();
    fill(232, 3, 27);
    ellipse(xp, yp, 2, 2);
  }
  
  void deplacer() {
    yp -= v;  
  }

  boolean bienVise(Parachutiste pa){
    return dist(xp, yp, pa.x, pa.y)<10;
  }
  
}
