void main() {
  List<PersonSort> persons = [
    PersonSort('User', 23),
    PersonSort('Admin', 30),
    PersonSort('User', 31),
    PersonSort('Admin', 44),
    PersonSort('User', 87),
    PersonSort('Merchant', 56),
    PersonSort('Admin', 22),
    PersonSort('Boss', 99),
    PersonSort('Merchant', 11),
    PersonSort('Boss', 73),
    PersonSort('Merchant', 90),
    PersonSort('Boss', 123)
  ];

  // persons.sort(((a, b) => a.age - b.age));
  // Hasil negatif, dimulai dari a(yang lebih kecil)
  /**
   * Role : Admin, age : 22
     Role : User, age : 23
     Role : Merchant, age : 27
   */

  // persons.sort(((a, b) => b.age - b.age));
  // Hasil nol, dimulai dari a(yang lebih kecil)
  /**
   * Role : Admin, age : 22
     Role : User, age : 23
     Role : Merchant, age : 27
   */

  // persons.sort(((a, b) => b.age - a.age));
  // Hasil positif, dimulai dari b(yang lebih besar)
  /**
   * Role : Merchant, age : 27
     Role : User, age : 23
     Role : Admin, age : 22
   */

  // persons.sort(((a, b) => a.role.compareTo(b.role)));
  /**
   * Role : Admin, age : 22
     Role : Boss, age : 25
     Role : Merchant, age : 34
     Role : User, age : 23
   */

  // persons.sort(((a, b) => b.role.compareTo(a.role)));
  // Kalo selain angka, pakai compareTo. B dianggap lebih besar
  /**
   * Role : User, age : 23
     Role : Merchant, age : 34
     Role : Boss, age : 25
     Role : Admin, age : 22

   */

  // persons.sort((p1, p2) {
  //   if (p1.role.compareTo(p2.role) != 0) {
  //     // bisa positif, bisa negatif
  //     return p1.role.compareTo(p2.role);
  //   } else {
  //     return p1.age.compareTo(p2.age);
  //   }
  // });

  // Custom sort
  persons.sort((p1, p2) {
    // if (p1.roleWeight.compareTo(p2.roleWeight) != 0) {
    //   // bisa positif, bisa negatif
    //   return p1.roleWeight.compareTo(p2.roleWeight);
    if (p1.roleWeight - p2.roleWeight != 0) {
      // bisa positif, bisa negatif
      return p1.roleWeight - p2.roleWeight;
    } else {
      return p1.age.compareTo(p2.age);
    }
  });

  persons.forEach((element) {
    print('Role : ${element.role}, age : ${element.age}');
  });
}

class PersonSort {
  final String role;
  final int age;
  PersonSort(this.role, this.age);

  int get roleWeight {
    switch (role) {
      case 'Merchant':
        return 1;
        break;
      case 'User':
        return 2;
        break;
      default:
        return 3;
    }
  }
}
