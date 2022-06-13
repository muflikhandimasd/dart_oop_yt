void main(List<String> args) {
  // dynamic myDynamic;
  // dynamic : bisa tipe data apapun
  // myDynamic = 12;
  // myDynamic = 'Hello';
  // myDynamic = true;

  // myDynamic = Person();
  // print((myDynamic as Person).name);
  // print(myDynamic.name);

  // if (myDynamic is Person) {
  //   print(myDynamic.name);
  // }

  // var myVar = 12;
  // var : menunjuk object apapun tapi hanya sekali di awal saja. Setelah itu, object yang bisa dimasukkan dalam myVar -> harus setipe dg object yg pertama kali kita masukkan
  // myVar = 'Hello'; //ERROR

  // var myVar;
  // myVar = 12;
  // myVar = 'Hai';
  // Ini bisa karena jika myVar ga diisi langsung valuenya, dia jadi bertipe dynamic
  // pakai var -> jika di awal kita belum tau tipe datanya di awal, setelah itu tipenya akan sama

  var myVar = Person();
  print(myVar.name);
}

class Person {
  String name = 'no name';
}
