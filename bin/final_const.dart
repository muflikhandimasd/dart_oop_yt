// Top Level alias global, bisa digunakan dimana aja
// const hanya bisa digunakan sebagai local variabel atau static field
const pi = 3.14;

void main() {
  // var a = ConstClass(number: 5);
  // var b = ConstClass(number: 5);
  // print(identical(a, b)); //false
  print(pi);

  // Dengan const, object ConstClass(number: 5); akan menunjuk object yg sama
  // dengan const, kita ga akan ngebikin object berulang ulang. Lebih irit memori
  // const dibikin waktu compile, waktu runtime ga dibikin lagi
  var a = const ConstClass(number: 5);
  var b = const ConstClass(number: 5);
  print(identical(a, b)); //true
}

class RegularClass {
  final int x;
  static const myConst = 15;

  RegularClass({this.x}) {
    const anotherConst = 15;
    print(pi);
  }
}

class ConstClass {
  final int number;

  const ConstClass({this.number});
}
