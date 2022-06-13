import 'package:oop_erico/date_time_secure.dart';
import 'package:oop_erico/int_secure_box.dart';
import 'package:oop_erico/secure_box.dart';

void main() {
  // var box = IntSecureBox(100, '123');
  // var box2 = DateTimeSecureBox(DateTime.now(), '123');

  // print(box.getData('123'));
  // print(box2.getData('123'));

  // var box = SecureBox<int>(100, '123');
  // var box = SecureBox<String>('OK', '123');
  // var box = SecureBox<DateTime>(DateTime.now(), '123');
  // var box = SecureBox<bool>(true, '123');
  var box = SecureBox<PersonGen>(PersonGen('Muflikhan'), '123');
  print(box.getData('123').name);
}

class PersonGen {
  final String name;
  PersonGen(this.name);
}
