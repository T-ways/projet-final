import 'dices.dart';
import 'bot.dart';
class Player{
  int strength;
  String pseudo;
  int health;

  Player(this.pseudo, this.strength, this.health);

  //Affichage Player
 displayPlayer(){
   print("Afficher Player mon est :${this.pseudo} j ai ${this.health} Santé et ${this.strength} force ");
 }
  //Affichage Player

//Victory function of player

playerVictory(){

   String victory = "Bravo !! ${this.pseudo} a Gagné !!!";

   return victory;
}

//Function player's victory

  //Attack Bot
 attackBot(int santebot){
//attack player to Bot
   int frappePlayer = throwDices();

   santebot = (santebot - frappePlayer);
   print("******************Attack player***************************");
   print("${this.pseudo} attack Bot avec $frappePlayer dommages, vie Bot est de : ${santebot}");
   print("********************! Attack player *************************");
 // End Attaque du player

   return santebot;
 }
 //Attack Bot
}