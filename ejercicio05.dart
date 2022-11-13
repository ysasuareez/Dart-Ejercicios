import 'dart:io';

void main() {
  /**
 * 5. Crea un programa que reciba una lista de números por teclado y los 
 *    introduzca en un array. Visualiza los resultados.
 */

  dynamic respuesta;
  var i = 1;
  List list = [];

  print("Introduzca los número que desea guardar:");
  print("Para finalizar introduzca una letra");

  do {
    print("Número $i:");
    respuesta = stdin.readLineSync();
    if (double.tryParse(respuesta) != null) {
      list.add(respuesta);
      i++;
    }
  } while (double.tryParse(respuesta) != null);

  print(list);
}
