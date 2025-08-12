void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Bulbasor',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'},
  };

  // final pokemons = {1: 'Squired', 2: 'Miau'};

  print(pokemon);
  // print(pokemons);
  print('Pokemon ${pokemon['name']}');
  print('Pokemon ${pokemon['sprites']}');

  // print back and front sprites
  print('Sprite front ${pokemon['sprites'][1]}');
  print('Sprite back ${pokemon['sprites'][2]}');
}
