void main() {
  // init -> cek kondisi -> jalankan block -> post statement(counter += 2) -> cek kondisi -> block -> post state -> cek -> jalankan
  for (int counter = 0; counter < 5; counter += 2) {
    print('Halo');
  }

  // WHILE
  // Cek kondisi dulu
  int i = 0;
  while (i < 5) {
    print('Halo ke - ' + i.toString());
    i++;
  }

  // print("- - - - - - - - - - -");

  // DO WHILE
  // Jalanin dulu baru cek kondisi
  // Minimal satu kali
  int x = 0;
  do {
    print('DODOODODO ke ' + x.toString());
    x++;
  } while (x < 5);

  int a, b;
  a = 10;
  // a++ -> a = a + 1
  // ++a -> 1 + a = a
  // b = a++; // b = 10 -> b = a
  // a++ -> dipakai dulu baru ditambah
  b = ++a; // b = 11 -> b = 1 + a
  // ++a -> ditambah dulu baru dipakai
  print('$a - $b');
}
