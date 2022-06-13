void main() {
  List<PersonSort> persons = [
    PersonSort('User', 23),
    PersonSort('Admin', 22),
    PersonSort('Merchant', 34),
    PersonSort('Boss', 25)
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

  persons.sort(((a, b) => b.role.compareTo(a.role)));
  // Kalo selain angka, pakai compareTo. B dianggap lebih besar
  /**
   * Role : User, age : 23
     Role : Merchant, age : 34
     Role : Boss, age : 25
     Role : Admin, age : 22

   */

  persons.forEach((element) {
    print('Role : ${element.role}, age : ${element.age}');
  });
}

class PersonSort {
  final String role;
  final int age;
  PersonSort(this.role, this.age);
}
