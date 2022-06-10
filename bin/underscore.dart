import 'package:oop_erico/ignore_parameter.dart';

void main() {
  // var o = Orang('Muflikhan', doingHobby: davidHobby);
  var o = Orang('Muflikhan', doingHobby: (_) {
    print('Swimming in the pool');
  });

  o.takeARest();
}

// void davidHobby(String name) {
//   print('$name is swimming');
// }
