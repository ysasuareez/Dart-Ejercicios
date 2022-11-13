/**
 * 1. Crea un programa en el que declares y asignes todos los tipos predefinidos 
 * de variables que permite DART. Realiza operaciones matemáticas entre ellos y 
 * comprueba si puedes operar entre todos los tipos sin problemas.
 */

void main() {
  var numero1 = 1;
  int numero2 = 2;
  double numero3 = 3;
  String cadena = "string";
  dynamic dinamico2 = "ysa";
  dynamic dinamico1 = 3;

  var resultado1 = numero1 + numero2 + numero3;
  print("$numero1 + $numero2 + $numero3 = $resultado1");

  var resultado2 = cadena + dinamico2;
  print("$cadena + $dinamico2 = $resultado2");

  var resultado3 = resultado1 + dinamico1;
  print("$resultado1 + $dinamico1 = $resultado3");

  var resultado4 = cadena * dinamico1;
  print("$cadena * $dinamico1 = $resultado4");

  var resultado5 = dinamico2 * dinamico1;
  print("$dinamico2 * $dinamico1 = $resultado5");
}
