import 'package:oop_erico/flying_monster.dart';
import 'package:oop_erico/monster.dart';
import 'package:oop_erico/monster_kecoa.dart';
import 'package:oop_erico/monster_ubur_ubur.dart';
import 'package:oop_erico/monster_ucoa.dart';

void main() {
  List<Monster> monsters = [];

  monsters.add(MonsterKecoa());
  monsters.add(MonsterUburUbur());
  monsters.add(MonsterUcoa());

  for (Monster m in monsters) {
    if (m is FlyingMonster) {
      print((m as FlyingMonster).fly());
    }
  }
}
