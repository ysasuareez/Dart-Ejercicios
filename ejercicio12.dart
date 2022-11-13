import 'dart:io';
import 'dart:math';

void main() {
/**
  * 12. Investiga cómo podría generarse un valor aleatorio entre 1 y 10.
  */

  Random random = new Random();
  int min = 1;
  int max = 10;
  int r = min + random.nextInt(max - min);
  print(r);
}
