import 'dart:math';
//Lancer des dés
throwDices(){
  Random dice = new Random();
  var dices =dice.nextInt(10) + 2;
  return dices;
}