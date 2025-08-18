# Dart
---
Optimizado para el UI
Permite Hot Reload
Rápido en todas las plataformas

### Dynamic Type
Puede ser cualquier tipo de dato, por defecto es nulo

- Tratar de evitar usarlo demasiado

### Maps

- Ejemplo de un mapa
````dart
final Map<String, dynamic> pokemon = {
  'name': 'Bulbasor',
  'hp': 100,
  'isAlive': true,
  'abilities': <String>['impostor'],
  'sprites': {
    1: 'ditto/front.png',
    2: 'ditto/back.png'
  },
};
````

### List, iterables y sets

- List
```dart
final numbers = [1, 2, 3, 4, 5,5, 6, 7, 8,8, 9, 0];
```

- Iterables
```dart
final reversedNumbers = numbers.reversed;
  print('Iterable: ${reversedNumbers}'); 
  print('List: ${reversedNumbers.toList()}'); 
  print('Set: ${reversedNumbers.toSet()}'); // Valores unicos no se repiten
```

### Functions

```dart
print(greetPerson(message: 'How are you'));

String greetPerson({String? message, String? name = 'Paul'}) {
  return '${message}, ${name}';
}
```

### Classes

- Elemplo de clases

```dart
void main() {
  final wolverine = Hero('Wolverine', '100');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  // Hero(String name, String power) : name = name, power = power; // Forma comun de definir las clases
  Hero(this.name, this.power); // Otra forma de definir el constructor
}

```

### Getters and Setters

```dart
  // getter
  double get area {
    return _side * _side;
  }

  // setter
  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >= 0';
  }
```

### Aserciones

> Las Aserciones sirven para poner una restriccion en la clase que se debe cumplir acerca de algun parametro, por ejemplo si se precisa solo de numeros positivos se puede poner una asersocion mayor a cero

- definicion de una asercion

```dart
  Square({required double side}) 
    : assert(side >= 0, 'Side must be >= 0'), // Asercion
    _side = side;
```


