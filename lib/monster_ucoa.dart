import 'package:oop_erico/drink_ability_mixin.dart';
import 'package:oop_erico/flying_monster.dart';
import 'package:oop_erico/monster_ubur_ubur.dart';

class MonsterUcoa extends MonsterUburUbur
    // with DrinkAbilityMixin
    implements
        FlyingMonster,
        PlayingBasket {
  @override
  String fly() {
    return "Terbang melayang";
  }
}

abstract class PlayingBasket {}
