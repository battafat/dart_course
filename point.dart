class Point {
  const Point(this.x, this.y);
  final int x;
  final int y;

  @override
  String toString() => 'Point($x, $y)';


  @override
  bool operator ==(covariant Point other) { 
    return x == other.x && y == other.y;
  }

  @override // Dart says this isn't necessary. Runs without it.
  // Presumably because we're defining the operand for type Point, not bool or other inherited type...?
  Point operator +(Point other) { 
    return Point(x + other.x, y + other.y);
  }

  @override// Dart says this isn't necessary. Runs without it.
  // Presumably because we're defining the operand for type Point, not bool or other inherited type...?
  Point operator *(int other) { 
    return Point(x * other, y * other);
  }

}  

void main () {

  print(Point(1, 1) + Point(2, 0));
  print(Point(2, 1) * 5); 

}