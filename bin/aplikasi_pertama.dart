import 'dart:io';

void main() {
  String input = stdin.readLineSync();
  // print(input);
  int number = int.tryParse(input);
  print(number + 10);
}
