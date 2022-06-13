import 'user_singleton.dart';

class Services {
  Future<User> getUserData() async {
    // Assuming that we get user data from database and then return it
    return User();
  }
}

class ServicesSingleton {
  // !---Singleton---
  static final ServicesSingleton _instance = ServicesSingleton._internal();

  // Bikin constructor private supaya ga keliatan
  ServicesSingleton._internal();

  // !-----------------
  // factory adalah method yg dapat mengembalikan object yang bertipe ServicesSingleton(Bertipe sesuai classnya)
  factory ServicesSingleton() {
    // jika kita panggil constructor ServicesSingleton, yang dipanggil adalah factory, bukan constructor seperti biasa
    return _instance;
  }

  // !---Singleton----

  Future<User> getUserData() async {
    // Assuming that we get user data from database and then return it
    return User();
  }
}
