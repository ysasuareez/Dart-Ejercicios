import 'dart:io';

void main() {
  /**
   * 9. A la clase coche anterior define una propiedad como privada. 
   * Realiza el getter y el setter para poder asignar valores a esa propiedad.
   */
}

class Coche {
  /**
   * ATRIBUTOS
   */
  int? _anio;
  String? matricula;
  bool arrancado = false;
  double gasolina = 20;

  /**
   * CONSTRUCTOR
   */
  Coche(int anio, String matricula) {
    this._anio = anio;
    this.matricula = matricula;
  }

  /**
   * GETTERS AND SETTERS
   */
  int? getAnio() {
    return this._anio;
  }

  String? getMatricula() {
    return this.matricula;
  }

  void setAnio(int anio) {
    this._anio = anio;
  }

  void setMatricula(String matricula) {
    this.matricula = matricula;
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
