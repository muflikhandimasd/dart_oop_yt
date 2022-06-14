// @dart = 2.17
void main(List<String> args) {
  // Bebas letakkin named parameter, asal yg wajib diisi tetep urut
  // User u = User(age: 22, 200, fullName: 'Muflikhan Dimas', 'muf');

  // ENHANCED ENUM
  // BELUM UPDATE
  // UserAuthException e = UserAuthException.invalidPassword;
  // print(e.description);
  // print(e.convertToString());

  // ENHANCED UPDATE
  UserAuthException e = UserAuthException.invalidPassword;
  print(e);
  print(e.code);
  print(e.exceptionCodeInDouble);
  print(e.description);
}

enum AdministratorType {
  generalAdministrator,
  securityAdministrator,
  superAdministrator
}

// NAMED PARAMETER
class User {
  int id;
  String username;
  String fullName;
  int age;

  User(this.id, this.username, {this.fullName = 'No name', required this.age});
}

// SUPER INITIALIZER
class Administrator extends User {
  AdministratorType administratorType;

  // TANPA SUPER INITIALIZER
  // Administrator(int id, String username,
  //     {String fullName = 'No Name',
  //     required int age,
  //     required this.administratorType})
  //     // :super() ini manggil constructor parent
  //     : super(id, username, fullName: fullName, age: age);

  // DENGAN SUPER INITIALIZER
  Administrator(super.id, super.username,
      {super.fullName = 'No Name',
      required super.age,
      required this.administratorType});
}

// ENHANCED ENUM
// BELUM UPDATE
// enum UserAuthException {
//   invalidPassword,
//   invalidUsername,
// }

// extension UserAuthExceptionExtension on UserAuthException {
//   String get description {
//     if (name == 'invalidPassword') {
//       return 'Wrong password. Please try again';
//     } else {
//       return 'Username is not exist';
//     }
//   }

//   @override
//   String convertToString() => '';
// }

// ENHANCED UDAH UPDATE
enum UserAuthException {
  invalidPassword(100, 'Wrong password. Please try again'),
  invalidUsername(200, 'Username is not exist');

  final int code;
  final String description;

  const UserAuthException(this.code, this.description);

  double get exceptionCodeInDouble => code.toDouble();

  @override
  String toString() => '$name is one of the UserException';
  // name adalah field bawaan enum
}
