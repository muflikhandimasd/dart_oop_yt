import 'package:oop_erico/monster.dart';

class MonsterUburUbur extends Monster {
  String swim() => "Wooshh.. wushh...";

  @override
  String eatMeat() {
    // super : milik class parent
    // return super.eatMeat();
    return "sedot asik";
  }

  @override
  String move() {
    return "Berenang-renang";
  }
}
