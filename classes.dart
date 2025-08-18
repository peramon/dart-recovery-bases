// Clases
void main() {
  final wolverine = Hero('Wolverine', '100');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  // Hero(String name, String power) : name = name, power = power;
  Hero(this.name, this.power);
}
