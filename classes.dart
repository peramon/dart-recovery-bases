// Clases
void main() {
  final wolverine = Hero(name: 'Wolverine', power: '100');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  // Hero(String name, String power) : name = name, power = power;
  Hero({required this.name, required this.power});

  @override
  String toString() {
    return '$name - $power';
  }
}
