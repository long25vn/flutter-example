Inheritance is a common way to reuse code. Dart only supports single
inheritance, that is, a class can have at most one superclass. If you want
to reuse code from multiple classes, mixins should be used. A class
can declare multiple mixins using the keyword with. A mixin is a class
that extends from Object and declares on constructors. A mixin can be
declared as a regular class using class or as a dedicated mixin using
mixin.
```dart
class Person {
  String name;
  Person(this.name);
}

class Student extends Person with CardHolder {
  Student(String name) : super('Student: $name') {
    holder = this;
  }
}

class Teacher extends Person with CardHolder {
  Teacher(String name) : super('Teacher: $name') {
    holder = this;
  }
}

mixin CardHolder {
  Person holder;
  void swipeCard() {
    print('${holder.name} swiped the card');
  }
}
mixin SystemUser {
  Person user;
  void useSystem() {
    print('${user.name} used the system.');
  }
}

class Assistant extends Student with SystemUser {
  Assistant(String name) : super(name) {
    user = this;
  }
}

void main() {
  var assistant = Assistant('Alex');
  assistant.swipeCard();
  assistant.useSystem();
}
```
