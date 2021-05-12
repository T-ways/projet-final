import 'dices.dart';
class Player{
  int strength;
  String pseudo;
  int health;

  Player(this.pseudo, this.strength, this.health);

  //Affichage Player
 displayPlayer(){
   print("Afficher ${this.pseudo}");
 }
//Affichage Player

//Victory function of player

playerVictory(){

   String victory = "Bravo !! ${this.pseudo} a Gagné !!!";

   return victory;
}

//Function player's victory
}