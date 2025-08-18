// Getters and Setters
void main() {
  final mySquare = Square(side: 10);

  mySquare.side = 5;

  print('area: ${mySquare.area}');
}

class Square {
  double _side;

  Square({required double side}) : _side = side;

  // getter
  double get area {
    return _side * _side;
  }

  // setter
  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >= 0';
  }

  double calculateArea() {
    return _side * _side;
  }
}
