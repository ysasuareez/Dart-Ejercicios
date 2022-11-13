import 'dart:io';

void main() {
/**
 * 6. Repite el ejercicio anterior impidiendo que se introduzca en el array 
 *    valores repetidos.
 */
  dynamic respuesta;
  var j = 1;
  int e = 0;
  List list = [];

  print("Introduzca los número que desea guardar:");
  print("Para finalizar introduzca una letra");

  do {
    print("Número $j:");
    respuesta = stdin.readLineSync();
    if (list.length > 0) {
      for (int i = 0; i < list.length; i++) {
        if (respuesta == list[i]) {
          e++;
        }
      }
    }

    if (e <= 0) {
      if (double.tryParse(respuesta) != null) {
        list.add(respuesta);
        j++;
      }
    } else {
      print("Número repetido.");
      e = 0;
    }
  } while (double.tryParse(respuesta) != null);

  print(list);
}
