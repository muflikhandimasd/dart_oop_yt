import 'dart:io';

void main() {
  int number = int.tryParse(stdin.readLineSync());
  // String output;

  // If Else
  // if (number > 0) {
  //   output = "Positif";
  // } else {
  //   output = "Negatif atau nol";
  // }
  //  print(output);

  // Ternary Operator
  // output = (number > 0) ? "Positif" : "Negatif atau nol";

  // if (number == 0) {
  //   print('Nol');
  // } else if (number == 1) {
  //   print('Satu');
  // } else if (number == 2) {
  //   print('Dua');
  // } else {
  //   print('Bilangan lain');
  // }

  // Switch Case
  switch (number) {
    case 0:
      print('Nol');
      break;
    case 1:
      print('Satu');
      break;
    case 2:
      print('Dua');
      break;
    default:
      print('Bilangan Lain');
  }
}
