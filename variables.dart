void main() {
  final String pokemon = 'Charizard';
  final int hp = 100;
  final bool? isAlive = true;
  final List<String> skills = ['impostor'];
  final sprites = <String>['ditto/front.png'];

  // dynamic == null
  dynamic errorMessage = 'Hi';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5, 6];
  errorMessage = {1, 2, 3, 4, 5, 6};
  errorMessage = () => true;
  errorMessage = null;

  //   print('Pokemon -> $pokemon');
  print("""Pokemon Data
  Pokemon -> $pokemon
  Hp -> $hp
  Is Alive -> $isAlive
  Skills -> $skills
  Sprite -> $sprites
  Dynamic type -> $errorMessage
  """);
}
