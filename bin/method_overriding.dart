void main() {
  // int a = 10;
  // int b = 12;

  // String a = 'Hello ';
  // String b = 'World!';
  // print(a + b);
  // + = operator yg akan dioverride

  Hero a = Hero(10);
  Hero b = Hero(13);
  print((a + b).power);
}

class Hero {
  final int power;

  Hero(this.power);

  Hero operator +(Hero other) {
    return Hero(power + other.power);
  }
}

// Menit ke 3