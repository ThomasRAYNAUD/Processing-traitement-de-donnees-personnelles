/*
2.b) Ecrire un programme qui affiche dans la console la majorité ou non d'une 
personne initialisée de son pays de naissance et de son âge, sachant qu'en France 
la nationalité est effective dès 18 ans alors qu'elle est obtenue à 21 ans en Chine
2 tests :
i) âge = 18, nationalité = chinoise
ii) âge = 21, nationalité = française

*/

//déclaration des variables globales age et nationalité
int age=12; 
String nationalite =  "francaise" ;

//fonction, on déclare que la fonction draw doit d'exécuter une seule fois
void setup(){
  noLoop();
}

/*
fonction draw() qui permet de vérifier le statut d'une personne
en fontion de son age et de sa nationalité(francaise ou chinoise)
*/
void draw(){
  //cette fois-ci on utilise un switch_case
  switch (nationalite) {
    case "francaise":
      if (age>=18) {
        print( "La personne est question est majeure dans son pays." );
      }else{
        print( "La personne est question est mineure dans son pays." );
      }
      break;
    case "chinoise":
       if (age>=21) {
        print( "La personne est question est majeure dans son pays." );
      }else{
        print( "La personne est question est mineure dans son pays." );
      }
      break;
    default:
       print("Malheureusement, nous n'avons pas d'information sur ce pays.");
       break;
  }
}
