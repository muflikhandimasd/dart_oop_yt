import 'package:oop_erico/hero.dart';
import 'package:oop_erico/monster.dart';
import 'package:oop_erico/monster_kecoa.dart';
import 'package:oop_erico/monster_ubur_ubur.dart';

void main() {
  Monster monster = MonsterUburUbur();
  Hero h = Hero();
  MonsterUburUbur u = MonsterUburUbur();
  List<Monster> monsters = [];

  // monsters.add(MonsterUburUbur());
  // monsters.add(MonsterUburUbur());
  // monsters.add(MonsterKecoa());

  // print((monster as MonsterUburUbur).swim());

  print(monster.eatMeat());

  // for (Monster m in monsters) {
  //   if (m is MonsterUburUbur) {
  //     print(m.eatMeat());
  //     print(m.swim());
  //   }
  // }

  // m.healthPoint = -100;
  // h.healthPoint = 90;
  // u.healthPoint = 111;

  // print('Monster HP : ' + m.healthPoint.toString());
  // print('Hero HP : ' + h.healthPoint.toString());
  // print('Monster : ${m.eatMeat()}');
  // print('Hero : ${h.killAMonster()}');
  // print('UburUbur : ${u.eatMeat()}');
  // print('UburUbur : ${u.swim()}');
}
