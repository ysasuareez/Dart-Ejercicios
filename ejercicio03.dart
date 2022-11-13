void main() {
  /**
   * 3. Intenta concatenar un String con algunos valores enteros. Si no puedes 
   *    realizarlo directamente, busca la forma en la que puedes realizarlo.
   */

  var numero1 = 2;
  int numero2 = 2;
  double numero3 = 2;
  dynamic numero4 = 2;
  var numero5 = "2";
  String cadena1 = "cadena";

  print(numero1.toString() + cadena1);
  print(numero2.toString() + cadena1);
  print(numero3.toString() + cadena1);
  print(numero4.toString() + cadena1);
  print(numero5 + cadena1);

  /**
   * La funcion toString() convierte los distintos tipos de variables númericas 
   * en Strings, es como si en vez de haber creado ' var x = 2 ', hubiesemos puesto
   * ' var x = "2" ' (último ejemplo);
   */
}
