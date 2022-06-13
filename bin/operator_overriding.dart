void main() {
  // int a = 10;
  // int b = 12;

  // String a = 'Hello ';
  // String b = 'World!';
  // print(a + b);
  // + = operator yg akan dioverride

  // Hero a = Hero(10);
  // Hero b = Hero(13);
  // print((a + b).power);

  Hero a = Hero(10);
  Hero b = Hero(13);
  // print((a + 15).power);
  // print(a == b);
  print(a > b);
}

class Hero {
  final int power;

  Hero(this.power);

  // Hero operator +(Hero other) {
  //   return Hero(power + other.power);
  // }

  Hero operator +(var other) {
    if (other is Hero) {
      return Hero(power + other.power);
    } else if (other is int) {
      return Hero(power + other);
    } else {
      return this;
      // this, ngereturn object itu sendiri
    }
  }

  @override
  bool operator ==(var other) {
    if (other is Hero) {
      if (other.power == power) {
        return true;
      }
    }
    return false;
  }

  @override
  bool operator >(var other) {
    if (other is Hero) {
      if (power > other.power) {
        return true;
      }
    }
    return false;
  }
}
