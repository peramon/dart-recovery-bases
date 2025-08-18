// Name contructors
void main() {
  final superman = Hero(name: 'Superman', power: 'Fly', isAlive: true);
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': false,
  };

  final ironman = Hero.fromJson(rawJson);

  // final ironman = Hero(
  //   isAlive: rawJson['isAlive2'] ?? true,
  //   power: 'Money',
  //   name: 'Tony Stark',
  // );

  print(superman);
  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name - $power - ${isAlive ? 'YES!' : 'NO'}';
  }
}
