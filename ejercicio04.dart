import 'dart:io';

void main() {
/**
 * 4. Realiza una función que se le pase un valor y salga por pantalla la tabla
 *    de multiplicar de ese número.
 */

  print("Dime un número: ");

  dynamic respuesta = stdin.readLineSync();
  int numero = int.parse(respuesta);

  if (numero != null) {
    for (int i = 1; i <= 10; i++) {
      int operacion = numero * i;
      print("$numero * $i = $operacion");
    }
  }
}
