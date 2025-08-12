// List, iterables y sets
void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 6, 7, 8, 8, 9, 0];

  print('List original: ${numbers}');
  print('Length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('Index first: ${numbers.first}');
  print('Index last: ${numbers.last}');
  print('Reverse: ${numbers.reversed}'); // Iterable

  final reversedNumbers = numbers.reversed;
  print('Iterable: ${reversedNumbers}');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}'); // Valores unicos no se repiten

  final numberGreaterThanFive = numbers.where((int num) {
    return num > 5;
  });
  print('Numbers > 5 iterable: ${numberGreaterThanFive.toSet()}');
  print('Numbers > 5 set: ${numberGreaterThanFive.toSet()}');
}
