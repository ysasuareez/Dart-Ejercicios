import 'dart:convert';

void main() async {
  print('Ejecuta linea 1 de mi app');

  String dato = await pedirInformacionAlServidor();
  print(dato);

  print('Ejecuta linea 3');
}

Future<String> pedirInformacionAlServidor() {
  return Future.delayed(Duration(seconds: 4), () {
    return '{"cedula": 456, "nombre": "Carlos"}';
  });
}

class Persona {
  int cedula;
  String nombre;

  Persona.fromJson(String json) {
    Map mapa = jsonDecode(json);
    this.cedula = mapa["cedula"];
    this.nombre = mapa["nombre"];
  }
}
