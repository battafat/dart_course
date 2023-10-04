import 'dart:math';

abstract class Shape {
  double get area;
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;
  
  @override
  double get area => pi * radius * radius;

}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  // final shape = Shape();
final square = Square(10);
printArea(square);
final circle = Circle(5);
printArea(circle);
final shapes = [
  Square(2),
  Circle(3),
];
// this all works because the objects have a type
// that is a sublcass of Shape.
shapes.forEach((shape) => printArea(shape));
shapes.forEach(printArea);
}