import 'dart:io';

void main() {
/**
 * 13. Investiga cómo introducir valores por consola y realiza un ejercicio 
 * que realice esta tarea.
 */

  print("Introduzca dos números a multiplicar:");
  String? respuesta1 = stdin.readLineSync();
  int num1 = int.parse(respuesta1!);
  String? respuesta2 = stdin.readLineSync();
  int num2 = int.parse(respuesta2!);
  int resultado = num1 * num2;
  print("$num1 x $num2 = $resultado");
}
