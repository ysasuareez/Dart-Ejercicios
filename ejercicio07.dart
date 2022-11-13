void main() {
/**
 * 7. Crea un array con los valores del 1 al 50. Crea un nuevo array que 
 *    recorra el array anterior e introduzca en el nuevo array los números 
 *    divisibles por 3.
 */
  List list = [];
  List list_divisibles = [];
  for (int i = 1; i < 51; i++) {
    list.add(i);
    if (i % 3 == 0) {
      list_divisibles.add(i);
    }
  }

  print(list_divisibles);
}
