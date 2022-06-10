import 'package:oop_erico/flying_monster.dart';
import 'package:oop_erico/monster.dart';

class MonsterKecoa extends Monster implements FlyingMonster {
  @override
  String fly() => "Syuuunggg....";

  @override
  String move() {
    return "Jalan jalan";
  }
}
