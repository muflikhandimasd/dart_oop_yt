//// WRONG

abstract class IHeroAbility {
  void heal();
  void castMagic();
  void makeMoney();
}

abstract class Hero implements IHeroAbility {
  void regularAttack();
}

// !---------------------------------

class Thief extends Hero {
  @override
  void castMagic() {
    // do nothing
  }

  @override
  void heal() {
    // do nothing
  }

  @override
  void makeMoney() {
    // ...
  }

  @override
  void regularAttack() {
    // ...
  }
}

// !-----------------------------------

class WhiteMage extends Hero {
  @override
  void castMagic() {
    //...
  }

  @override
  void heal() {
    // ...
  }

  @override
  void makeMoney() {
    // do nothing
  }

  @override
  void regularAttack() {
    // ...
  }
}

// !----------------------------------

class BlackMage extends Hero {
  @override
  void castMagic() {
    // ...
  }

  @override
  void heal() {
    // do nothing
  }

  @override
  void makeMoney() {
    // do nothing
  }

  @override
  void regularAttack() {
    // ...
  }
}
