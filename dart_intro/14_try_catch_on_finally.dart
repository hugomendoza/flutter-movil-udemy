void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://fernando.com');
    print('éxito: $value');
  } on Exception catch (err) {
    print('Tenemos uns Exception: $err');
  } catch (err) {
    print('Ops!! algo terribel paso: $err');
  } finally {
    print('Fin del try y catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parametros en el URL');
//   throw 'Error en la petición';
//   return 'Tenemos un valor de la petición';
}
