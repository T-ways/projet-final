import 'dart:io';
import 'player.dart';
import 'dart:math';
import 'bot.dart';
import 'dices.dart';

void main(List<String> arguments) {


  print('Hello world!');
  print("Entrer le pseudo svp !");

 String pseudo = stdin.readLineSync()!;

 //multiplicateur de force
  List<double> pourcent = [1.0,0.75,0.5];
  Random force = new Random();
     //pourcentage de force de frappe
      int forces = force.nextInt(2)+1;
      var pourcentage = pourcent[forces];
     //pourcentage de force de frappe
  //!multiplicateur de force

  Player Rambo = Player(pseudo, 1, 100);
  Bot Robot = Bot('Robot', 1, 100);
  Rambo.displayPlayer();
  Robot.displayBot();

  //who player first 0 for player 1 for Bot
  int who = force.nextInt(2);


 // int frappeBot = throwDices();
 // int frappePlayer = throwDices();
  //print('on a $frappeBot et $frappePlayer');

  print(Rambo.attackBot(Robot.health));
  print(Robot.attackPlayer(Rambo.health, Rambo.pseudo));

  print(Rambo.attackBot(Robot.health));
  print(Robot.attackPlayer(Rambo.health, Rambo.pseudo));


   while(Robot.health >=1 && Rambo.health >=1){
     //attack player to Bot
     int frappePlayer = throwDices();
     Robot.health = (Robot.health - frappePlayer);
     print("******************Attack player***************************");
     print("${Rambo.pseudo} attack Bot avec $frappePlayer dommages, vie Bot est de : ${Robot.health}");
     print("********************! Attack player *************************");
     // End Attaque du player


     //attack bot to player
     int frappeBot = throwDices();
     Rambo.health = (Rambo.health - frappeBot);
     print("--------------------Attack BOT--------------------------");
     print("The BOt attack Bot avec $frappeBot dommages, vie du ${Rambo.pseudo} est de : ${Rambo.health}");
     print("--------------------! Attack BOT--------------------------");
     //end Attaque du bot

     if((Robot.health <= 0) || (Rambo.health <= 0)){
       print("Bot a actuellement ${Robot.health} et ${Rambo.health}");
       if((Robot.health < Rambo.health)){
         print("--= Le Bot a Gagn?? ${Rambo.pseudo}=--");
       }else{
        // print("--= ${Rambo.pseudo} a Gagn?? le Bot=--");
         Rambo.playerVictory();
       }

     }
   }
}
