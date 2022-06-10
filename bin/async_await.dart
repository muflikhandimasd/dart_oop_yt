void main() async {
  var p = AsyncPerson();

  // print('job 1');
  // print('job 2');
  // // tanpa await, ini akan ngisi defaultnya. Ga ngisi sesuai yg kita inginkan
  // // Ngambil data dari database itu butuh waktu, nunggu ambil selesai baru ditampilin
  // Tujuannya supaya UI ga ngelag atau ngehang
  // // maka pasang await
  // // p.getDataAsync();
  // print('job 4');
  // await p.getDataAsync();
  // print('job 3 : ' + p.name);

  // Menggunakan then supaya ga pakai await atau jalannya sama aja gitu
  print('job 1');
  print('job 2');
  // method yg return value
  // p.getDataAsync().then((value) {
  //   // valuenya ini adalah data yg direturn getDataAsync
  //   print('job 3 : ' + p.name);
  // });

  // method yg ga return value
  // semua yg di dalam method then(), akan nungguin getDataAsync selesai dulu
  p.getDataAsync().then((_) {
    // valuenya ini adalah data yg direturn getDataAsync
    // Karena void, maka kasih aja _
    print('job 3 : ' + p.name);
  });

  print('job 4');
}

class AsyncPerson {
  String name = 'default name';

  void getData() {
    name = 'Muf'; //misalnya : ambil data dari Database(3 detik)
    print('get data[Done]');
  }

  // Dengan async bakal dilakuin tanpa nungguin perintah sebelumnya
  // Future, ngembaliinya nanti di masa yang akan datang
  Future<void> getDataAsync() async {
    // await supaya nungguin sampai proses method selesai dulu
    // Kasih await supaya bener bener nungguin methodnya selesai dulu
    // Future.delayed(
    //     Duration(seconds: 3)); //ini langsung dieksekusi jika ga dikasih await
    await Future.delayed(
        Duration(seconds: 3)); //ini langsung dieksekusi jika ga dikasih await
    name = 'Muf'; //misalnya : ambil data dari Database(3 detik)
    print('get data[Done]');
  }
}
