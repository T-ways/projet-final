import 'dices.dart';
class Player{
  int strength;
  String pseudo;
  int health;

  Player(this.pseudo, this.strength, this.health);

  //Affichage Player
 displayPlayer(){
   print("Afficher Player mon nom est :${this.pseudo} j ai ${this.health} Santé et ${this.strength} force ");
 }
//Affichage Player

//Victory function of player

playerVictory(){

   String victory = "Bravo !! ${this.pseudo} a Gagné !!!";

   return victory;
}

//Function player's victory
}