class Person {
  String name;
  int age;
  Person(this.name, {this.age = 18});
  void displayinfo() {
    print('Name;$name,Age;$age');
  }
}
