import 'package:oop_erico/hero.dart';
import 'package:oop_erico/monster.dart';
import 'package:oop_erico/monster_ubur_ubur.dart';

void main() {
  Monster m = Monster();
  Hero h = Hero();
  MonsterUburUbur u = MonsterUburUbur();

  m.healthPoint = -100;
  h.healthPoint = 90;
  u.healthPoint = 111;

  print('Monster HP : ' + m.healthPoint.toString());
  print('Hero HP : ' + h.healthPoint.toString());
  print('Monster : ${m.eatMeat()}');
  print('Hero : ${h.killAMonster()}');
  print('UburUbur : ${u.eatMeat()}');
  print('UburUbur : ${u.swim()}');
}
