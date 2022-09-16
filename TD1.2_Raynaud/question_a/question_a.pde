/*
2.a) Ecrire le programme qui affiche dans la fenêtre un cercle 
d'une couleur soit bleue, soit verte, soit jaune. Ensuite lorsque 
vous cliquez sur ce cercle, ce cercle 
deviendra vert s'il était bleu, jaune 
s'il était vert, et bleu s'il était jaune.
*/
//initialisation des variables globales
float d;// variable distance en décimale
int diam = 100 ;
final int blue = #0364f1;
final int yellow = #ffff01;
final int green = #1fff00;
int c = blue;

//fonction setup, initialisation de la taille de la fenêtre
void setup(){
  size(300,300);}

//fonction qui crée un cercle
void draw(){
  fill (c);       
  // cercle de position x=150 et y=150 et de diamètre voulu, 
  //le cercle est par défaut de couleur bleu
  circle(150,150,diam);
}

// Quand on clique avec la souris
void mouseClicked(){        
  /*on met dans la variable de la distance, la distance qui se trouve entre le
  centre du cercle et notre clique que l'on soustrait au rayon du cercle*/
  d = sqrt(sq(mouseX-150)+sq(mouseY-150))-50;
  /*Si le clique de la souris est dans le cercle*/
  if (d<0){
    //selon la couleur du cercle on va sur une couleur précise
    if (c == blue){
      c = green;
    }else if (c == green){
      c = yellow;
    }else if (c == yellow){
      c = blue;
    }
  }
}
