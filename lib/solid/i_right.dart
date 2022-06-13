//// RIGHT

abstract class Hero {
  void regularAttack();
}

// !------------------------

abstract class ImagicCaster {
  void castMagic();
}

abstract class IHealer {
  void heal();
}

abstract class IMaker {
  void makeMoney();
}

// !------------------------

class Thief extends Hero implements IMaker {
  @override
  void makeMoney() {
    // ...
  }

  @override
  void regularAttack() {
    // ...
  }
}

// !----------------------

class WhiteMage extends Hero implements IHealer, ImagicCaster {
  @override
  void castMagic() {
    // ...
  }

  @override
  void heal() {
    // ...
  }

  @override
  void regularAttack() {
    // ...
  }
}

// !------------------------------------

class BlackMage extends Hero implements ImagicCaster {
  @override
  void castMagic() {
    // ...
  }

  @override
  void regularAttack() {
    // ...
  }
}
