import 'package:meta/meta.dart';

void main() {
  // Dengan menggunakan try catch, program ga akan langsung berhenti meski ada error
  try {
    // Masukkan kode yg mungkin error
    PersonReq p = PersonReq(name: null);
    print(p.name);
  } catch (e) {
    // tangkap error
    print(e);
  }

  print('Hello');
}

class PersonReq {
  final String name;
  final int age;
  PersonReq({@required this.name, this.age = 0}) {
    // assert : Menegaskan atau meyakinkan
    assert(name != null, 'You must give name person');
  }
}
