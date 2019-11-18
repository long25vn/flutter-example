# Inheritance
You can inherit other classes in Dart using the `extend` keyword.

```dart
main(List<String> args) {
  Pug p = new Pug('Duffy', 5);
  print(p.name);
}

class Dog {
  String name;
  int age;

  Dog(this.name, this.age);

  Dog.newBorn() {
    name = 'Doggy';
    age = 0;
  }
}

class Pug extends Dog {
  Pug(String name, int age): super(name, age);
}
```

Here our Pug class inherits from the Dog class and calls the constructor of the Dog class with appropriate parameters using the super keyword.

You can also call other constructor within in the same class by using the keyword this after the colons( : ).

```dart
main(List<String> args) {
  Pug p = new Pug.small('Duffy');
  print(p.name);
}
 
class Dog {
  String name;
  int age;
 
  Dog(this.name, this.age);
 
  Dog.newBorn() {
    name = 'Doggy';
    age = 0;
  }
}
 
class Pug extends Dog {
  Pug(String name, int age): super(name, age);
 
  Pug.small(String name): this(name, 1);
 
  Pug.large(String name): this(name, 3);
}
```

Here we create two named constructors that take in only the name of dog and call the default Pug constructor.

# Methods

Method in a class are just similar to defining methods independently in Dart.

```dart
main(List<String> args) {
  Dog d = new Dog('Duffy', 10);
  d.bark();
}
 
class Dog {
  String name;
  int age;
 
  Dog(this.name, this.age);
 
  Dog.newBorn() {
    name = 'Doggy';
    age = 0;
  }
 
  bark() { ////////////////////
    print('Bow Wow');/////////
  }///////////////////////////
}
```
