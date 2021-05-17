import 'dices.dart';
import 'dart:io';
class Bot{
  String name;
  int life;
  int health;

  Bot(this.name, this.life, this.health);

  //Affichage Bot
  displayBot(){
    print("Afficher BOT JE SUIS LE BOT ${this.name} J AI ${this.life} points vie et ${this.health} santé ");
  }
  //Afficher Bot

//attack PLayer
attackPlayer(int santeAdv, String nomAdv){
  //attack bot to player
  int frappeBot = throwDices();

  santeAdv = (santeAdv - frappeBot);
  print("--------------------Attack BOT--------------------------");
  print("The BOt attack Bot avec $frappeBot dommages, vie du ${nomAdv} est de : ${santeAdv}");
  print("--------------------! Attack BOT--------------------------");
  //end Attaque du bot

  return santeAdv;
}
//Attack Player
}