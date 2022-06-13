import 'services_singleton.dart';
import 'user_singleton.dart';

/// Singleton adalah design pattern, dimana satu class hanya bisa membuat satu object untuk menghemat memori

void main(List<String> args) async {
  // Services services = Services();
  // User user = await services.getUserData();

  ServicesSingleton services1 = ServicesSingleton();
  ServicesSingleton services2 = ServicesSingleton();

  if (services1 == services2) {
    print('sama');
  } else {
    print('beda');
  }
}
