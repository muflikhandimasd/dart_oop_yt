void main() {
  // List adalah kumpulan data
  // List<int> myList = [7, 2, 9, 1, 3, -1, 1, 3];
  // List<int> list = [1, 2, 3];

  // sublist = untuk ngambil sebagian dari list
  // list = myList.sublist(3);

  // clear untuk menghapus semuanya
  // list.clear();

  // b > a
  // b - a = positif
  // positif -> mulai dari terbesar ke terkecil
  // myList.sort(((a, b) => b - a));

  // myList.removeWhere((number) => number % 2 == 0);

  // if (myList.every((number) => number % 2 != 0)) {
  //   print('Semua angka ganjil');
  // } else {
  //   print('Tidak semua ganjil');
  // }

  // if (myList.isEmpty) {
  //   print('Kosong');
  // } else {
  //   print('Tidak Kosong');
  // }

  // myList.forEach((element) {
  //   print(element);
  // });

  // Set<int> s;
  // s = myList.toSet();

  // s.forEach((element) {
  //   print(element);
  // });

  // myList.add(10);
  // myList.addAll(list);
  // // Insert = menyisipkan
  // myList.insert(0, 13);
  // myList.insertAll(2, [30, 50, 10]);
  // // myList.remove(10); //yg dihapus yang pertama doang
  // myList.removeLast();
  // myList.removeAt(0);

  // myList.removeRange(0, 6);

  // myList.removeWhere((number) => number % 2 == 0);

  // if (myList.contains(7)) {
  //   print('Betul');
  // }

  // myList.forEach((bilangan) {
  //   print(bilangan);
  // });

  // list[0] = 10;

  // int e = list[0];
  // print(e);

  // For biasa
  // for (int i = 0; i < list.length; i++) {
  //   print(list[i]);
  // }

  // For in
  // Untuk setiap bilangan di dalam list, print bilangan
  // for (final int bilangan in list) {
  //   print(bilangan);
  // }

  // Foreach
  // list.forEach((bilangan) {
  //   print(bilangan);
  // });

  // LIST MAPPING
  List<int> myList = [1, 2, 3, 4, 1, 2, 5, 1, 3];
  List<String> list = [];

  // myList.forEach((bilangan) {
  //   list.add('angka : ' + bilangan.toString());
  // });

  list = myList.map((number) => "angka : " + number.toString()).toList();
  // Dibalikin ke toList() karena method map() mengembalikan iterable

  list.forEach((str) {
    print(str);
  });
}
