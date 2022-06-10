import 'dart:io';

import 'package:oop_erico/persegi_panjang.dart';

void main() {
  PersegiPanjang kotak1, kotak2;
  double luasKotak1, luasKotak2;

  kotak1 = new PersegiPanjang();
  kotak1.setPanjang(-5);
  kotak1.lebar = 12;

  kotak2 = PersegiPanjang();
  kotak2.setPanjang(double.tryParse(stdin.readLineSync()));
  kotak2.lebar = double.tryParse(stdin.readLineSync());

  luasKotak1 = kotak1.luas;
  luasKotak2 = kotak2.hitungLuas();

  print(luasKotak1);
  print(luasKotak2);
  print(kotak1.getPanjang());
}
