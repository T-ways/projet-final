import 'dices.dart';
import 'bot.dart';
class Player{
  int _strength;
  String _pseudo;

  int get strength => _strength;

  set strength(int value) {
    _strength = value;
  }

  int _health;

  Player(this._pseudo, this._strength, this._health);

  //Affichage Player
 displayPlayer(){
   print("Afficher Player mon est :${this._pseudo} j ai ${this.health} Santé et ${this.strength} force ");
 }
  //Affichage Player

//Victory function of player

playerVictory(){

   String victory = "Bravo !! ${this.pseudo} a Gagné !!!";

   return victory;
}

//Function player's victory

  //Attack Bot
 attackBot(var santebot){
//attack player to Bot
   int frappePlayer = throwDices();

   santebot = (santebot - frappePlayer);
   print("******************Attack player***************************");
   print("${this.pseudo} attack Bot avec $frappePlayer points, vie Bot est de : ${santebot}");
   print("********************! Attack player *************************");
 // End Attaque du player

   return santebot;
 }

  String get pseudo => _pseudo;

  set pseudo(String value) {
    _pseudo = value;
  }

  int get health => _health;

  set health(int value) {
    _health = value;
  }
//Attack Bot
}