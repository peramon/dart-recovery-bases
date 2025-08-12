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

## List, iterables y sets

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


