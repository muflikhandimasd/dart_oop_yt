void main() {
  // MonsterEnum m = MonsterEnum(status: 2);
  // MonsterEnum m = MonsterEnum(status: UcoaStatus.poisoned);
  // m.move();
  // m.eat();

  // Cascade
  // MonsterEnum m = MonsterEnum(status: UcoaStatus.poisoned)
  //   ..move()
  //   ..eat();
  MonsterEnum m = MonsterEnum(status: UcoaStatus.poisoned);
  print('Hello World');
  m
    ..move()
    ..eat();
}

enum UcoaStatus { normal, poisoned, confused }

class MonsterEnum {
  // final int status; // 1:Normal; 2:Poisoned; 3:Confused;
  final UcoaStatus status; // 1:Normal; 2:Poisoned; 3:Confused;

  MonsterEnum({this.status = UcoaStatus.normal});

  void move() {
    switch (status) {
      case UcoaStatus.normal:
        print('Ucoa is moving');
        break;
      case UcoaStatus.poisoned:
        print('Ucoa cannot move. Ucoa is dying. Ucoa needs help');
        break;
      case UcoaStatus.confused:
        print('Confused');
        break;
      default:
        print('Ucoa is spinning');
    }
  }

  void eat() {
    print('Ucoa is eating Indomie');
  }
}
