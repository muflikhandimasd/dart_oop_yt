import 'package:oop_erico/character.dart';
import 'package:oop_erico/drink_ability_mixin.dart';

abstract class Monster extends Character {
  String eatMeat() => "Grr... Yummyyy";
  String move();
}
