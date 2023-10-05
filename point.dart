class Point {
  const Point(this.x, this.y);
  final int x;
  final int y;
  @override
  String toString() => 'Point($x, $y)';


  @override
  bool operator ==(covariant Point other){ 
    // covariant Point (vs just Object other)
    // tells Dart: I want to only override this operator
    // when it is called with an argument of type Point.
    // and it should be invalid with any other type.
    // if (other is Point) {
      // I think this promotes x and y to type Point
      // you only need the if statement if you use just Oject other.
      return x == other.x && y == other.y;
    // }
    // return false;
  }
}  

void main () {
  print(Point(0, 0) == Point(0, 0));
  print(Point(0,0) == 'abc'); //This won't compile because it's only overriden
  // for type Point, not type String. I think...

}