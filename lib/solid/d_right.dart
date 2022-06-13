//// RIGHT

class User {
  // User related things
}

// !---HIGH LEVEL---
class UserManager {
  final IDataStorage dataStorage;

  UserManager(this.dataStorage);

  void saveUserData(User user) {
    dataStorage.saveData(user);
  }
}

// !--Ini abstraction, high level bergantung sama ini---
abstract class IDataStorage {
  void saveData(User user);
}

// !--Ini Low level modulenya---
class FirebaseStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // Connect to firebase
    // Save data
  }
}

// !--Low level--
class LocalStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // Connect to local storage
    // Save data
  }
}
