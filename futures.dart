// Futures -> Operacion Asincrono, es como una promesa
void main() async {
  print('Inicion del programa');

  try {
    final value = await httpGet('url');
    print(value);
  } catch (err) {
    print('Tenemos un error: $err');
  }
  // httpGet('url')
  //     .then((value) {
  //       print(value);
  //     })
  //     .catchError((err) {
  //       print('Error: $err');
  //     });

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));

  throw 'Error en la peticion';

  // return 'Tenemos un valor de la peticion';
}

// Future<String> httpGet(String url) async {
//   return Future.delayed(const Duration(seconds: 2), () {
//     throw 'Error en la peticion http';
//     // return 'Respuesta de la peticion http';
//   });
// }
