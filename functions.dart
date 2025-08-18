// functions
void main() {
  print(greetEveryone());
  print('Plus -> ${addTwoNumbers(5, 9)}');
  print(greetPerson(message: 'How are you'));
}

String greetEveryone() => 'Hello everyone';

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) {
  // b = b ?? 0;
  // b ??= 0;
  return a + b;
}

String greetPerson({String? message, String? name = 'Paul'}) {
  return '${message}, ${name}';
}
