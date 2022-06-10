import 'dart:io';

double luasSegiEmpat(double panjang, double lebar) {
  // double hasil;
  // hasil = panjang * lebar;
  // return hasil;

  return panjang * lebar;
}

/**
 * Ada Function yang mengembalikan(Membawa data) 
 * dan ada juga function yang hanya memproses sesuatu 
 * tanpa menghasilkan(Mengembalikan/ membawa) suatu data
 */

void sapaPenonton() {
  print('Hello Penonton');
}

double luasPersegiPanjang(double p, double l) => p * l;

void main() {
  Function f;
  f = luasSegiEmpat;
  print(f(2.0, 3.0));

  print(luasPersegiPanjang(10, 20));
  // sapaPenonton();
  // double p, l, luas;

  // p = double.tryParse(stdin.readLineSync());
  // l = double.tryParse(stdin.readLineSync());

  // luas = luasSegiEmpat(p, l);

  // // print(luas);
  // print(luasSegiEmpat(p, l));

  // NAMED Parameter
  // print(say('Dimas', 'Hello'));
  // print(say('Muf', 'Hai', to: 'Doni', appName: 'IG'));

  // Positional Parameter
  print(sayPositional('Dio', 'Good'));
  print(sayPositional('Dio', 'Good', 'Roni', 'FB'));
  print(doMathOperator(2, 5, (a, b) => a * b));
}

String say(String from, String message, {String to, String appName}) {
  return from +
      " say " +
      message +
      ((to != null) ? " to " + to : "") +
      ((appName != null) ? " via " + appName : "");
}

String sayPositional(String from, String message,
    [String to, String appName = "WhatsApp"]) {
  return from +
      " say " +
      message +
      ((to != null) ? " to " + to : "") +
      ((appName != null) ? " via " + appName : "");
}

int doMathOperator(int number1, int number2, Function(int, int) operator) {
  return operator(number1, number2);
}
