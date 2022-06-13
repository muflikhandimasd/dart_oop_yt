// FutureOr untuk mencakup tipe return int dan Future<int>
import 'dart:async';

void main(List<String> args) async {
  User user = User();
  UserManager userManager = UserManager(FirebaseStorage());
  var result = await userManager.getUserAge(user);
  print(result);
}

class User {
  // User related things
  int age = 0;
}

// !---HIGH LEVEL---
class UserManager {
  final IDataStorage dataStorage;

  UserManager(this.dataStorage);

  void saveUserData(User user, int option) {
    dataStorage.saveData(user);
  }

  FutureOr<int> getUserAge(User user) async {
    return await dataStorage.getUserAge(user);
  }
}

// !--Ini abstraction, high level bergantung sama ini---
abstract class IDataStorage {
  void saveData(User user);
  FutureOr<int> getUserAge(User user);
}

// !--Ini Low level modulenya---
class FirebaseStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // Connect to firebase
    // Save data
  }

  @override
  FutureOr<int> getUserAge(User user) async {
    // Ambil data di firebase
    await Future.delayed(Duration(seconds: 5));
    // Await nunggu supaya proses selesai dulu
    return 20;
  }
}

// !--Low level--
class LocalStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // Connect to local storage
    // Save data
  }

  @override
  int getUserAge(User user) {
    // Ambil tanggal lahir user
    // Bandingkan tanggal lahir dengan tanggal sekarang
    // lalu hitung umurnya
    return 17;
  }
}
