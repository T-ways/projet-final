import 'dices.dart';
import 'dart:io';
class Bot{
  String name;
  int life;
  int health;

  Bot(this.name, this.life, this.health);
  //Affichage Bot
  displayBot(){
    print("Afficher ${this.name}");
  }
}