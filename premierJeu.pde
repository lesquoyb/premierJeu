void draw() {
  dessine();
}

void dessine(){
   int[] tab =lol(x_ancien,y_ancien, couleur);
   x_ancien = tab[0];
   y_ancien = tab[1];
  tab =lol(x_ancien1,y_ancien1,couleur1);
     x_ancien1 = tab[0];
   y_ancien1 = tab[1];
  tab =lol(x_ancien2,y_ancien2, couleur2);
   x_ancien2 = tab[0];
   y_ancien2 = tab[1];
  tab = lol(x_ancien3,y_ancien3, couleur3);
   x_ancien3 = tab[0];
   y_ancien3 = tab[1];
  changeCouleur(x_ancien,y_ancien, couleur);
  changeCouleur(x_ancien1,y_ancien1, couleur1);
  changeCouleur(x_ancien2,y_ancien2, couleur2);
  changeCouleur(x_ancien3,y_ancien3, couleur3);
}

void changeCouleur(int x, int y, int coul){
 if( x== 0 && y == 0){
  couleur = coul;
 }
  else if ( x == 0 && y ==500){
   couleur1 = coul;
  }
 else if (x == 500 && y == 0){
  couleur2 = coul;
 }
  else if (x == 500 && y == 500){
   couleur3 = coul;
  } 
}
int[] lol(int x_ancien,int y_ancien, int couleur) {
 int nb = (int)random(4);
 int x_nouveau = x_ancien;
 int y_nouveau = y_ancien;
  
  if ( nb == 1 ){
    if (y_nouveau < 500){
      y_nouveau += 10;
    }
  }
  else if (nb == 2){
     if (y_nouveau > 0){
      y_nouveau -= 10;
    }
  }
  else if (nb == 3){
     if (x_nouveau < 500){
      x_nouveau += 10;
    }
  }
  else{
    if (x_nouveau > 0){
      x_nouveau -= 10;
    }
  }
    stroke(couleur);
    line(x_ancien,y_ancien,x_nouveau,y_nouveau);
    int[] tab =  {x_nouveau , y_nouveau};
   return tab;
}

void setup() {
  background(255);
  size(500, 500);
}
   int couleur =#ffee00;
   int couleur1 =#00ff00;
   int couleur2 = #ff0000;
   int couleur3 = #0000ff;
  
   int x_ancien =00;
   int y_ancien =0;
   int x_ancien1 =0;
   int y_ancien1 =500;
   int x_ancien2 =500;
   int y_ancien2 =0;
   int x_ancien3 =500;
   int y_ancien3 =500;
