class Person {
  String name;

  // Constructor adalah method khusus yang pertama kali dipanggil dalam pembuatan object dari suatu class
  // Person() adalah method
  // Person(String name) {
  Person({String name = 'no name'}) {
    // Person(String name) {
    // print('Sedang membuat object Person');
    // name = 'no name';
    print('constructor Person');
    this.name = name;
  }
}
