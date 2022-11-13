import 'dart:io';

/**
   * 8. Realiza una clase llamada coche y crea una instancia de esa clase, 
   * asígnale dos propiedades y dos métodos. Asigna valores y comprueba que 
   * los valores se asignan correctamente.
   */

class Coche {
  /**
   * ATRIBUTOS
   */
  int? anio;
  String? matricula;
  bool arrancado = false;
  double gasolina = 20;

  /**
   * CONSTRUCTOR
   */
  Coche(int anio, String matricula) {
    this.anio = anio;
    this.matricula = matricula;
  }

  /**
   * GETTERS AND SETTERS
   */
  int? getAnio() {
    return this.anio;
  }

  String? getMatricula() {
    return this.matricula;
  }

  /**
   * METODOS
   */
  void arrancarCoche() {
    if (!arrancado) {
      if (gasolina > 10) {
        gasolina -= 5;
        arrancado = true;
        print("El coche ha sido arrancado.");
      } else {
        print("Imposible arrancar. Necesita repostar.");
      }
    } else {
      print("El coche ya está arrancado.");
    }
  }

  void apagarCoche() {
    if (arrancado) {
      arrancado = false;
      print("El coche ha sido apagado.");
    } else {
      print("El coche ya esta apagado.");
    }
  }

  void repostar() {
    if (!arrancado) {
      print("¿Cuánto desea repostar?");
      String? respuesta = stdin.readLineSync();
      this.gasolina += int.parse(respuesta!);
      print("Gasolina actual: $gasolina");
    } else {
      print("El coche debe estar apagado para repostar.");
    }
  }
}

void main() {
  Coche coche1 = new Coche(2020, "1234ABC");
  coche1.arrancarCoche(); //arrancar    -5 = 15
  coche1.arrancarCoche(); //no
  coche1.apagarCoche(); //apagar
  coche1.apagarCoche(); //no
  coche1.arrancarCoche(); //arrancar    -5 = 10
  coche1.repostar(); //no
  coche1.apagarCoche(); //apagar
  coche1.arrancarCoche(); //arrancar
  coche1.apagarCoche(); //apagar
  coche1.repostar(); //echar gasofa
  coche1.arrancarCoche(); //arrancar
}
