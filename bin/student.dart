import 'person.dart';

class Student extends Person {
  // Constructor yg dipanggil itu mulai dari atas
  // Parent trus ke turunannya

  // Student() : super('Student baru') {
  // : super() -> super = parent, artinya ke constructor parent
  Student({String studentName = 'Student baru'}) : super(name: studentName) {
    print('constructor Student');
  }
}
