import 'dart:math' show pi;

abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  double width, height;
  Rectangle(this.width, this.height);
  @override
  double area() {
    return width * height;
  }
}

class Square extends Rectangle {
  Square(double width) : super(width, width);
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double area() {
    return pi * radius * radius;
  }
}

void main() {
  var rect = Rectangle(100, 50);
  var square = Square(50);
  var circle = Circle(50);
  print(rect.area());
  print(square.area());
  print(circle.area());
}
