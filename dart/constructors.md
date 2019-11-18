Like other programming languages, objects in Dart are created by
constructors. Usually, constructors are created by declaring functions
with the same name as their classes. Constructors can have arguments
to provide necessary values to initialize new objects. If no constructor is
declared for a class, a default constructor with no arguments is provided.
This default constructor simply invokes the no-argument constructor
in the superclass. However, if a constructor is declared, this default
constructor doesn’t exist.
A class may have multiple constructors. You can name these
constructors in the form ClassName.identifier to better clarify the
meanings.


```dart
class Rectangle {
  final num top, left, width, height;
  Rectangle(this.top, this.left, this.width, this.height);
  Rectangle.fromPosition(this.top, this.left, num bottom, num right)
      : assert(right > left),
        assert(bottom > top),
        width = right - left,
        height = bottom - top;
  @override
  String toString() {
    return 'Rectangle{top: $top, left: $left, width: $width, height: $height}';
  }
}

void main(List<String> args) {
  var rect1 = Rectangle(100, 100, 300, 200);
  var rect2 = Rectangle.fromPosition(100, 100, 300, 200);
  print(rect1);
  print(rect2);
}
```

It’s common to use factories to create objects. Dart has a special
kind of factory constructors that implements this pattern. A factory
constructor doesn’t always return a new instance of a class. It may return
a cached instance, or an instance of a subtype

```dart
class ExpensiveObject {
  static ExpensiveObject _instance;
  ExpensiveObject._create() {
    print('created');
  }
  factory ExpensiveObject() {
    if (_instance == null) {
      _instance = ExpensiveObject._create();
    }
    return _instance;
  }
}

void main() {
  ExpensiveObject();
  ExpensiveObject();
}

```
the class
ExpensiveObject has a named constructor `ExpensiveObject._create()`
to actually create a new instance. The factory constructor only invokes
`ExpensiveObject._create()` when _instance is null. When running the
code, you can see that the message “created” is only printed once.
